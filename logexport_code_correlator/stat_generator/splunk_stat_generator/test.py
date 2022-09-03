import requests
import json
import time
from bs4 import BeautifulSoup
import pyotp
from requests_html import HTMLSession

base_url = "https://citrixsys.splunkcloud.com/en-US/"
htmlSession = HTMLSession()

## Request 1 
with requests.Session() as s:
     # Request 1 - attempt to access URL.
     # obtain sso url, samlRequest & relay_state
     r = requests.get(base_url)
     soup = BeautifulSoup(r.content, 'html.parser')
     formElement = soup.find('form')
     
     ssoUrl = formElement['action']
     samlRequest = soup.find('input', attrs = {'name': 'SAMLRequest'})['value']
     relayState = soup.find('input', attrs = {'name': 'RelayState'})['value']
     
     print(f'ssoUrl={ssoUrl}')
     print(f'samlRequest={samlRequest}')
     print(f'relayState={relayState}')

     r = htmlSession.get("https://citrixsys.splunkcloud.com/en-US/account/login?return_to=%2Fen-US%2F")
     r.html.render()
     print(r)
     
     
     exit()
     
     # Request 2
     r = requests.post('https://citrix.okta.com/app/citrix_splunkcloudcitrixsysmdca_1/exkvp6838nPMpNIA80x7/sso/saml', 
          data=f'RelayState={relayState}&SAMLRequest={samlRequest}')
     print(r.content)
     
     ## Request 3 - nonce creation
     r = requests.post('https://citrix.okta.com/api/v1/internal/device/nonce')
     print(r.content)
     
     ## Request 4 - login
     r = requests.post('https://citrix.okta.com/api/v1/authn', data = json.dumps({"password":"dummy$%^",
          "username":"danielis", "options":{"warnBeforePasswordExpired":True,"multiOptionalFactorEnroll":True}}), 
          headers={'content-type': 'application/json', 'accept': 'application/json'})
     stateToken = r.json()["stateToken"]
     factorId = r.json()['_embedded']['factors'][0]["id"]
     print(r.content)
     #'{"stateToken":"00UXQGY1aTZkCJQdnZILNS-3EvHv-luzXfCWE234RP","expiresAt":"2022-08-21T01:02:21.000Z","status":"MFA_REQUIRED","_embedded":{"user":{"id":"00ul5uj0qaiSQ8jYv0x7","profile":{"login":"danielis@citrite.net","firstName":"Daniel","lastName":"Isaac","locale":"en_US","timeZone":"America/Los_Angeles"}},"factors":[{"id":"opfsqvcn3ko1z409k0x7","factorType":"push","provider":"OKTA","vendorName":"OKTA","profile":{"credentialId":"danielis@citrite.net","deviceType":"SmartPhone_Android","keys":[{"kty":"RSA","use":"sig","kid":"default","e":"AQAB","n":"zt3on9YMmagGVRthYOYfoZj_gYNWagaqIa1UxkEx33vgKBC9HsGry8v0eLUElFYAZ0RX8FvIuOcKG7drriYZd4_zM0uYkaaMHScwYsLbxVibTDEfin4s7NCV03jOc1rnPcaTyplRizYGDoNdba5hfDpaEvfebQEXS7tft1xX92DM23V5Q7mQOdvt5siokQmKUCI2RvpFskjuNKKwbCJ3FXYSDiqy_8q61BCy0K06DQn3ibCsMtQbma6YIHN9fywDRTKn5VmeUz474L8WC55CaF8OgfdOVyW3A5WEfEEvxZ6O3I2LX5Vs1jTv9wKYjKmEOBOp3W2BUJypHO2Q1dYrDw"}],"name":"moto g(40) fusion","platform":"ANDROID","version":"30"},"_links":{"verify":{"href":"https://citrix.okta.com/api/v1/authn/factors/opfsqvcn3ko1z409k0x7/verify","hints":{"allow":["POST"]}}}},{"id":"ostsqve03avwOu9bO0x7","factorType":"token:software:totp","provider":"OKTA","vendorName":"OKTA","profile":{"credentialId":"danielis@citrite.net"},"_links":{"verify":{"href":"https://citrix.okta.com/api/v1/authn/factors/ostsqve03avwOu9bO0x7/verify","hints":{"allow":["POST"]}}}}],"policy":{"allowRememberDevice":true,"rememberDeviceLifetimeInMinutes":5,"rememberDeviceByDefault":false,"factorsPolicyInfo":{"opfsqvcn3ko1z409k0x7":{"autoPushEnabled":false}}}},"_links":{"cancel":{"href":"https://citrix.okta.com/api/v1/authn/cancel","hints":{"allow":["POST"]}}}}'
     print(f'stateToken={stateToken}')
     print(f'factor_id={factorId}')
     
     # Request 4 - Success login, trigger okta push
     r = requests.post(f"https://citrix.okta.com/api/v1/authn/factors/{factorId}/verify?autoPush=false&rememberDevice=false", data=json.dumps({"stateToken":stateToken}), headers={'accept': 'application/json', 'content-type': 'application/json'})
     print(r.content)
     time.sleep(10)
     r = requests.post(f"https://citrix.okta.com/api/v1/authn/factors/{factorId}/verify?autoPush=false&rememberDevice=false", data=json.dumps({"stateToken":stateToken}), headers={'accept': 'application/json', 'content-type': 'application/json'})
     sessionToken = r.json()["sessionToken"]
     print(r.content)

     print(f"SessionToken = {sessionToken}")
     
     r = requests.post("https://citrixsys.splunkcloud.com/saml/acs")
     print(r.content)
     
     # r = requests.get(base_url)
     # print(r.content)
