
# Generate OTP
# Ref - https://stackoverflow.com/questions/66297852/pyotp-totp-code-doesnt-match-authenticator-code
# Ref - https://stackoverflow.com/questions/58744712/pyotp-generated-codes-do-not-match-with-google-authenticator-generated-codes
# secret='otpauth://totp/Citrix:daniel.isaac@citrix.com?algorithm=SHA1&digits=6&issuer=Citrix&period=30&secret=H7P47VJU3DLVNQYB'

secret = "otpauth://totp/citrix.okta.com:danielis%40citrite.net?issuer=citrix.okta.com&t=CMzZy7HXj-Mr4653CVlI&f=opfwirxtbww7LwSti0x7&s=https%3A%2F%2Fcitrix.okta.com&touchIdRequired=false"
otp = pyotp.parse_uri( secret)
print( otp.now() )
# curl "https://citrix.okta.com/api/v1/authn/factors/ostsqve03avwOu9bO0x7/verify?rememberDevice=false" ^
#   -H "authority: citrix.okta.com" ^
#   -H "accept: application/json" ^
#   -H "accept-language: en" ^
#   -H "content-type: application/json" ^
#   -H "cookie: DT=DI0fshqK0bJQfKEF2jmkQfBVA; ext_name=ojplmecpdpgccookcobabopnaifgidhf; Okta_Verify_Autopush_511525830=false; t=sea; oktaStateToken=00g4yOZHvkY25hTMEz0EThT_6XdTw4hSCDQDsp7LiF; JSESSIONID=7582B61D18BDF19C0AB05B786E92F0AE" ^
#   -H "origin: https://citrix.okta.com" ^
#   -H "referer: https://citrix.okta.com/signin/verify/okta/push" ^
#   -H "sec-ch-ua: ^\^"Chromium^\^";v=^\^"104^\^", ^\^" Not A;Brand^\^";v=^\^"99^\^", ^\^"Google Chrome^\^";v=^\^"104^\^"" ^
#   -H "sec-ch-ua-mobile: ?0" ^
#   -H "sec-ch-ua-platform: ^\^"Windows^\^"" ^
#   -H "sec-fetch-dest: empty" ^
#   -H "sec-fetch-mode: cors" ^
#   -H "sec-fetch-site: same-origin" ^
#   -H "user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36" ^
#   -H "x-okta-user-agent-extended: okta-auth-js/6.5.1 okta-signin-widget-6.6.1" ^
#   --data-raw "^{^\^"passCode^\^":^\^"998612^\^",^\^"stateToken^\^":^\^"00g4yOZHvkY25hTMEz0EThT_6XdTw4hSCDQDsp7LiF^\^"^}" ^
#   --compressed

# mysecretkeyhere 

# otpauth://totp/daniel.isaac@citrix.com?secret=H7P47VJU3D&issue=Citrix&algorithm=SHA1&digits=6


# otpauth://totp/Citrix:fokolo1000@5y5u.com?algorithm=SHA1&digits=6&issuer=Citrix&period=30&secret=KP3NTSHYO332KGTP
# otpauth://totp/Citrix:daniel.isaac@citrix.com?algorithm=SHA1&digits=6&issuer=Citrix&period=30&secret=H7P47VJU3DLVNQYB
# otpauth://totp/Citrix:Daniel.Isaac@citrix.com?algorithm=SHA1&digits=6&issuer=Citrix&period=30&secret=FR2R5KWRNR44ALXU
# otpauth://totp/Citrix:yipeba7329@febula.com?algorithm=SHA1&digits=6&issuer=Citrix&period=30&secret=CU5T3SEFUJH4BMLP
# otpauth://totp/Citrix:lovam27561@wirese.com?algorithm=SHA1&digits=6&issuer=Citrix&period=30&secret=URNLUGDYOAEFERI2
# otpauth://totp/Amazon%20Web%20Services:dev_danielis@umbrellazero?algorithm=SHA1&digits=6&issuer=Amazon+Web+Services&period=30&secret=A4ZACQGHPIDK2DNEMZBU74PKGTCKSO34AI5ZLT663V5LXGQTNIF52HYNUTTCUAHV
# otpauth://totp/Citrix:mofapas663@aramidth.com?algorithm=SHA1&digits=6&issuer=Citrix&period=30&secret=Y4K7HMTR3TILOTPY
# otpauth://totp/alice@google.com?algorithm=SHA1&digits=6&period=30&secret=JBSWY3DPEHPK3PXP