exit()




#Cookie: session_id_8443=d8083b662b82b393a7bb8b5025192c61e18185d3
# Request 6 - Get CSRF token
exit()

headers={'session_id_8443': sessionToken,
          'Cookie': f'session_id_8443={sessionToken}',
          'Content-Type': 'application/x-www-form-urlencoded',
          'Origin': 'https://access.mcas.ms',
          'Referer': 'https://access.mcas.ms/',
          'User-Agent': "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36",
          }
print(r.content)

r = requests.post("https://citrixsys.splunkcloud.com/en-US/splunkd/__raw/services/search/jobs/1661044377.8800500_6F839084-8B89-47DC-BA05-F769DB33A14F/control",
              data='output_mode=json&action=touch', 
              headers={'Cookie': 'ext_name=ojplmecpdpgccookcobabopnaifgidhf; 0.0.0=AP-7SBC7L5BZ8ML-2; splunkweb_csrf_token_8443=13940618628224014329; session_id_8443=20111raRmHUlZMDW4V65q-i6AGKB0UPxd_sSl4Dz4hUXtxNak3r_Xqs; token_key=13940618628224014329; experience_id=13b104d1-feaa-f00e-6cd6-6c331db7e159; spg_session=13b104d1-feaa-f00e-6cd6-6c331db7e159; splunk_csrf_token=13940618628224014329; apt.uid=AP-7SBC7L5BZ8ML-2-1661042571014-38456633.0.2.03909a4c-056e-4c08-b565-6efe986e76a5; apt.sid=AP-7SBC7L5BZ8ML-2-1661044375087-71456824; splunkd_8443=BkFRoZR80qetWzmNmo2KiknUBy5EZXSVaFNPUCCNcgd21xsfu2Y6N9w9Cl94ZWxCerzJSUP24EwKMrOBpZwvlvSk5c6VVvchZfmor^r6ktiC0e9U5GuYox1kY4^oqTwJEkt8Ey8y8cbaLaGA5WPmtrTx0YLcpO2^EsPEPgdHJ916cshPmvhajYUGv^oNH_kXMqS8zMGvskz4Xao0IxY21^Lm7cUkyZ6t2k^NeEYnPN; AWSELB=67092D7F040FD11F00E7B075920502DA1D506737C05E45EFBF2E4016B5093F237A347F7B2C79DED5D23059F8E2C7385089228F01105DC8D7ECEDB0BC64D25377B43B39C57E0A881FCB3212E8F328AA7068B02829AD'})

# curl "https://citrixsys.splunkcloud.com/saml/acs" ^
#   -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" ^
#   -H "Accept-Language: en-US,en;q=0.9" ^
#   -H "Cache-Control: max-age=0" ^
#   -H "Connection: keep-alive" ^
#   -H "Content-Type: application/x-www-form-urlencoded" ^
#   -H "Cookie: session_id_8443=d8083b662b82b393a7bb8b5025192c61e18185d3" ^
#   -H "Origin: https://access.mcas.ms" ^
#   -H "Referer: https://access.mcas.ms/" ^
#   -H "Sec-Fetch-Dest: document" ^
#   -H "Sec-Fetch-Mode: navigate" ^
#   -H "Sec-Fetch-Site: cross-site" ^
#   -H "Upgrade-Insecure-Requests: 1" ^
#   -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36" ^
#   -H "sec-ch-ua: ^\^"Chromium^\^";v=^\^"104^\^", ^\^" Not A;Brand^\^";v=^\^"99^\^", ^\^"Google Chrome^\^";v=^\^"104^\^"" ^
#   -H "sec-ch-ua-mobile: ?0" ^
#   -H "sec-ch-ua-platform: ^\^"Windows^\^"" ^
#   --data-raw "RelayState=cmV0dXJuX3RvPS9lbi1VUy8mdXNlcm5hbWU9JmFjY2VwdGVkX3Rvcz0^%^3D&SAMLResponse=PHNhbWwycDpSZXNwb25zZSB4bWxuczpzYW1sMnA9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpwcm90b2NvbCIgeG1sbnM6eHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiBEZXN0aW5hdGlvbj0iaHR0cHM6Ly9jaXRyaXhzeXMuc3BsdW5rY2xvdWQuY29tL3NhbWwvYWNzIiBJRD0iaWQxODg3ODA1OTM4NzE1MjQxMjA1MTAyNzgyIiBJblJlc3BvbnNlVG89IkNpdHJpeFN5cy1TcGx1bmtDbG91ZC4yNjE0NDU1LjZGODM5MDg0LThCODktNDdEQy1CQTA1LUY3NjlEQjMzQTE0RiIgSXNzdWVJbnN0YW50PSIyMDIyLTA4LTIxVDAxOjI5OjI1LjMyNVoiIFZlcnNpb249IjIuMCI^%^2BPHNhbWwyOklzc3VlciB4bWxuczpzYW1sMj0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFzc2VydGlvbiIgRm9ybWF0PSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6bmFtZWlkLWZvcm1hdDplbnRpdHkiPmh0dHA6Ly93d3cub2t0YS5jb20vZXhrdnA2ODM4blBNcE5JQTgweDc8L3NhbWwyOklzc3Vlcj48ZHM6U2lnbmF0dXJlIHhtbG5zOmRzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjIj48ZHM6U2lnbmVkSW5mbz48ZHM6Q2Fub25pY2FsaXphdGlvbk1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyI^%^2BPC9kczpDYW5vbmljYWxpemF0aW9uTWV0aG9kPjxkczpTaWduYXR1cmVNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNyc2Etc2hhMjU2Ij48L2RzOlNpZ25hdHVyZU1ldGhvZD48ZHM6UmVmZXJlbmNlIFVSST0iI2lkMTg4NzgwNTkzODcxNTI0MTIwNTEwMjc4MiI^%^2BPGRzOlRyYW5zZm9ybXM^%^2BPGRzOlRyYW5zZm9ybSBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkveG1sZHNpZyNlbnZlbG9wZWQtc2lnbmF0dXJlIj48L2RzOlRyYW5zZm9ybT48ZHM6VHJhbnNmb3JtIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS8xMC94bWwtZXhjLWMxNG4jIj48ZWM6SW5jbHVzaXZlTmFtZXNwYWNlcyB4bWxuczplYz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS8xMC94bWwtZXhjLWMxNG4jIiBQcmVmaXhMaXN0PSJ4cyI^%^2BPC9lYzpJbmNsdXNpdmVOYW1lc3BhY2VzPjwvZHM6VHJhbnNmb3JtPjwvZHM6VHJhbnNmb3Jtcz48ZHM6RGlnZXN0TWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS8wNC94bWxlbmMjc2hhMjU2Ij48L2RzOkRpZ2VzdE1ldGhvZD48ZHM6RGlnZXN0VmFsdWU^%^2BOWpHTHRMd0NHZFc3WVZWUUpmcG03Q2FkcVBkU3pCWnBqWVZVNkk1OUlLST08L2RzOkRpZ2VzdFZhbHVlPjwvZHM6UmVmZXJlbmNlPjwvZHM6U2lnbmVkSW5mbz48ZHM6U2lnbmF0dXJlVmFsdWU^%^2BYXFGNDFtVXBSaEx2VmxQU2JlM2diN3dwSWNYUzh0UzNtUld1RWFKTDdCKzA3OThCaldzbXMveFlaZEQrMnQrSWhDUE5MdFp5NUlXcElKdkdBNEtNbjFEbmoveVR3WHFXdlgvOUNRZnM4L0tFTWJUZ0VZd3hPRHVBaEZCN0RpalFQSVBzblNOQnBvZjhXSHQ2L0xzWVNuRGpHdVNDdzlmemprRFFzbHZTeXdDc0I4Sm9PeWhLd1JEZkpsbnR2elpaMnowM1NDMnExUHBVSTQrZkZoTW9iczg3N0pPeWFNWm9xOU14N0dBalBqbUxJOFRxcGNzNHd4TVNISlJCZC9XdjZGOFJOR3J4UE1QTlpkU2xRRGM1ZXlPUm5iSjMrdS9MQTd3RDcyYkhsMGxNSWlYaDRBNTBGRWR1UXI2SHE3cW1VVG5heDMwRnhiT1pqSi9hUDVmdWthSGxFNWRnZHJiMDh2RmV0Y3U0elJIekJRUVpZQTZ0cDNHc2JaejdTQzNaMkhKcUZwT3NsUFVFazlleGY2a1hISlRvK0ZsTGdqY3MxMklsU3VnWVBKMG5uY05xb2V4OWxlVC9yOHFoS3ZNSTlnd0U0SjZLbUQxK0ZkejIxMmpuZkpaa0N2V3RGYUJvSWJheU1WdXFVUXc3WnE2VmpXNHcxRnhVcWZ2dmZVbUJmcUxOVnF1M2JBRjRJRjBhbVhMUVMzakdDNG9tOWhSaGd1emVhSXdtSFNFZU1xaXJjTUtwT1p4UDNETzF1Qy9PSUJ4emh6VGxhSzdVckJtRnpKcTVDNWlveFVlOTcwZVA4SVgxaUlrVER1NDk4V3NocnIvcStwaEZDM2VEWCtaaTlkQ3NpbUJTejhVRDRFMVkxVjN4ZDgyaHp6OHQwZ0RLV1hUR3hUS2lJb0U9PC9kczpTaWduYXR1cmVWYWx1ZT48ZHM6S2V5SW5mbz48ZHM6WDUwOURhdGE^%^2BPGRzOlg1MDlDZXJ0aWZpY2F0ZT5NSUlGdGpDQ0E1NENBUUV3RFFZSktvWklodmNOQVFFTEJRQXdnWjR4Q3pBSkJnTlZCQVlUQWxWVE1STXdFUVlEVlFRSURBcFhZWE5vYVc1bmRHOXVNUkF3RGdZRFZRUUhEQWRTWldSdGIyNWtNUjR3SEFZRFZRUUtEQlZOYVdOeWIzTnZablFnUTI5eWNHOXlZWFJwYjI0eEpUQWpCZ05WQkFzTUhFMXBZM0p2YzI5bWRDQkRiRzkxWkNCQmNIQWdVMlZqZFhKcGRIa3hJVEFmQmdOVkJBTU1HRUZqWTJWemN5QlFjbTk0ZVNCRFpYSjBhV1pwWTJGMFpUQWlHQTh5TURJeU1EWXdPREV4TXpjek1Gb1lEekl3TXpJd05qQTRNVEV6T0RNd1dqQ0JuakVMTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnTUNsZGhjMmhwYm1kMGIyNHhFREFPQmdOVkJBY01CMUpsWkcxdmJtUXhIakFjQmdOVkJBb01GVTFwWTNKdmMyOW1kQ0JEYjNKd2IzSmhkR2x2YmpFbE1DTUdBMVVFQ3d3Y1RXbGpjbTl6YjJaMElFTnNiM1ZrSUVGd2NDQlRaV04xY21sMGVURWhNQjhHQTFVRUF3d1lRV05qWlhOeklGQnliM2g1SUVObGNuUnBabWxqWVhSbE1JSUNJakFOQmdrcWhraUc5dzBCQVFFRkFBT0NBZzhBTUlJQ0NnS0NBZ0VBMGpwK0RRNlVmY3Y5SXFzV1pPWFhuUUh6bXBEU3RXa3dmVXNBZ2JOK3Y0UTBWOWhKemxpTnJXdURIY2IvMFVTNm1sc2RzN1YzU1NSVjdhcmhTQjBOS3BPdWQ5N2d2QWFzNEgrVjRud0ZaZ2hGWDhhTmNQbW5PZmV3YzFaVFlhQ0VVRkFTS0JMVko2VFYrNXRLQnZqeWtESUtwZGFGeDVRaHlQTGsyUTNsTHRuZW4zb20rS28yeUNsSGFvYjBCc0Fta1lmVHpMT0JwVXl3dHRVdlJGUGJnYkErd0k4REdyWlVBblF1bWwybmpCYWFrTzVIQjdWR3BlRWg4Wlk1ZFVLY1NXTWdCTXFCd0IzOXZSSjljcW9VWkw1QjFPaE95NlIrc2hEcWRpSTNGSG1hbHBJR2dqYjk0WW9vcFdxRm9uNld1RUtjdy9YWkNLaXN3WEE3OEM4SGwzd3EwQXptODJqeHNDT2hHWVZZeUNtUy9EY0g0aVJoUk5mOXZqQjA5ekljQTFkMi9pZlozbHp6YThkYXU0Q1lUbzVpaHN3WkNISkJTdDdYSFozL0hpUVFoazZPZlVsc0hsUk5VU1p0SGlGNGcxUHp1bUIxcGNVRCswcXFwUHArdm9hTURqUXRkbU9ZUFpOUytPSU1LbCtnMzJzb3hhVkNOU3NtbCtWTkVTWFZmTEJGaUZXLzdOemc0WGR5YlVnN1Z0Q1lFTUFuNTFmbHg2S2c5NjRaOEwwNkxITk1acEVQSnV4OHZPaUI2TnZ5L2dMUG5WNXU3TklySHFnL0dYa3FCS2V5Vk5iUnVrR2NPa3Zwb0tuWEdJTkkrM1ZqajBBZzJ2N0JTblJaSTRidjhRVzhFTHp3VDlMODJaL2JwOUFFQ1Jhamw2UEdTeXd2UUU2aTcxU0lsMGtDQXdFQUFUQU5CZ2txaGtpRzl3MEJBUXNGQUFPQ0FnRUFWbVRCaTJFb2RSMHhrQlhXajd1eW1td0cxdVFSMTAzTGUyUHVYWWhpdkdxdFQwRzJ1Z0JOZWYvRXBhMWhwZnhlMHNETWorenZQTlRnU05tYUovQk5hMUVrd3NYaVh1eGlsUm41T2d0eG9XL29rOXZ1SHlya2FaeTlSRWpsVWpTK3Zpd1hnVExLa0p4OU51MElzZ1pZcm4rd3JpTGR2UmVnUk16VmZKWm9MMldXWWlkRkRYR0cxdVVzdmFTKzk1UDFSLzBndmozSUdnUWppWFNvaTVwaU9aMVhNSHVib2R1U0RmSHRTTmZzdjhKZ0xiT1ZENjc1OE1NTFBzZzUwdFRvdG56c3hqblg3Q0ZJN2tWckVGRFgrcDRrUzZhMzVuUVUwcjgrZEdLVTloekQ1ZWdOeXdLUGVVcjlkNktNZ2VOVis0OFYyZDdCNURBM0hPeXVENlUwS0F3ZkRLOVZiNmVIQUJib0kyeTFXb1pKQkkzcSszaElXQ3laaG56MUxXZmdYUFlkRUdTOG5GRWI0SWd6TC9rRzN5d2JJb0Z3N1R2UGx2NEpYcVpvYi9vZkRzMWpnYW05clBJSDNMMjNtTDRaSlhGUjJtcStQMzN5N01YRS9DYXlmdEx5K2xxcmFNNUgvY055MjBaY2dOUGZFdGh6U2NWNWdsS0s1VFJ1VTRRakIrVGVzenhPVjl6SmpmZ01PTnRYdGJwTUExMCt4L0VYdHE4SUE5MlJhY0FPSS9yRzdiMThsNktmSDUxbTJDSWF3QUx5bXVYTnRlSnRrenJvVjFBNHB2V2xpdVhES3F0WkNKSjJlamhSTE5QWG9CVVQ5eTFERG9BV1hWUVhLU3pUaXZUTkFOc2pJekNCSktWS2hQa2lVdFR6S2JEbXk5dEhwSUNnSkN2eTlBaz08L2RzOlg1MDlDZXJ0aWZpY2F0ZT48L2RzOlg1MDlEYXRhPjwvZHM6S2V5SW5mbz48L2RzOlNpZ25hdHVyZT48c2FtbDJwOlN0YXR1cyB4bWxuczpzYW1sMnA9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpwcm90b2NvbCI^%^2BPHNhbWwycDpTdGF0dXNDb2RlIFZhbHVlPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6c3RhdHVzOlN1Y2Nlc3MiPjwvc2FtbDJwOlN0YXR1c0NvZGU^%^2BPC9zYW1sMnA6U3RhdHVzPjxzYW1sMjpBc3NlcnRpb24geG1sbnM6c2FtbDI9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphc3NlcnRpb24iIHhtbG5zOnhzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSIgSUQ9ImlkMTg4NzgwNTk0MDQ0MTc2MzYwMjU1OTUyIiBJc3N1ZUluc3RhbnQ9IjIwMjItMDgtMjFUMDE6Mjk6MjUuMzI1WiIgVmVyc2lvbj0iMi4wIj48c2FtbDI6SXNzdWVyIHhtbG5zOnNhbWwyPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZXJ0aW9uIiBGb3JtYXQ9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpuYW1laWQtZm9ybWF0OmVudGl0eSI^%^2BaHR0cDovL3d3dy5va3RhLmNvbS9leGt2cDY4MzhuUE1wTklBODB4Nzwvc2FtbDI6SXNzdWVyPjxkczpTaWduYXR1cmUgeG1sbnM6ZHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkveG1sZHNpZyMiPjxkczpTaWduZWRJbmZvPjxkczpDYW5vbmljYWxpemF0aW9uTWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS8xMC94bWwtZXhjLWMxNG4jIj48L2RzOkNhbm9uaWNhbGl6YXRpb25NZXRob2Q^%^2BPGRzOlNpZ25hdHVyZU1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMDQveG1sZHNpZy1tb3JlI3JzYS1zaGEyNTYiPjwvZHM6U2lnbmF0dXJlTWV0aG9kPjxkczpSZWZlcmVuY2UgVVJJPSIjaWQxODg3ODA1OTQwNDQxNzYzNjAyNTU5NTIiPjxkczpUcmFuc2Zvcm1zPjxkczpUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjZW52ZWxvcGVkLXNpZ25hdHVyZSI^%^2BPC9kczpUcmFuc2Zvcm0^%^2BPGRzOlRyYW5zZm9ybSBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyI^%^2BPGVjOkluY2x1c2l2ZU5hbWVzcGFjZXMgeG1sbnM6ZWM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyIgUHJlZml4TGlzdD0ieHMiPjwvZWM6SW5jbHVzaXZlTmFtZXNwYWNlcz48L2RzOlRyYW5zZm9ybT48L2RzOlRyYW5zZm9ybXM^%^2BPGRzOkRpZ2VzdE1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMDQveG1sZW5jI3NoYTI1NiI^%^2BPC9kczpEaWdlc3RNZXRob2Q^%^2BPGRzOkRpZ2VzdFZhbHVlPnNFSXJrS0hVemRFblVpQVlFTHFUeWZ2V2tpYWI5a1lNVmtDVFp0WmpCR1E9PC9kczpEaWdlc3RWYWx1ZT48L2RzOlJlZmVyZW5jZT48L2RzOlNpZ25lZEluZm8^%^2BPGRzOlNpZ25hdHVyZVZhbHVlPnpoTzdjL01VbUYvQ0tVeWVsb0RLUXhDcUk4ZHBXbFBSU1cwRSt2OTcrczUxRW5sMm9GcmxlelRHd0diaUFkcTh4cWxheEZQUzdWSWVMNXV5bldFcDhSK2tjc29hbkpwYVZSMEZSZHMrMHJPTHFINmMrVGc0Tm95ekR0VWJRRzNsNzIxSzJoWlYydXZVR2NDck5CNjFpQUxaS2V5S2w1cHkyWDI4ZnVOQ1JXT3gxaEMvQ1kwdHIwcktSQmpaNmtwSVJrZ3IzcTRlVitMcWllT0pnMEpFbmcyZnB2STVKaE40NGkwUnhwSHBmM09kMjBpdGFKRm42M1VSQ2J1NXlXZTMvS3l4VmN5ZnZoUkZLUFlRdDlDWHFXTTlVR0ZvYnlzcUtjRnFpcWdzT2piRm5mT0lnWFIrNjV2ZEVXTkU0N1RPWUNTVklYMm5qU2ZKenJlaW1FNzFjdEd1d3VrSFZBZnZZeVU1dWVBQ045NmNsWnAyWTJ3UXZSRDkwVzgzMGRzR1hsbGJoQk9FbzlSMGNXa21VbFJtMnlodmxCRjI4YVpoeDFQeTdVbU1yOTlzU2dQQ0w3SXc1UjlRKzRMWVhvZUtBYWVaU3RuVU5XaFJSRFVPZ2g2UkVDOFdaR2FaTVM5d3ptdGhuL2pLMWxTcFprMU5qNS9FTWZ4VXc1MGtuUzRIWmRWVmZtajRSc2dUSUV4cVRpU0lueVpvb2VDWDZ0aGZXd2tqK3NLaytXMzBiRUdIdW85VklHN0dHK1ZXMHJSQTZJeUErWUV2WHpEdXdpQkgwNW9la2xmZHRrcjJQNTduM1RwRUVhZjl6QWErVG5wRE5TdXI2TW9sTGR6bmw1OTJlZXJnTU81SlNiZmtSc2lYOEhEUVRER3NZNFM5aWEwY0M1MlFKc1ZsM0prPTwvZHM6U2lnbmF0dXJlVmFsdWU^%^2BPGRzOktleUluZm8^%^2BPGRzOlg1MDlEYXRhPjxkczpYNTA5Q2VydGlmaWNhdGU^%^2BTUlJRnRqQ0NBNTRDQVFFd0RRWUpLb1pJaHZjTkFRRUxCUUF3Z1o0eEN6QUpCZ05WQkFZVEFsVlRNUk13RVFZRFZRUUlEQXBYWVhOb2FXNW5kRzl1TVJBd0RnWURWUVFIREFkU1pXUnRiMjVrTVI0d0hBWURWUVFLREJWTmFXTnliM052Wm5RZ1EyOXljRzl5WVhScGIyNHhKVEFqQmdOVkJBc01IRTFwWTNKdmMyOW1kQ0JEYkc5MVpDQkJjSEFnVTJWamRYSnBkSGt4SVRBZkJnTlZCQU1NR0VGalkyVnpjeUJRY205NGVTQkRaWEowYVdacFkyRjBaVEFpR0E4eU1ESXlNRFl3T0RFeE16Y3pNRm9ZRHpJd016SXdOakE0TVRFek9ETXdXakNCbmpFTE1Ba0dBMVVFQmhNQ1ZWTXhFekFSQmdOVkJBZ01DbGRoYzJocGJtZDBiMjR4RURBT0JnTlZCQWNNQjFKbFpHMXZibVF4SGpBY0JnTlZCQW9NRlUxcFkzSnZjMjltZENCRGIzSndiM0poZEdsdmJqRWxNQ01HQTFVRUN3d2NUV2xqY205emIyWjBJRU5zYjNWa0lFRndjQ0JUWldOMWNtbDBlVEVoTUI4R0ExVUVBd3dZUVdOalpYTnpJRkJ5YjNoNUlFTmxjblJwWm1sallYUmxNSUlDSWpBTkJna3Foa2lHOXcwQkFRRUZBQU9DQWc4QU1JSUNDZ0tDQWdFQTBqcCtEUTZVZmN2OUlxc1daT1hYblFIem1wRFN0V2t3ZlVzQWdiTit2NFEwVjloSnpsaU5yV3VESGNiLzBVUzZtbHNkczdWM1NTUlY3YXJoU0IwTktwT3VkOTdndkFhczRIK1Y0bndGWmdoRlg4YU5jUG1uT2Zld2MxWlRZYUNFVUZBU0tCTFZKNlRWKzV0S0J2anlrRElLcGRhRng1UWh5UExrMlEzbEx0bmVuM29tK0tvMnlDbEhhb2IwQnNBbWtZZlR6TE9CcFV5d3R0VXZSRlBiZ2JBK3dJOERHclpVQW5RdW1sMm5qQmFha081SEI3VkdwZUVoOFpZNWRVS2NTV01nQk1xQndCMzl2Uko5Y3FvVVpMNUIxT2hPeTZSK3NoRHFkaUkzRkhtYWxwSUdnamI5NFlvb3BXcUZvbjZXdUVLY3cvWFpDS2lzd1hBNzhDOEhsM3dxMEF6bTgyanhzQ09oR1lWWXlDbVMvRGNINGlSaFJOZjl2akIwOXpJY0ExZDIvaWZaM2x6emE4ZGF1NENZVG81aWhzd1pDSEpCU3Q3WEhaMy9IaVFRaGs2T2ZVbHNIbFJOVVNadEhpRjRnMVB6dW1CMXBjVUQrMHFxcFBwK3ZvYU1EalF0ZG1PWVBaTlMrT0lNS2wrZzMyc294YVZDTlNzbWwrVk5FU1hWZkxCRmlGVy83TnpnNFhkeWJVZzdWdENZRU1BbjUxZmx4NktnOTY0WjhMMDZMSE5NWnBFUEp1eDh2T2lCNk52eS9nTFBuVjV1N05JckhxZy9HWGtxQktleVZOYlJ1a0djT2t2cG9LblhHSU5JKzNWamowQWcydjdCU25SWkk0YnY4UVc4RUx6d1Q5TDgyWi9icDlBRUNSYWpsNlBHU3l3dlFFNmk3MVNJbDBrQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFzRkFBT0NBZ0VBVm1UQmkyRW9kUjB4a0JYV2o3dXltbXdHMXVRUjEwM0xlMlB1WFloaXZHcXRUMEcydWdCTmVmL0VwYTFocGZ4ZTBzRE1qK3p2UE5UZ1NObWFKL0JOYTFFa3dzWGlYdXhpbFJuNU9ndHhvVy9vazl2dUh5cmthWnk5UkVqbFVqUyt2aXdYZ1RMS2tKeDlOdTBJc2daWXJuK3dyaUxkdlJlZ1JNelZmSlpvTDJXV1lpZEZEWEdHMXVVc3ZhUys5NVAxUi8wZ3ZqM0lHZ1FqaVhTb2k1cGlPWjFYTUh1Ym9kdVNEZkh0U05mc3Y4SmdMYk9WRDY3NThNTUxQc2c1MHRUb3RuenN4am5YN0NGSTdrVnJFRkRYK3A0a1M2YTM1blFVMHI4K2RHS1U5aHpENWVnTnl3S1BlVXI5ZDZLTWdlTlYrNDhWMmQ3QjVEQTNIT3l1RDZVMEtBd2ZESzlWYjZlSEFCYm9JMnkxV29aSkJJM3ErM2hJV0N5WmhuejFMV2ZnWFBZZEVHUzhuRkViNElnekwva0czeXdiSW9GdzdUdlBsdjRKWHFab2Ivb2ZEczFqZ2FtOXJQSUgzTDIzbUw0WkpYRlIybXErUDMzeTdNWEUvQ2F5ZnRMeStscXJhTTVIL2NOeTIwWmNnTlBmRXRoelNjVjVnbEtLNVRSdVU0UWpCK1Rlc3p4T1Y5ekpqZmdNT050WHRicE1BMTAreC9FWHRxOElBOTJSYWNBT0kvckc3YjE4bDZLZkg1MW0yQ0lhd0FMeW11WE50ZUp0a3pyb1YxQTRwdldsaXVYREtxdFpDSkoyZWpoUkxOUFhvQlVUOXkxRERvQVdYVlFYS1N6VGl2VE5BTnNqSXpDQkpLVktoUGtpVXRUektiRG15OXRIcElDZ0pDdnk5QWs9PC9kczpYNTA5Q2VydGlmaWNhdGU^%^2BPC9kczpYNTA5RGF0YT48L2RzOktleUluZm8^%^2BPC9kczpTaWduYXR1cmU^%^2BPHNhbWwyOlN1YmplY3QgeG1sbnM6c2FtbDI9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphc3NlcnRpb24iPjxzYW1sMjpOYW1lSUQgRm9ybWF0PSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoxLjE6bmFtZWlkLWZvcm1hdDp1bnNwZWNpZmllZCI^%^2BZGFuaWVsaXM8L3NhbWwyOk5hbWVJRD48c2FtbDI6U3ViamVjdENvbmZpcm1hdGlvbiBNZXRob2Q9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpjbTpiZWFyZXIiPjxzYW1sMjpTdWJqZWN0Q29uZmlybWF0aW9uRGF0YSBJblJlc3BvbnNlVG89IkNpdHJpeFN5cy1TcGx1bmtDbG91ZC4yNjE0NDU1LjZGODM5MDg0LThCODktNDdEQy1CQTA1LUY3NjlEQjMzQTE0RiIgTm90T25PckFmdGVyPSIyMDIyLTA4LTIxVDAxOjM0OjI1LjMyNVoiIFJlY2lwaWVudD0iaHR0cHM6Ly9jaXRyaXhzeXMuc3BsdW5rY2xvdWQuY29tL3NhbWwvYWNzIj48L3NhbWwyOlN1YmplY3RDb25maXJtYXRpb25EYXRhPjwvc2FtbDI6U3ViamVjdENvbmZpcm1hdGlvbj48L3NhbWwyOlN1YmplY3Q^%^2BPHNhbWwyOkNvbmRpdGlvbnMgeG1sbnM6c2FtbDI9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphc3NlcnRpb24iIE5vdEJlZm9yZT0iMjAyMi0wOC0yMVQwMToyNDoyNS4zMjVaIiBOb3RPbk9yQWZ0ZXI9IjIwMjItMDgtMjFUMDE6MzQ6MjUuMzI1WiI^%^2BPHNhbWwyOkF1ZGllbmNlUmVzdHJpY3Rpb24^%^2BPHNhbWwyOkF1ZGllbmNlPkNpdHJpeFN5cy1TcGx1bmtDbG91ZDwvc2FtbDI6QXVkaWVuY2U^%^2BPC9zYW1sMjpBdWRpZW5jZVJlc3RyaWN0aW9uPjwvc2FtbDI6Q29uZGl0aW9ucz48c2FtbDI6QXV0aG5TdGF0ZW1lbnQgeG1sbnM6c2FtbDI9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphc3NlcnRpb24iIEF1dGhuSW5zdGFudD0iMjAyMi0wOC0yMVQwMToyOToyNS4zMjVaIiBTZXNzaW9uSW5kZXg9IkNpdHJpeFN5cy1TcGx1bmtDbG91ZC4yNjE0NDU1LjZGODM5MDg0LThCODktNDdEQy1CQTA1LUY3NjlEQjMzQTE0RiI^%^2BPHNhbWwyOkF1dGhuQ29udGV4dD48c2FtbDI6QXV0aG5Db250ZXh0Q2xhc3NSZWY^%^2BdXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFjOmNsYXNzZXM6UGFzc3dvcmRQcm90ZWN0ZWRUcmFuc3BvcnQ8L3NhbWwyOkF1dGhuQ29udGV4dENsYXNzUmVmPjwvc2FtbDI6QXV0aG5Db250ZXh0Pjwvc2FtbDI6QXV0aG5TdGF0ZW1lbnQ^%^2BPHNhbWwyOkF0dHJpYnV0ZVN0YXRlbWVudCB4bWxuczpzYW1sMj0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFzc2VydGlvbiI^%^2BPHNhbWwyOkF0dHJpYnV0ZSBOYW1lPSJyZWFsTmFtZSIgTmFtZUZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmF0dHJuYW1lLWZvcm1hdDp1bnNwZWNpZmllZCI^%^2BPHNhbWwyOkF0dHJpYnV0ZVZhbHVlIHhtbG5zOnhzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgeHNpOnR5cGU9InhzOnN0cmluZyI^%^2BZGFuaWVsaXNAY2l0cml0ZS5uZXQ8L3NhbWwyOkF0dHJpYnV0ZVZhbHVlPjwvc2FtbDI6QXR0cmlidXRlPjxzYW1sMjpBdHRyaWJ1dGUgTmFtZT0ibWFpbCIgTmFtZUZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmF0dHJuYW1lLWZvcm1hdDp1bnNwZWNpZmllZCI^%^2BPHNhbWwyOkF0dHJpYnV0ZVZhbHVlIHhtbG5zOnhzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgeHNpOnR5cGU9InhzOnN0cmluZyI^%^2BZGFuaWVsLmlzYWFjQGNpdHJpeC5jb208L3NhbWwyOkF0dHJpYnV0ZVZhbHVlPjwvc2FtbDI6QXR0cmlidXRlPjxzYW1sMjpBdHRyaWJ1dGUgTmFtZT0icm9sZSIgTmFtZUZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmF0dHJuYW1lLWZvcm1hdDp1bnNwZWNpZmllZCI^%^2BPHNhbWwyOkF0dHJpYnV0ZVZhbHVlIHhtbG5zOnhzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgeHNpOnR5cGU9InhzOnN0cmluZyI^%^2Bc3BsdW5rX2NjX3VzZXI8L3NhbWwyOkF0dHJpYnV0ZVZhbHVlPjxzYW1sMjpBdHRyaWJ1dGVWYWx1ZSB4bWxuczp4cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiIHhzaTp0eXBlPSJ4czpzdHJpbmciPnNwbHVua19uc191c2VyPC9zYW1sMjpBdHRyaWJ1dGVWYWx1ZT48c2FtbDI6QXR0cmlidXRlVmFsdWUgeG1sbnM6eHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB4c2k6dHlwZT0ieHM6c3RyaW5nIj5zcGx1bmtfY2FzX3VzZXI8L3NhbWwyOkF0dHJpYnV0ZVZhbHVlPjwvc2FtbDI6QXR0cmlidXRlPjwvc2FtbDI6QXR0cmlidXRlU3RhdGVtZW50Pjwvc2FtbDI6QXNzZXJ0aW9uPjwvc2FtbDJwOlJlc3BvbnNlPg^%^3D^%^3D" ^
#   --compressed



# Request 6 - Trigger search with session token

# curl  \
#   -H 'Accept: text/javascript, text/html, application/xml, text/xml, */*' \
#   -H 'Accept-Language: en-US,en;q=0.9' \
#   -H 'Connection: keep-alive' \
#   -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' \
#   -H ': ' \
#   -H 'Origin: https://citrixsys.splunkcloud.com' \
#   -H 'Sec-Fetch-Dest: empty' \
#   -H 'Sec-Fetch-Mode: cors' \
#   -H 'Sec-Fetch-Site: same-origin' \
#   -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
#   -H 'X-Requested-With: XMLHttpRequest' \
#   -H 'X-Splunk-Form-Key: 13940618628224014329' \
#   -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
#   -H 'sec-ch-ua-mobile: ?0' \
#   -H 'sec-ch-ua-platform: "Windows"' \
#   --data-raw 'output_mode=json&action=touch' \
#   --compressed
  
