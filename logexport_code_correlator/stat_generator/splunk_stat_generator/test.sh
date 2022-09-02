
## Request 1 
curl 'https://citrix.okta.com/app/citrix_splunkcloudcitrixsysmdca_1/exkvp6838nPMpNIA80x7/sso/saml' \
  -H 'authority: citrix.okta.com' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cache-control: max-age=0' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'cookie: DT=DI0fshqK0bJQfKEF2jmkQfBVA; Okta_Verify_Autopush_511525830=false; JSESSIONID=4FB2ED98B5A1C18FC9C2EF0AB345FFC8' \
  -H 'origin: https://us2.saml.cas.ms' \
  -H 'referer: https://us2.saml.cas.ms/' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: document' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-site: cross-site' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  --data-raw 'RelayState=cmV0dXJuX3RvPS9lbi1VUy8mdXNlcm5hbWU9JmFjY2VwdGVkX3Rvcz0%3D&SAMLRequest=PHNhbWxwOkF1dGhuUmVxdWVzdCB4bWxuczpzYW1sPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZXJ0aW9uIiB4bWxuczpzYW1scD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOnByb3RvY29sIiBJRD0iQ2l0cml4U3lzLVNwbHVua0Nsb3VkLjEwNzAzOTcuM0JDRUZDQzQtNENGQy00NERDLThGQ0QtQTg5NzA4ODhFQTc2IiBJc3N1ZUluc3RhbnQ9IjIwMjItMDgtMjFUMDA6MzQ6MzFaIiBWZXJzaW9uPSIyLjAiPgogIDxzYW1sOklzc3VlciB4bWxuczpzYW1sPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZXJ0aW9uIj5DaXRyaXhTeXMtU3BsdW5rQ2xvdWQ8L3NhbWw6SXNzdWVyPgogIDxzYW1scDpOYW1lSURQb2xpY3kgQWxsb3dDcmVhdGU9InRydWUiIEZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6MS4xOm5hbWVpZC1mb3JtYXQ6dW5zcGVjaWZpZWQiPjwvc2FtbHA6TmFtZUlEUG9saWN5Pgo8L3NhbWxwOkF1dGhuUmVxdWVzdD4%3D' \
  --compressed

# r = requests.post('https://citrix.okta.com/app/citrix_splunkcloudcitrixsysmdca_1/exkvp6838nPMpNIA80x7/sso/s
# aml', data='RelayState=cmV0dXJuX3RvPS9lbi1VUy8mdXNlcm5hbWU9JmFjY2VwdGVkX3Rvcz0%3D&SAMLRequest=PHNhbWxwOkF1dGhuU
# mVxdWVzdCB4bWxuczpzYW1sPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZXJ0aW9uIiB4bWxuczpzYW1scD0idXJuOm9hc2lzOm5h
# bWVzOnRjOlNBTUw6Mi4wOnByb3RvY29sIiBJRD0iQ2l0cml4U3lzLVNwbHVua0Nsb3VkLjEwNzAzOTcuM0JDRUZDQzQtNENGQy00NERDLThGQ0Q
# tQTg5NzA4ODhFQTc2IiBJc3N1ZUluc3RhbnQ9IjIwMjItMDgtMjFUMDA6MzQ6MzFaIiBWZXJzaW9uPSIyLjAiPgogIDxzYW1sOklzc3VlciB4bW
# xuczpzYW1sPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZXJ0aW9uIj5DaXRyaXhTeXMtU3BsdW5rQ2xvdWQ8L3NhbWw6SXNzdWVyP
# gogIDxzYW1scDpOYW1lSURQb2xpY3kgQWxsb3dDcmVhdGU9InRydWUiIEZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6MS4xOm5hbWVp
# ZC1mb3JtYXQ6dW5zcGVjaWZpZWQiPjwvc2FtbHA6TmFtZUlEUG9saWN5Pgo8L3NhbWxwOkF1dGhuUmVxdWVzdD4%3D')
# Response - HTML which triggers redirect to okta page
    # <!DOCTYPE html>
    # <!--[if IE 7]><html lang="en" class="lt-ie10 lt-ie9 lt-ie8"><![endif]-->
    # <!--[if IE 8]><html lang="en" class="lt-ie10 lt-ie9"> <![endif]-->
    # <!--[if IE 9]><html lang="en" class="lt-ie10"><![endif]-->
    # <!--[if gt IE 9]><html lang="en"><![endif]-->
    # <!--[if !IE]><!--><html lang="en"><!--<![endif]-->
    # <head>
    #     <meta charset="UTF-8">

    #     <script type="text/javascript">if (typeof module === 'object') {window.module = module; module = undefined;}</script><title>Citrix Systems - Sign In</title>
    #         <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    #     <meta name="robots" content="noindex,nofollow" />
    #     <script src="https://ok2static.oktacdn.com/assets/js/sdk/okta-signin-widget/6.6.1/js/okta-sign-in.min.js" type="text/javascript"></script>
    #     <link href="https://ok2static.oktacdn.com/assets/js/sdk/okta-signin-widget/6.6.1/css/okta-sign-in.min.css" type="text/css" rel="stylesheet"/>
    #     <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    # <link href="https://ok2static.oktacdn.com/assets/loginpage/css/loginpage-theme.6ca7f7a516a56275837982a82a0a7533.css" type="text/css" rel="stylesheet"/><link href="/api/internal/brand/theme/style-sheet?touch-point=SIGN_IN_PAGE&v=28d025743b8fc0765a7cfe4c08fdf2a9" rel="stylesheet" type="text/css">

    #     <script type="text/javascript">
    #         var okta = {
    #             locale: 'en',
    #             deployEnv: 'PROD'
    #         };
    #     </script><script>window.okta || (window.okta = {}); okta.cdnUrlHostname = "//ok2static.oktacdn.com"; okta.cdnPerformCheck = false;</script><script type="text/javascript">if (window.module) module = window.module;</script></head>
    # <body class="auth okta-container">

    # <!--[if gte IE 8]>
    # <![if lte IE 10]>

    #     <style type="text/css">
    #     .unsupported-browser-banner-wrap {
    #     padding: 20px;
    #     border: 1px solid #ddd;
    #     background-color: #f3fbff;
    #     }
    #     .unsupported-browser-banner-inner {
    #     position: relative;
    #     width: 735px;
    #     margin: 0 auto;
    #     text-align: left;
    #     }
    #     .unsupported-browser-banner-inner .icon {
    #     vertical-align: top;
    #     margin-right: 20px;
    #     display: inline-block;
    #     position: static !important;
    #     }
    #     .unsupported-browser-banner-inner a {
    #     text-decoration: underline;
    #     }
    #     </style><div class="unsupported-browser-banner-wrap">
    #     <div class="unsupported-browser-banner-inner">
    #         <span class="icon icon-16 icon-only warning-16-yellow"></span>You are using an unsupported browser. For the best experience, update to <a href="https://support.okta.com/help/s/article/Okta-Browser-and-OS-Support-Policy">a supported browser</a>.</div>
    #     </div>

    # <![endif]>
    # <![endif]-->
    # <!--[if IE 8]> <div id="login-bg-image-ie8" class="login-bg-image tb--background" style="background-image: none" data-se="login-bg-image"></div> <![endif]-->
    # <!--[if (gt IE 8)|!(IE)]><!--> <div id="login-bg-image" class="login-bg-image tb--background" style="background-image: none" data-se="login-bg-image"></div> <!--<![endif]-->

    # <!-- hidden form for reposting fromURI for X509 auth -->
    # <form action="/login/cert" method="post" id="x509_login" name="x509_login" style="display:none;">
    #     <input type="hidden" class="hide" name="_xsrfToken" value="null"/><input type="hidden" id="fromURI" name="fromURI" class="hidden" value="&#x2f;app&#x2f;citrix_splunkcloudcitrixsysmdca_1&#x2f;exkvp6838nPMpNIA80x7&#x2f;sso&#x2f;saml&#x3f;RelayState&#x3d;cmV0dXJuX3RvPS9lbi1VUy8mdXNlcm5hbWU9JmFjY2VwdGVkX3Rvcz0&#x25;3D&amp;SAMLRequest&#x3d;PHNhbWxwOkF1dGhuUmVxdWVzdCB4bWxuczpzYW1sPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZXJ0aW9uIiB4bWxuczpzYW1scD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOnByb3RvY29sIiBJRD0iQ2l0cml4U3lzLVNwbHVua0Nsb3VkLjEwNzAzOTcuM0JDRUZDQzQtNENGQy00NERDLThGQ0QtQTg5NzA4ODhFQTc2IiBJc3N1ZUluc3RhbnQ9IjIwMjItMDgtMjFUMDA6MzQ6MzFaIiBWZXJzaW9uPSIyLjAiPgogIDxzYW1sOklzc3VlciB4bWxuczpzYW1sPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZXJ0aW9uIj5DaXRyaXhTeXMtU3BsdW5rQ2xvdWQ8L3NhbWw6SXNzdWVyPgogIDxzYW1scDpOYW1lSURQb2xpY3kgQWxsb3dDcmVhdGU9InRydWUiIEZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6MS4xOm5hbWVpZC1mb3JtYXQ6dW5zcGVjaWZpZWQiPjwvc2FtbHA6TmFtZUlEUG9saWN5Pgo8L3NhbWxwOkF1dGhuUmVxdWVzdD4&#x25;3D&amp;OKTA_INVALID_SESSION_REPOST&#x3d;true"/>
    # </form>

    # <div class="content">
    # <div class="applogin-banner">
    #         <div class="applogin-background"></div>
    #         <div class="applogin-container">
    #             <h1>
    #                 Connecting to<div class="applogin-app-logo">
    #                     <img src="https://ok2static.oktacdn.com/fs/bco/4/fs0vpnfvboMAVmC2S0x7" alt="Splunk&#x20;Cloud&#x20;-&#x20;CitrixSys&#x20;&#x28;MDCA&#x29;" class="logo citrix_splunkcloudcitrixsysmdca_1"/></div>
    #             </h1>
    #             <p>Sign-in with your Citrix Systems account to access Splunk Cloud - CitrixSys (MDCA)</p>
    #         </div>
    #     </div>
    # <style type="text/css">
    #     .noscript-msg {
    #         background-color: #fff;
    #         border-color: #ddd #ddd #d8d8d8;
    #         box-shadow:0 2px 0 rgba(175, 175, 175, 0.12);
    #         text-align: center;
    #         width: 398px;
    #         min-width: 300px;
    #         margin: 200px auto;
    #         border-radius: 3px;
    #         border-width: 1px;
    #         border-style: solid;
    #     }

    #     .noscript-content {
    #         padding: 42px;
    #     }

    #     .noscript-content h2 {
    #         padding-bottom: 20px;
    #     }

    #     .noscript-content h1 {
    #         padding-bottom: 25px;
    #     }

    #     .noscript-content a {
    #         background: transparent;
    #         box-shadow: none;
    #         display: table-cell;
    #         vertical-align: middle;
    #         width: 314px;
    #         height: 50px;
    #         line-height: 36px;
    #         color: #fff;
    #         background: linear-gradient(#007dc1, #0073b2), #007dc1;
    #         border: 1px solid;
    #         border-color: #004b75;
    #         border-bottom-color: #00456a;
    #         box-shadow: rgba(0, 0, 0, 0.15) 0 1px 0, rgba(255, 255, 255, 0.1) 0 1px 0 0 inset;
    #         -webkit-border-radius: 3px;
    #         border-radius: 3px;
    #     }

    #     .noscript-content a:hover {
    #         background: #007dc1;
    #         cursor: hand;
    #         text-decoration: none;
    #     }
    # </style><noscript>
    #     <div id="noscript-msg" class="noscript-msg">
    #         <div class="noscript-content">
    #             <h2>Javascript is required</h2>
    #             <h1>Javascript is disabled on your browser.&nbspPlease enable Javascript and refresh this page.</h1>
    #             <a href="." class="tb--button">Refresh</a>
    #         </div>
    #     </div>
    # </noscript>
    # <div id="signin-container"></div>
    # <div id="okta-sign-in" class="auth-container main-container" style="display:none">
    #     <div id="unsupported-onedrive" class="unsupported-message" style="display:none">
    #         <h2 class="o-form-head">Your OneDrive version is not supported</h2>
    #         <p>Upgrade now by installing the OneDrive for Business Next Generation Sync Client to login to Okta</p>
    #         <a class="button button-primary tb--button" target="_blank" href="https://support.okta.com/help/articles/Knowledge_Article/Upgrading-to-OneDrive-for-Business-Next-Generation-Sync-Client">
    #         Learn how to upgrade</a>
    #     </div>
    #     <div id="unsupported-cookie" class="unsupported-message" style="display:none">
    #         <h2 class="o-form-head">Cookies are required</h2>
    #         <p>Cookies are disabled on your browser. Please enable Cookies and refresh this page.</p>
    #         <a class="button button-primary tb--button" target="_blank" href=".">
    #             Refresh</a>
    #     </div>
    # </div>
    # </div>

    # <div class="footer">
    # <div class="footer-container clearfix">
    #     <p class="copyright">Powered by <a href="http://www.okta.com/" class="inline-block notranslate">Okta</a></p>
    #         <p class="privacy-policy"><a href="/privacy" target="_blank" class="inline-block margin-l-10">Privacy Policy</a></p>
    #     </div>
    # </div>

    # <script type="text/javascript">function runLoginPage (fn) {var mainScript = document.createElement('script');mainScript.src = 'https://ok2static.oktacdn.com/assets/js/mvc/loginpage/initLoginPage.pack.47db94d2da847bad7e35886ca1ebf00e.js';mainScript.crossOrigin = 'anonymous';mainScript.integrity = 'sha384-SzQEGoDdXzOx3qDDdPZNQ212Gpe9LGW1vswzEeLW2Xkt50mfzFrPWyQaF6eIKMRA';document.getElementsByTagName('head')[0].appendChild(mainScript);fn && mainScript.addEventListener('load', function () { setTimeout(fn, 1) });}</script><script type="text/javascript">
    # (function(){
    # var baseUrl = 'https\x3A\x2F\x2Fcitrix.okta.com';
    # var suppliedRedirectUri = '';
    # var repost = true;
    # var stateToken = '';
    # var fromUri = '\x2Fapp\x2Fcitrix_splunkcloudcitrixsysmdca_1\x2Fexkvp6838nPMpNIA80x7\x2Fsso\x2Fsaml\x3FRelayState\x3DcmV0dXJuX3RvPS9lbi1VUy8mdXNlcm5hbWU9JmFjY2VwdGVkX3Rvcz0\x253D\x26SAMLRequest\x3DPHNhbWxwOkF1dGhuUmVxdWVzdCB4bWxuczpzYW1sPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZXJ0aW9uIiB4bWxuczpzYW1scD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOnByb3RvY29sIiBJRD0iQ2l0cml4U3lzLVNwbHVua0Nsb3VkLjEwNzAzOTcuM0JDRUZDQzQtNENGQy00NERDLThGQ0QtQTg5NzA4ODhFQTc2IiBJc3N1ZUluc3RhbnQ9IjIwMjItMDgtMjFUMDA6MzQ6MzFaIiBWZXJzaW9uPSIyLjAiPgogIDxzYW1sOklzc3VlciB4bWxuczpzYW1sPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZXJ0aW9uIj5DaXRyaXhTeXMtU3BsdW5rQ2xvdWQ8L3NhbWw6SXNzdWVyPgogIDxzYW1scDpOYW1lSURQb2xpY3kgQWxsb3dDcmVhdGU9InRydWUiIEZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6MS4xOm5hbWVpZC1mb3JtYXQ6dW5zcGVjaWZpZWQiPjwvc2FtbHA6TmFtZUlEUG9saWN5Pgo8L3NhbWxwOkF1dGhuUmVxdWVzdD4\x253D\x26OKTA_INVALID_SESSION_REPOST\x3Dtrue';
    # var username = '';
    # var rememberMe = true;
    # var smsRecovery = false;
    # var callRecovery = false;
    # var emailRecovery = false;
    # var usernameLabel = 'Username';
    # var usernameInlineLabel = '';
    # var passwordLabel = 'Password';
    # var passwordInlineLabel = '';
    # var signinLabel = 'Sign\x20In';
    # var forgotpasswordLabel = 'Forgot\x20password\x3F';
    # var unlockaccountLabel = 'Unlock\x20account\x3F';
    # var helpLabel = 'Help';
    # var orgSupportPhoneNumber = '\x2B1\x20954\x20267\x202222';
    # var hideSignOutForMFA = false;
    # var hideBackToSignInForReset = false;
    # var footerHelpTitle = 'This\x20system\x20contains\x20Citrix\x20Confidential\x20Information.\x20Your\x20access\x20and\x20use\x20of\x20Citrix\x20Systems\x20and\x20technology\x20resources\x20is\x20subject\x20to\x20Citrix\x20policies,\x20including\x20without\x20limitation\x20the\x20Code\x20of\x20Business\x20Conduct,\x20the\x20Information\x20Classification\x20\x26\x20Handling\x20Policy\x20and\x20the\x20Acceptable\x20Use\x20Policy\x20\x28AUP\x29.\x20Citrix\x20may\x20monitor\x20your\x20use\x20of\x20systems\x20and\x20technology\x20resources\x20in\x20accordance\x20with\x20the\x20AUP\x20and\x20will\x20handle\x20your\x20information\x20in\x20a\x20manner\x20consist\x20with\x20the\x20Citrix\x20Internal\x20Privacy\x20Policy.\x20Click\x20here\x20if\x20you\x20need\x20help\x20logging\x20in.';
    # var recoveryFlowPlaceholder = 'Email\x20or\x20Username';
    # var signOutUrl = 'https\x3A\x2F\x2Fsso.citrix.com\x2FCTXIDP\x2FSignedOut.htm';
    # var authScheme = 'OAUTH2';
    # var hasPasswordlessPolicy = '';
    # var INVALID_TOKEN_ERROR_CODE = 'errors.E0000011';

    # var securityImage = true;
    
    #     securityImage = false;
    


    # var selfServiceUnlock = false;
    

    # var redirectByFormSubmit = false;
    

    # var showPasswordRequirementsAsHtmlList = false;
    
    #     showPasswordRequirementsAsHtmlList = true;
    

    # var autoPush = false;
    
    #     autoPush = true;
    

    # var accountChooserDiscoveryUrl = 'https://login.okta.com/discovery/iframe.html';

    # // In case of custom app login, the uri is already absolute, so we must not attach baseUrl
    # var redirectUri;
    # if (isAbsoluteUri(fromUri)) {
    #     redirectUri = fromUri;
    # } else {
    #     redirectUri = baseUrl + fromUri;
    # }
    

    # var backToSignInLink = '';
    

    # var customButtons;
    # var pivProperties = {};

    

    # var customLinks = [];
    
    # var factorPageCustomLink = {};
    

    # var linkParams;
    

    # var proxyIdxResponse;
    

    # var stateTokenAllFlows;
    

    # var idpDiscovery;
    # var idpDiscoveryRequestContext;
    

    # var showPasswordToggleOnSignInPage = false;
    # var showIdentifier = false;
    

    # var hasSkipIdpFactorVerificationButton = false;
    

    # var hasOAuth2ConsentFeature = false;
    # var consentFunc;
    

    # var hasMfaAttestationFeature = false;
    
    #     hasMfaAttestationFeature = true;
    

    # var rememberMyUsernameOnOIE = false;
    

    # var engFastpassMultipleAccounts = false;
    

    # var registration = false;
    

    # var webauthn = true;
    

    #     var overrideExistingStateToken = false;
        

    # var isPersonalOktaOrg = false;
    

    # var loginPageConfig = {
    #     fromUri: fromUri,
    #     repost: repost,
    #     redirectUri: redirectUri,
    #     backToSignInLink: backToSignInLink,
    #     isMobileClientLogin: false,
    #     isMobileSSO: false,
    #     disableiPadCheck: false,
    #     enableiPadLoginReload: false,
    #     linkParams: linkParams,
    #     hasChromeOSFeature: false,
    #     showLinkToAppStore: false,
    #     accountChooserDiscoveryUrl: accountChooserDiscoveryUrl,
    #     mfaAttestation: hasMfaAttestationFeature,
    #     isPersonalOktaOrg: isPersonalOktaOrg,
    #     enrollingFactor: '',
    #     stateTokenExpiresAt: '',
    #     stateTokenRefreshWindowMs: '',
    #     inactiveTab: {
    #     enabled: false,
    #     elementId: 'inactive-tab-main-div',
    #     },
    #     signIn: {
    #     el: '#signin-container',
    #     baseUrl: baseUrl,
    #     brandName: 'Okta',
    #     logo: 'https://ok2static.oktacdn.com/fs/bco/1/fs0pg3zx5fZ7HP3II0x7',
    #     logoText: 'Citrix\x20Systems logo',
    #     helpSupportNumber: orgSupportPhoneNumber,
    #     stateToken: stateToken,
    #     username: username,
    #     signOutLink: signOutUrl,
    #     consent: consentFunc,
    #     authScheme: authScheme,
    #     relayState: fromUri,
    #     proxyIdxResponse: proxyIdxResponse,
    #     overrideExistingStateToken: overrideExistingStateToken,
    #     interstitialBeforeLoginRedirect: 'DEFAULT',
    #     idpDiscovery: {
    #         requestContext: idpDiscoveryRequestContext
    #     },
    #     features: {
    #         router: true,
    #         securityImage: securityImage,
    #         rememberMe: rememberMe,
    #         autoPush: autoPush,
    #         webauthn: webauthn,
    #         smsRecovery: smsRecovery,
    #         callRecovery: callRecovery,
    #         emailRecovery: emailRecovery,
    #         selfServiceUnlock: selfServiceUnlock,
    #         multiOptionalFactorEnroll: true,
    #         deviceFingerprinting: true,
    #         useDeviceFingerprintForSecurityImage: true,
    #         trackTypingPattern: false,
    #         hideSignOutLinkInMFA: hideSignOutForMFA,
    #         hideBackToSignInForReset: hideBackToSignInForReset,
    #         rememberMyUsernameOnOIE: rememberMyUsernameOnOIE,
    #         engFastpassMultipleAccounts: engFastpassMultipleAccounts,
    #         customExpiredPassword: true,
    #         idpDiscovery: idpDiscovery,
    #         passwordlessAuth: hasPasswordlessPolicy,
    #         consent: hasOAuth2ConsentFeature,
    #         skipIdpFactorVerificationBtn: hasSkipIdpFactorVerificationButton,
    #         showPasswordToggleOnSignInPage: showPasswordToggleOnSignInPage,
    #         showIdentifier: showIdentifier,
    #         registration: registration,
    #         redirectByFormSubmit: redirectByFormSubmit,
    #         restrictRedirectToForeground: true,
    #         showPasswordRequirementsAsHtmlList: showPasswordRequirementsAsHtmlList
    #     },

    #     assets: {
    #         baseUrl: "https\x3A\x2F\x2Fok2static.oktacdn.com\x2Fassets\x2Fjs\x2Fsdk\x2Fokta\x2Dsignin\x2Dwidget\x2F6.6.1"
    #     },

    #     language: okta.locale,
    #     i18n: {},

    #     customButtons: customButtons,

    #     piv: pivProperties,

    #     helpLinks: {
    #         help: 'https\x3A\x2F\x2Fsso.citrix.com\x2FCTXIDP\x2FHelpPages\x2FOktaLoginHelp.html',
    #         forgotPassword: 'https\x3A\x2F\x2Fsso.citrix.com\x2FCTXIDP\x2FHelpPages\x2FOktaLoginHelp.html',
    #         unlock: '',
    #         custom: customLinks,
    #         factorPage: factorPageCustomLink
    #     }
    #     }
    # };

    # loginPageConfig.signIn.i18n[okta.locale] = {
        
    #     'primaryauth.username.placeholder': usernameLabel,
    #     'primaryauth.username.tooltip': usernameInlineLabel,
    #     'primaryauth.password.placeholder': passwordLabel,
    #     'primaryauth.password.tooltip': passwordInlineLabel,
    #     'mfa.challenge.password.placeholder': passwordLabel,
    #     'primaryauth.title': signinLabel,
    #     'forgotpassword': forgotpasswordLabel,
    #     'unlockaccount': unlockaccountLabel,
    #     'help': helpLabel,
    #     'needhelp': footerHelpTitle,
    #     'password.forgot.email.or.username.placeholder': recoveryFlowPlaceholder,
    #     'password.forgot.email.or.username.tooltip': recoveryFlowPlaceholder,
    #     'account.unlock.email.or.username.placeholder': recoveryFlowPlaceholder,
    #     'account.unlock.email.or.username.tooltip': recoveryFlowPlaceholder
    # };

    # // When STAF is enabled and the token is not valid, the Widget must be reloaded to obtain a new stateToken. We're updating
    # // the error message here as it isn't applicable for non-STAF orgs. The override is behind a new eng flag
    # // See : OKTA-376620, Feature flag : ENG_CHANGE_INVALID_TOKEN_MESSAGE
    

    # function isOldWebBrowserControl() {
    #     // We no longer support IE7. If we see the MSIE 7.0 browser mode, it's a good signal
    #     // that we're in a windows embedded browser.
    #     if (navigator.userAgent.indexOf('MSIE 7.0') === -1) {
    #     return false;
    #     }

    #     // Because the userAgent is the same across embedded browsers, we use feature
    #     // detection to see if we're running on older versions that do not support updating
    #     // the documentMode via x-ua-compatible.
    #     return document.all && !window.atob;
    # }

    # function isAbsoluteUri(uri) {
    #     var pat = /^https?:\/\//i;
    #     return pat.test(uri);
    # }

    # var unsupportedContainer = document.getElementById('okta-sign-in');

    # var failIfCookiesDisabled = true;
    

    # // Old versions of WebBrowser Controls (specifically, OneDrive) render in IE7 browser
    # // mode, with no way to override the documentMode. In this case, inform the user they need
    # // to upgrade.
    # if (isOldWebBrowserControl()) {
    #     document.getElementById('unsupported-onedrive').removeAttribute('style');
    #     unsupportedContainer.removeAttribute('style');
    # }
    # else if (failIfCookiesDisabled && !navigator.cookieEnabled) {
    #     document.getElementById('unsupported-cookie').removeAttribute('style');
    #     unsupportedContainer.removeAttribute('style');
    # }
    # else {
    #     unsupportedContainer.parentNode.removeChild(unsupportedContainer);
    #     runLoginPage(function () {
    #     OktaLogin.initLoginPage(loginPageConfig);
    #     });
    # }
    # }());
    # </script><script type="text/javascript">
    # window.addEventListener('load', function(event) {
    #     function applyStyle(id, style) {
    #     if (style) {
    #         var el = document.getElementById(id);
    #         if (el) {
    #         el.setAttribute('style', style);
    #         }
    #     }
    #     }
    #     applyStyle('login-bg-image', "background-image: none");
    #     applyStyle('login-bg-image-ie8', "");
    # });
    # </script></body>
    # </html>

## Request 2 - Supply login
curl 'https://citrix.okta.com/api/v1/internal/device/nonce' \
  -X 'POST' \
  -H 'authority: citrix.okta.com' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'content-length: 0' \
  -H 'cookie: DT=DI0fshqK0bJQfKEF2jmkQfBVA; ext_name=ojplmecpdpgccookcobabopnaifgidhf; Okta_Verify_Autopush_511525830=false; t=sea; JSESSIONID=D35A4AC36935B276D921FFEEBAF8C110' \
  -H 'origin: https://citrix.okta.com' \
  -H 'referer: https://citrix.okta.com/auth/services/devicefingerprint' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  -H 'x-requested-with: XMLHttpRequest' \
  --compressed

{"nonce":"9Bj-agXW-A87eOOwMRpcWW7RnrY2hqIa","expiresAt":1661042461167}
# >>> r = requests.post('https://citrix.okta.com/api/v1/internal/device/nonce')
# >>> r.content
# b'{"nonce":"WCNlRBwFgahwIH5Vg2MnrJGKg4gp9SiB","expiresAt":1661042853875}'

curl 'https://citrix.okta.com/api/v1/authn' \
  -H 'authority: citrix.okta.com' \
  -H 'accept: application/json' \
  -H 'accept-language: en' \
  -H 'content-type: application/json' \
  -H 'cookie: DT=DI0fshqK0bJQfKEF2jmkQfBVA; ext_name=ojplmecpdpgccookcobabopnaifgidhf; Okta_Verify_Autopush_511525830=false; t=sea; JSESSIONID=3FF7AB4797710187D74F55A1B18BE216' \
  -H 'origin: https://citrix.okta.com' \
  -H 'referer: https://citrix.okta.com/app/citrix_splunkcloudcitrixsysmdca_1/exkvp6838nPMpNIA80x7/sso/saml' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  -H 'x-device-fingerprint: 9Bj-agXW-A87eOOwMRpcWW7RnrY2hqIa|136bd7b8684dd0cb71a733f8a902b655bcf1a768f2788ec8a00cbb249b3f2406|8be1738f0696f544484a5c6f164dc2ab' \
  -H 'x-okta-user-agent-extended: okta-auth-js/6.5.1 okta-signin-widget-6.6.1' \
  --data-raw '{"password":"dummy$%^","username":"danielis","options":{"warnBeforePasswordExpired":true,"multiOptionalFactorEnroll":true}}' \
  --compressed

{"stateToken":"00Bo4t2XTX5Z-HGE-mabpNnqTpsLUOojIfPEnzc8ES","expiresAt":"2022-08-21T00:45:32.000Z","status":"MFA_REQUIRED","_embedded":{"user":{"id":"00ul5uj0qaiSQ8jYv0x7","profile":{"login":"danielis@citrite.net","firstName":"Daniel","lastName":"Isaac","locale":"en_US","timeZone":"America/Los_Angeles"}},"factors":[{"id":"opfsqvcn3ko1z409k0x7","factorType":"push","provider":"OKTA","vendorName":"OKTA","profile":{"credentialId":"danielis@citrite.net","deviceType":"SmartPhone_Android","keys":[{"kty":"RSA","use":"sig","kid":"default","e":"AQAB","n":"zt3on9YMmagGVRthYOYfoZj_gYNWagaqIa1UxkEx33vgKBC9HsGry8v0eLUElFYAZ0RX8FvIuOcKG7drriYZd4_zM0uYkaaMHScwYsLbxVibTDEfin4s7NCV03jOc1rnPcaTyplRizYGDoNdba5hfDpaEvfebQEXS7tft1xX92DM23V5Q7mQOdvt5siokQmKUCI2RvpFskjuNKKwbCJ3FXYSDiqy_8q61BCy0K06DQn3ibCsMtQbma6YIHN9fywDRTKn5VmeUz474L8WC55CaF8OgfdOVyW3A5WEfEEvxZ6O3I2LX5Vs1jTv9wKYjKmEOBOp3W2BUJypHO2Q1dYrDw"}],"name":"moto g(40) fusion","platform":"ANDROID","version":"30"},"_links":{"verify":{"href":"https://citrix.okta.com/api/v1/authn/factors/opfsqvcn3ko1z409k0x7/verify","hints":{"allow":["POST"]}}}},{"id":"ostsqve03avwOu9bO0x7","factorType":"token:software:totp","provider":"OKTA","vendorName":"OKTA","profile":{"credentialId":"danielis@citrite.net"},"_links":{"verify":{"href":"https://citrix.okta.com/api/v1/authn/factors/ostsqve03avwOu9bO0x7/verify","hints":{"allow":["POST"]}}}}],"policy":{"allowRememberDevice":true,"rememberDeviceLifetimeInMinutes":60,"rememberDeviceByDefault":false,"factorsPolicyInfo":{"opfsqvcn3ko1z409k0x7":{"autoPushEnabled":false}}}},"_links":{"cancel":{"href":"https://citrix.okta.com/api/v1/authn/cancel","hints":{"allow":["POST"]}}}}
# >>> r = requests.post('https://citrix.okta.com/api/v1/authn', data = json.dumps({"password":"dummy$%^","username":"danielis", "options":{"warnBeforePasswordExpired":True,"multiOptionalFactorEnroll":True}}), headers={'con
# tent-type': 'application/json', 'accept': 'application/json'})
# >>> r
# <Response [200]>
# >>> r.content
# b'{"stateToken":"00UXQGY1aTZkCJQdnZILNS-3EvHv-luzXfCWE234RP","expiresAt":"2022-08-21T01:02:21.000Z","status":"MFA_REQUIRED","_embedded":{"user":{"id":"00ul5uj0qaiSQ8jYv0x7","profile":{"login":"danielis@citrite.net","firstName":"Daniel","lastName":"Isaac","locale":"en_US","timeZone":"America/Los_Angeles"}},"factors":[{"id":"opfsqvcn3ko1z409k0x7","factorType":"push","provider":"OKTA","vendorName":"OKTA","profile":{"credentialId":"danielis@citrite.net","deviceType":"SmartPhone_Android","keys":[{"kty":"RSA","use":"sig","kid":"default","e":"AQAB","n":"zt3on9YMmagGVRthYOYfoZj_gYNWagaqIa1UxkEx33vgKBC9HsGry8v0eLUElFYAZ0RX8FvIuOcKG7drriYZd4_zM0uYkaaMHScwYsLbxVibTDEfin4s7NCV03jOc1rnPcaTyplRizYGDoNdba5hfDpaEvfebQEXS7tft1xX92DM23V5Q7mQOdvt5siokQmKUCI2RvpFskjuNKKwbCJ3FXYSDiqy_8q61BCy0K06DQn3ibCsMtQbma6YIHN9fywDRTKn5VmeUz474L8WC55CaF8OgfdOVyW3A5WEfEEvxZ6O3I2LX5Vs1jTv9wKYjKmEOBOp3W2BUJypHO2Q1dYrDw"}],"name":"moto g(40) fusion","platform":"ANDROID","version":"30"},"_links":{"verify":{"href":"https://citrix.okta.com/api/v1/authn/factors/opfsqvcn3ko1z409k0x7/verify","hints":{"allow":["POST"]}}}},{"id":"ostsqve03avwOu9bO0x7","factorType":"token:software:totp","provider":"OKTA","vendorName":"OKTA","profile":{"credentialId":"danielis@citrite.net"},"_links":{"verify":{"href":"https://citrix.okta.com/api/v1/authn/factors/ostsqve03avwOu9bO0x7/verify","hints":{"allow":["POST"]}}}}],"policy":{"allowRememberDevice":true,"rememberDeviceLifetimeInMinutes":5,"rememberDeviceByDefault":false,"factorsPolicyInfo":{"opfsqvcn3ko1z409k0x7":{"autoPushEnabled":false}}}},"_links":{"cancel":{"href":"https://citrix.okta.com/api/v1/authn/cancel","hints":{"allow":["POST"]}}}}'

# Okta push triggered
curl 'https://citrix.okta.com/api/v1/authn/factors/opfsqvcn3ko1z409k0x7/verify?autoPush=false&rememberDevice=false' \
  -H 'authority: citrix.okta.com' \
  -H 'accept: application/json' \
  -H 'accept-language: en' \
  -H 'content-type: application/json' \
  -H 'cookie: DT=DI0fshqK0bJQfKEF2jmkQfBVA; ext_name=ojplmecpdpgccookcobabopnaifgidhf; Okta_Verify_Autopush_511525830=false; t=sea; JSESSIONID=B8444CE2BBF5BF905C956F76B417FB32; oktaStateToken=00Bo4t2XTX5Z-HGE-mabpNnqTpsLUOojIfPEnzc8ES' \
  -H 'origin: https://citrix.okta.com' \
  -H 'referer: https://citrix.okta.com/signin/verify/okta/push' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  -H 'x-okta-user-agent-extended: okta-auth-js/6.5.1 okta-signin-widget-6.6.1' \
  --data-raw '{"stateToken":"00Bo4t2XTX5Z-HGE-mabpNnqTpsLUOojIfPEnzc8ES"}' \
  --compressed

{"stateToken":"00Bo4t2XTX5Z-HGE-mabpNnqTpsLUOojIfPEnzc8ES","expiresAt":"2022-08-21T00:46:44.000Z","status":"MFA_CHALLENGE","factorResult":"WAITING","challengeType":"FACTOR","_embedded":{"user":{"id":"00ul5uj0qaiSQ8jYv0x7","profile":{"login":"danielis@citrite.net","firstName":"Daniel","lastName":"Isaac","locale":"en_US","timeZone":"America/Los_Angeles"}},"factor":{"id":"opfsqvcn3ko1z409k0x7","factorType":"push","provider":"OKTA","vendorName":"OKTA","profile":{"credentialId":"danielis@citrite.net","deviceType":"SmartPhone_Android","keys":[{"kty":"RSA","use":"sig","kid":"default","e":"AQAB","n":"zt3on9YMmagGVRthYOYfoZj_gYNWagaqIa1UxkEx33vgKBC9HsGry8v0eLUElFYAZ0RX8FvIuOcKG7drriYZd4_zM0uYkaaMHScwYsLbxVibTDEfin4s7NCV03jOc1rnPcaTyplRizYGDoNdba5hfDpaEvfebQEXS7tft1xX92DM23V5Q7mQOdvt5siokQmKUCI2RvpFskjuNKKwbCJ3FXYSDiqy_8q61BCy0K06DQn3ibCsMtQbma6YIHN9fywDRTKn5VmeUz474L8WC55CaF8OgfdOVyW3A5WEfEEvxZ6O3I2LX5Vs1jTv9wKYjKmEOBOp3W2BUJypHO2Q1dYrDw"}],"name":"moto g(40) fusion","platform":"ANDROID","version":"30"}},"policy":{"allowRememberDevice":true,"rememberDeviceLifetimeInMinutes":60,"rememberDeviceByDefault":false,"factorsPolicyInfo":{"opfsqvcn3ko1z409k0x7":{"autoPushEnabled":false}}}},"_links":{"next":{"name":"poll","href":"https://citrix.okta.com/api/v1/authn/factors/opfsqvcn3ko1z409k0x7/verify","hints":{"allow":["POST"]}},"resend":[{"name":"push","href":"https://citrix.okta.com/api/v1/authn/factors/opfsqvcn3ko1z409k0x7/verify/resend","hints":{"allow":["POST"]}}],"prev":{"href":"https://citrix.okta.com/api/v1/authn/previous","hints":{"allow":["POST"]}},"cancel":{"href":"https://citrix.okta.com/api/v1/authn/cancel","hints":{"allow":["POST"]}}}}
# >>> r = requests.post("https://citrix.okta.com/api/v1/authn/factors/opfsqvcn3ko1z409k0x7/verify?autoPush=false&rememberDevice=false", data=json.dumps({"stateToken":"00UXQGY1aTZkCJQdnZILNS-3EvHv-luzXfCWE234RP"}), headers={'
# accept': 'application/json', 'content-type': 'application/json'})
# >>> r
# <Response [200]>
# >>> r.content
# b'{"expiresAt":"2022-08-21T01:06:43.000Z","status":"SUCCESS","sessionToken":"20111LA6XdkGG5nGi4D3g_GNV1GmZmDQT2LKC15ihcYFDgoipi4dOJt","_embedded":{"user":{"id":"00ul5uj0qaiSQ8jYv0x7","profile":{"login":"danielis@citrite.net","firstName":"Daniel","lastName":"Isaac","locale":"en_US","timeZone":"America/Los_Angeles"}}},"_links":{"cancel":{"href":"https://citrix.okta.com/api/v1/authn/cancel","hints":{"allow":["POST"]}}}}'
#Cookie redirect triggered










----------------------------------------------------------------------------------------------------------------------

# Request 1
curl 'https://citrixsys.splunkcloud.com/en-US/' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H 'Connection: keep-alive' \
  -H 'Cookie: ext_name=ojplmecpdpgccookcobabopnaifgidhf; 0.0.0=AP-7SBC7L5BZ8ML-2; token_key=352545988105130288; experience_id=7613b243-6e52-6b42-2948-f9d870e24cf3; spg_session=7613b243-6e52-6b42-2948-f9d870e24cf3; splunk_csrf_token=352545988105130288; apt.sid=AP-7SBC7L5BZ8ML-2-1662061757580-19531122; apt.uid=AP-7SBC7L5BZ8ML-2-1662061757581-47841499.0.2.03909a4c-056e-4c08-b565-6efe986e76a5; session_id_8443=2cb6a009a8821ea9af455c0eef00d3729e3011aa' \
  -H 'Sec-Fetch-Dest: document' \
  -H 'Sec-Fetch-Mode: navigate' \
  -H 'Sec-Fetch-Site: none' \
  -H 'Sec-Fetch-User: ?1' \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  --compressed
# Set-Cookie: session_id_8443=dae27871607c35b8bc4ebb94b2e330ccb28580dd; expires=Fri, 02 Sep 2022 00:07:54 GMT; HttpOnly; Max-Age=14400; Path=/; secure
# Location: https://citrixsys.splunkcloud.com:443/en-US/account/login?return_to=%2Fen-US%2F
# Status Code: 303

# R2
curl 'https://citrixsys.splunkcloud.com/en-US/account/login?return_to=%2Fen-US%2F' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H 'Connection: keep-alive' \
  -H 'Cookie: session_id_8443=603e25aecee5423390fd39e832ab266ac3b7fb4e' \
  -H 'Sec-Fetch-Dest: document' \
  -H 'Sec-Fetch-Mode: navigate' \
  -H 'Sec-Fetch-Site: none' \
  -H 'Sec-Fetch-User: ?1' \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  --compressed




curl 'https://citrix.okta.com/auth/services/devicefingerprint' \
  -H 'authority: citrix.okta.com' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cookie: DT=DI0fshqK0bJQfKEF2jmkQfBVA; ext_name=ojplmecpdpgccookcobabopnaifgidhf; Okta_Verify_Autopush_511525830=false; enduser_version=2; _ga=GA1.2.274118758.1661050352; _fbp=fb.1.1661050355989.548418912; _gcl_au=1.1.2008029611.1661050709; _rdt_uuid=1661050708848.e7876030-9319-4791-90a3-31db4304e552; _mkto_trk=id:855-QAH-699&token:_mch-okta.com-1661050349401-67984; cb_user_id=null; cb_group_id=null; cb_anonymous_id=%228b7bf3cf-0a2f-4410-9896-8af618051b06%22; _clck=1x35y7o|1|f47|0; _uetvid=221914f020fd11ed9e6b21532b27ae13; t=sea; oktaStateToken=00vLPWjPVKu0OUDL9EdOGtf6ErMgFEd3AvUeIj5-qg; JSESSIONID=4E206B281DC1BD61FB00100CFAEEDC23' \
  -H 'referer: https://citrix.okta.com/app/citrix_splunkcloudcitrixsysmdca_1/exkvp6838nPMpNIA80x7/sso/saml' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: iframe' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-site: same-origin' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  --compressed

# set-cookie: sid=""; Expires=Thu, 01-Jan-1970 00:00:10 GMT; Path=/
# set-cookie: autolaunch_triggered=""; Expires=Thu, 01-Jan-1970 00:00:10 GMT; Path=/
# set-cookie: JSESSIONID=3EC6A11AC025E5F759C7617DC567D92D; Path=/; Secure; HttpOnly
# set-cookie: t=sea; Path=/
# set-cookie: DT=DI0fshqK0bJQfKEF2jmkQfBVA;Version=1;Path=/;Max-Age=7123635;Secure;Expires=Wed, 23 Nov 2022 06:17:49 GMT;HttpOnly;SameSite=None
# set-cookie: sid=""; Expires=Thu, 01-Jan-1970 00:00:10 GMT; Path=/


curl 'https://citrix.okta.com/api/v1/internal/device/nonce' \
  -X 'POST' \
  -H 'authority: citrix.okta.com' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'content-length: 0' \
  -H 'cookie: DT=DI0fshqK0bJQfKEF2jmkQfBVA; ext_name=ojplmecpdpgccookcobabopnaifgidhf; Okta_Verify_Autopush_511525830=false; enduser_version=2; _ga=GA1.2.274118758.1661050352; _fbp=fb.1.1661050355989.548418912; _gcl_au=1.1.2008029611.1661050709; _rdt_uuid=1661050708848.e7876030-9319-4791-90a3-31db4304e552; _mkto_trk=id:855-QAH-699&token:_mch-okta.com-1661050349401-67984; cb_user_id=null; cb_group_id=null; cb_anonymous_id=%228b7bf3cf-0a2f-4410-9896-8af618051b06%22; _clck=1x35y7o|1|f47|0; _uetvid=221914f020fd11ed9e6b21532b27ae13; t=sea; oktaStateToken=00vLPWjPVKu0OUDL9EdOGtf6ErMgFEd3AvUeIj5-qg; JSESSIONID=3EC6A11AC025E5F759C7617DC567D92D' \
  -H 'origin: https://citrix.okta.com' \
  -H 'referer: https://citrix.okta.com/auth/services/devicefingerprint' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  -H 'x-requested-with: XMLHttpRequest' \
  --compressed

# set-cookie: sid=""; Expires=Thu, 01-Jan-1970 00:00:10 GMT; Path=/
# set-cookie: autolaunch_triggered=""; Expires=Thu, 01-Jan-1970 00:00:10 GMT; Path=/
# set-cookie: JSESSIONID=581A64019EDA4CC68148A5D8462C58E0; Path=/; Secure; HttpOnly

curl 'https://citrix.okta.com/api/v1/authn' \
  -H 'authority: citrix.okta.com' \
  -H 'accept: application/json' \
  -H 'accept-language: en' \
  -H 'content-type: application/json' \
  -H 'cookie: DT=DI0fshqK0bJQfKEF2jmkQfBVA; ext_name=ojplmecpdpgccookcobabopnaifgidhf; Okta_Verify_Autopush_511525830=false; enduser_version=2; _ga=GA1.2.274118758.1661050352; _fbp=fb.1.1661050355989.548418912; _gcl_au=1.1.2008029611.1661050709; _rdt_uuid=1661050708848.e7876030-9319-4791-90a3-31db4304e552; _mkto_trk=id:855-QAH-699&token:_mch-okta.com-1661050349401-67984; cb_user_id=null; cb_group_id=null; cb_anonymous_id=%228b7bf3cf-0a2f-4410-9896-8af618051b06%22; _clck=1x35y7o|1|f47|0; _uetvid=221914f020fd11ed9e6b21532b27ae13; t=sea; oktaStateToken=00vLPWjPVKu0OUDL9EdOGtf6ErMgFEd3AvUeIj5-qg; JSESSIONID=581A64019EDA4CC68148A5D8462C58E0' \
  -H 'origin: https://citrix.okta.com' \
  -H 'referer: https://citrix.okta.com/app/citrix_splunkcloudcitrixsysmdca_1/exkvp6838nPMpNIA80x7/sso/saml' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  -H 'x-device-fingerprint: NNUzU50zupThu9S3cijeYFN8kJ7oVns7|388083e6ca0e5fe6a241e96f6e46b44c963667d04c16a34d7f2d5069d9549df3|8be1738f0696f544484a5c6f164dc2ab' \
  -H 'x-okta-user-agent-extended: okta-auth-js/6.5.1 okta-signin-widget-6.6.1' \
  --data-raw '{"password":"dummy$%^","username":"danielis","options":{"warnBeforePasswordExpired":true,"multiOptionalFactorEnroll":true}}' \
  --compressed


# content-security-policy: default-src 'self' citrix.okta.com *.oktacdn.com; connect-src 'self' citrix.okta.com citrix-admin.okta.com *.oktacdn.com *.mixpanel.com *.mapbox.com app.pendo.io data.pendo.io pendo-static-5634101834153984.storage.googleapis.com pendo-static-5391521872216064.storage.googleapis.com citrix.kerberos.okta.com https://oinmanager.okta.com data:; script-src 'unsafe-inline' 'unsafe-eval' 'self' citrix.okta.com *.oktacdn.com; style-src 'unsafe-inline' 'self' citrix.okta.com *.oktacdn.com app.pendo.io cdn.pendo.io pendo-static-5634101834153984.storage.googleapis.com pendo-static-5391521872216064.storage.googleapis.com; frame-src 'self' citrix.okta.com citrix-admin.okta.com login.okta.com; img-src 'self' citrix.okta.com *.oktacdn.com *.tiles.mapbox.com *.mapbox.com app.pendo.io data.pendo.io cdn.pendo.io pendo-static-5634101834153984.storage.googleapis.com pendo-static-5391521872216064.storage.googleapis.com data: blob:; font-src 'self' citrix.okta.com data: *.oktacdn.com fonts.gstatic.com; frame-ancestors 'self'
# content-type: application/json
# date: Thu, 01 Sep 2022 19:30:35 GMT
# expect-ct: report-uri="https://oktaexpectct.report-uri.com/r/t/ct/reportOnly", max-age=0
# expires: 0
# p3p: CP="HONK"
# pragma: no-cache
# public-key-pins-report-only: pin-sha256="r5EfzZxQVvQpKo3AgYRaT7X2bDO/kj3ACwmxfdT2zt8="; pin-sha256="MaqlcUgk2mvY/RFSGeSwBRkI+rZ6/dxe/DuQfBT/vnQ="; pin-sha256="72G5IEvDEWn+EThf3qjR7/bQSWaS2ZSLqolhnO6iyJI="; pin-sha256="rrV6CLCCvqnk89gWibYT0JO6fNQ8cCit7GGoiVTjCOg="; max-age=60; report-uri="https://okta.report-uri.com/r/default/hpkp/reportOnly"
# server: nginx
# set-cookie: sid=""; Expires=Thu, 01-Jan-1970 00:00:10 GMT; Path=/
# set-cookie: autolaunch_triggered=""; Expires=Thu, 01-Jan-1970 00:00:10 GMT; Path=/
# set-cookie: JSESSIONID=FD8507C7C4E87328B71FC439CA560C1C; Path=/; Secure; HttpOnly
# set-cookie: DT=DI0fshqK0bJQfKEF2jmkQfBVA;Version=1;Path=/;Max-Age=7123635;Secure;Expires=Wed, 23 Nov 2022 06:17:50 GMT;HttpOnly;SameSite=None
# strict-transport-security: max-age=315360000; includeSubDomains

curl 'https://citrix.okta.com/api/v1/authn/factors/opfwirxtbww7LwSti0x7/verify?autoPush=false&rememberDevice=false' \
  -H 'authority: citrix.okta.com' \
  -H 'accept: application/json' \
  -H 'accept-language: en' \
  -H 'content-type: application/json' \
  -H 'cookie: DT=DI0fshqK0bJQfKEF2jmkQfBVA; ext_name=ojplmecpdpgccookcobabopnaifgidhf; Okta_Verify_Autopush_511525830=false; enduser_version=2; _ga=GA1.2.274118758.1661050352; _fbp=fb.1.1661050355989.548418912; _gcl_au=1.1.2008029611.1661050709; _rdt_uuid=1661050708848.e7876030-9319-4791-90a3-31db4304e552; _mkto_trk=id:855-QAH-699&token:_mch-okta.com-1661050349401-67984; cb_user_id=null; cb_group_id=null; cb_anonymous_id=%228b7bf3cf-0a2f-4410-9896-8af618051b06%22; _clck=1x35y7o|1|f47|0; _uetvid=221914f020fd11ed9e6b21532b27ae13; t=sea; oktaStateToken=00JgEni9H-pxJhxnzRZNTitdNUgLE65wIrCOxWTdbj; JSESSIONID=94A86A5F9B55FAD180189A6B348FD1CD' \
  -H 'origin: https://citrix.okta.com' \
  -H 'referer: https://citrix.okta.com/signin/verify/okta/push' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  -H 'x-okta-user-agent-extended: okta-auth-js/6.5.1 okta-signin-widget-6.6.1' \
  --data-raw '{"stateToken":"00JgEni9H-pxJhxnzRZNTitdNUgLE65wIrCOxWTdbj"}' \
  --compressed

{"stateToken":"00JgEni9H-pxJhxnzRZNTitdNUgLE65wIrCOxWTdbj"}


curl 'https://citrix.okta.com/login/sessionCookieRedirect' \
  -H 'authority: citrix.okta.com' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cache-control: max-age=0' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'cookie: DT=DI0fshqK0bJQfKEF2jmkQfBVA; ext_name=ojplmecpdpgccookcobabopnaifgidhf; Okta_Verify_Autopush_511525830=false; enduser_version=2; _ga=GA1.2.274118758.1661050352; _fbp=fb.1.1661050355989.548418912; _gcl_au=1.1.2008029611.1661050709; _rdt_uuid=1661050708848.e7876030-9319-4791-90a3-31db4304e552; _mkto_trk=id:855-QAH-699&token:_mch-okta.com-1661050349401-67984; cb_user_id=null; cb_group_id=null; cb_anonymous_id=%228b7bf3cf-0a2f-4410-9896-8af618051b06%22; _clck=1x35y7o|1|f47|0; _uetvid=221914f020fd11ed9e6b21532b27ae13; t=sea; oktaStateToken=00JgEni9H-pxJhxnzRZNTitdNUgLE65wIrCOxWTdbj; JSESSIONID=946B92947DA3F8E9298F09343B7819E5' \
  -H 'origin: https://citrix.okta.com' \
  -H 'referer: https://citrix.okta.com/signin/verify/okta/push' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: document' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-site: same-origin' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  --data-raw 'checkAccountSetupComplete=true&repost=true&token=20111V_Ncit2oo5Nc4lE9swpSLYz1NupvsdVihE5CCaiTZmuKuUWzcd&redirectUrl=%2Fapp%2Fcitrix_splunkcloudcitrixsysmdca_1%2Fexkvp6838nPMpNIA80x7%2Fsso%2Fsaml%3FRelayState%3DcmV0dXJuX3RvPS9lbi1VUy8mdXNlcm5hbWU9JmFjY2VwdGVkX3Rvcz0%253D%26SAMLRequest%3DPHNhbWxwOkF1dGhuUmVxdWVzdCB4bWxuczpzYW1sPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZXJ0aW9uIiB4bWxuczpzYW1scD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOnByb3RvY29sIiBJRD0iQ2l0cml4U3lzLVNwbHVua0Nsb3VkLjMxNDEyNi40OTM2QTk1Mi0yODRGLTRFNkQtODU4Mi05QTNGOTZENzVBMUMiIElzc3VlSW5zdGFudD0iMjAyMi0wOS0wMVQxOTozMDoyOFoiIFZlcnNpb249IjIuMCI%252BCiAgPHNhbWw6SXNzdWVyIHhtbG5zOnNhbWw9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphc3NlcnRpb24iPkNpdHJpeFN5cy1TcGx1bmtDbG91ZDwvc2FtbDpJc3N1ZXI%252BCiAgPHNhbWxwOk5hbWVJRFBvbGljeSBBbGxvd0NyZWF0ZT0idHJ1ZSIgRm9ybWF0PSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoxLjE6bmFtZWlkLWZvcm1hdDp1bnNwZWNpZmllZCI%252BPC9zYW1scDpOYW1lSURQb2xpY3k%252BCjwvc2FtbHA6QXV0aG5SZXF1ZXN0Pg%253D%253D%26OKTA_INVALID_SESSION_REPOST%3Dtrue' \
  --compressed

# set-cookie: sid=""; Expires=Thu, 01-Jan-1970 00:00:10 GMT; Path=/
# set-cookie: autolaunch_triggered=""; Expires=Thu, 01-Jan-1970 00:00:10 GMT; Path=/
# set-cookie: JSESSIONID=90E2968AC99BB0167C81B1FD6097E9F8; Path=/; Secure; HttpOnly
# set-cookie: t=sea; Path=/
# set-cookie: DT=DI0fshqK0bJQfKEF2jmkQfBVA;Version=1;Path=/;Max-Age=7123635;Secure;Expires=Wed, 23 Nov 2022 06:17:57 GMT;HttpOnly;SameSite=None
# set-cookie: sid=102DAALf-i4RaGj_9ADZFmf6A;Version=1;Path=/;Secure;HttpOnly;SameSite=None
# set-cookie: t=sea; Path=/
# set-cookie: sid=102DAALf-i4RaGj_9ADZFmf6A;Version=1;Path=/;Secure;HttpOnly;SameSite=None
# strict-transport-security: max-age=315360000; includeSubDomains
curl 'https://ok2static.oktacdn.com/assets/js/jquery-1.12.4.03a2ff1c985b50426aa0a75f56ccabf1.js' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'Referer: https://citrix.okta.com/' \
  -H 'Origin: https://citrix.okta.com' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua-platform: "Windows"' \
  --compressed
  
curl 'https://ok2static.oktacdn.com/assets/js/app/sso/interstitial.474dce61acfac4a4d016921943cf2a68.js' --compressed

curl 'https://us2.saml.cas.ms/saml/sso_login_consumer?orig_consumer=https%3A%2F%2Fcitrixsys.splunkcloud.com%2Fsaml%2Facs&mcastenant=73556425' \
  -H 'authority: us2.saml.cas.ms' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cache-control: max-age=0' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'cookie: TiPMix=7.426079770518312; x-ms-routing-name=self; ARRAffinity=41d309d112d9619eff731ee0e7754a4dbb16d5927ac91727eeaefa9411f9fb4c; ARRAffinitySameSite=41d309d112d9619eff731ee0e7754a4dbb16d5927ac91727eeaefa9411f9fb4c' \
  -H 'origin: https://citrix.okta.com' \
  -H 'referer: https://citrix.okta.com/' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: document' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-site: cross-site' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  --data-raw 'SAMLResponse=PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48c2FtbDJwOlJlc3BvbnNlIERlc3RpbmF0aW9uPSJodHRwczovL3VzMi5zYW1sLmNhcy5tcy9zYW1sL3Nzb19sb2dpbl9jb25zdW1lcj9vcmlnX2NvbnN1bWVyPWh0dHBzJTNBJTJGJTJGY2l0cml4c3lzLnNwbHVua2Nsb3VkLmNvbSUyRnNhbWwlMkZhY3MmYW1wO21jYXN0ZW5hbnQ9NzM1NTY0MjUiIElEPSJpZDExOTc3MjYxNjA3NDE5NDUyMTE3MDYwOTk5IiBJblJlc3BvbnNlVG89IkNpdHJpeFN5cy1TcGx1bmtDbG91ZC4zMTQxMjYuNDkzNkE5NTItMjg0Ri00RTZELTg1ODItOUEzRjk2RDc1QTFDIiBJc3N1ZUluc3RhbnQ9IjIwMjItMDktMDFUMTk6MzA6NDIuNjgwWiIgVmVyc2lvbj0iMi4wIiB4bWxuczpzYW1sMnA9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpwcm90b2NvbCIgeG1sbnM6eHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIj48c2FtbDI6SXNzdWVyIEZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOm5hbWVpZC1mb3JtYXQ6ZW50aXR5IiB4bWxuczpzYW1sMj0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFzc2VydGlvbiI%2BaHR0cDovL3d3dy5va3RhLmNvbS9leGt2cDY4MzhuUE1wTklBODB4Nzwvc2FtbDI6SXNzdWVyPjxkczpTaWduYXR1cmUgeG1sbnM6ZHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkveG1sZHNpZyMiPjxkczpTaWduZWRJbmZvPjxkczpDYW5vbmljYWxpemF0aW9uTWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS8xMC94bWwtZXhjLWMxNG4jIi8%2BPGRzOlNpZ25hdHVyZU1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMDQveG1sZHNpZy1tb3JlI3JzYS1zaGEyNTYiLz48ZHM6UmVmZXJlbmNlIFVSST0iI2lkMTE5NzcyNjE2MDc0MTk0NTIxMTcwNjA5OTkiPjxkczpUcmFuc2Zvcm1zPjxkczpUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjZW52ZWxvcGVkLXNpZ25hdHVyZSIvPjxkczpUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzEwL3htbC1leGMtYzE0biMiPjxlYzpJbmNsdXNpdmVOYW1lc3BhY2VzIFByZWZpeExpc3Q9InhzIiB4bWxuczplYz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS8xMC94bWwtZXhjLWMxNG4jIi8%2BPC9kczpUcmFuc2Zvcm0%2BPC9kczpUcmFuc2Zvcm1zPjxkczpEaWdlc3RNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGVuYyNzaGEyNTYiLz48ZHM6RGlnZXN0VmFsdWU%2BRER0VENXQ3M0bXRNaHVkLzNVZGxPOGNMQTdBMFRDU04xb0xjWVoydllTYz08L2RzOkRpZ2VzdFZhbHVlPjwvZHM6UmVmZXJlbmNlPjwvZHM6U2lnbmVkSW5mbz48ZHM6U2lnbmF0dXJlVmFsdWU%2BbjRPOEtDWTE3OE5rOGdnZ2cxRDM4Z1R1d3dMRkRLcE50MEVjL0k5bm04OU9PemRMOTBqVmpXN01FYnI3QUxWN3VBd1phWENHRlNKeUIyZnZoOGdWNTlrN0EveCtvb2FNV0l6Y1F2M1laZjB5Q1JUaVhvd1VaNFBSdkdNL1dTYW42bit1L1JTZFdvaW14UEhuR0REajVtaEJSL0ZhaCtVa0xObVVoWmZweUpsUjNsSFd5YlBEd01McWlobjl2S2YrWXBjbzVOR2Q5WVFCMzV0UzdXNlRETXN4dmhwMmlmVFVzaGNJcnNIVWU0dG4vUkxrQUNrOVRQK3FVbjFlUUF5VEhTUGoxN1UvN21lSXBBWTg1RXRwZHhEMlloMVk3YnZvZHIzRUFUMzN4a3ZyUjRyVjBnbzFtQVg4R3l5aGZOVGNrM0Y4VzBsTThmQ21qTEdsWXI4REhBPT08L2RzOlNpZ25hdHVyZVZhbHVlPjxkczpLZXlJbmZvPjxkczpYNTA5RGF0YT48ZHM6WDUwOUNlcnRpZmljYXRlPk1JSURuRENDQW9TZ0F3SUJBZ0lHQVlGREcrU3dNQTBHQ1NxR1NJYjNEUUVCQ3dVQU1JR09NUXN3Q1FZRFZRUUdFd0pWVXpFVE1CRUcKQTFVRUNBd0tRMkZzYVdadmNtNXBZVEVXTUJRR0ExVUVCd3dOVTJGdUlFWnlZVzVqYVhOamJ6RU5NQXNHQTFVRUNnd0VUMnQwWVRFVQpNQklHQTFVRUN3d0xVMU5QVUhKdmRtbGtaWEl4RHpBTkJnTlZCQU1NQm1OcGRISnBlREVjTUJvR0NTcUdTSWIzRFFFSkFSWU5hVzVtCmIwQnZhM1JoTG1OdmJUQWVGdzB5TWpBMk1EZ3hNVE0zTXpCYUZ3MHpNakEyTURneE1UTTRNekJhTUlHT01Rc3dDUVlEVlFRR0V3SlYKVXpFVE1CRUdBMVVFQ0F3S1EyRnNhV1p2Y201cFlURVdNQlFHQTFVRUJ3d05VMkZ1SUVaeVlXNWphWE5qYnpFTk1Bc0dBMVVFQ2d3RQpUMnQwWVRFVU1CSUdBMVVFQ3d3TFUxTlBVSEp2ZG1sa1pYSXhEekFOQmdOVkJBTU1CbU5wZEhKcGVERWNNQm9HQ1NxR1NJYjNEUUVKCkFSWU5hVzVtYjBCdmEzUmhMbU52YlRDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBS2w1ekJxeVYzLy8KK2xST2pDVHpyZjcwMERNSDR2ZzIyU0ZWbmZvbW9iYWlRR21WYTJJTit2NkJVTjlFaXhGUkw4TVNMUzR0ZzVYZ1BiOWlVZ2kzMjErUgoxQitpNk0xSzF0NFdHcE9Jb3dvc2NDalVETkMxeTFHSTR5VHE4MXdJa0tza2VXWjMzdGdLSmp6NmxCalkwY3pURmluVEZ2aGtSTlc4CnJBaXlYTkpRTzk4aUZSVTN1NHo2bEVsdmpRSTRQR3RKRzZZZjR2L2NnK0FmQ0JuVGRvVi8xQk54aUdkUnZ5Ny9BREhNcFFEcEg0SGIKSDJ4U2RTVHk0NmEyN0hreFk4V0tLcFJlRUVLd3JoMS9yY3g1WTl4Sy9WUGdUWml0VFBUMEZRYitTK29hUU9hSXltTVFhbTVmenQ5MgpxQTNub0FRdHVtVTBQMWRiVTZ1RGhVMTJPcmNDQXdFQUFUQU5CZ2txaGtpRzl3MEJBUXNGQUFPQ0FRRUFpQTlEVTJhM3RLUDVaN2tFCklUVW0rNk04bXFVYkEwVWc4K0pYMHJFNzhrWVc0V2pXYjNxeDdjRXk0NnBDZ3VyN2Q4R0NTeU81dzJjZzdxNVJ3enB1U21yZ0NZb28KMENsYTZaMWtrdXovK3BOQTVscHNUL29oMGg1NS8zalRDcld6Sy9YYWJubnRlMEZRNlV6ZWxMR2hraTFldEtpY3dVUjU5TGM2cXM3MApETmE5dkVidXhHS0VOZUhmN0llekQzSHJRU29IbnlkYnhVSnZhWmt2MWNOLzBCekpWRlNxOVB2clJiNWdVR3RXdUJUcXVHRzZIbXNYCm5KVFhyRHlRZnIya3BMbVFJWHI3TlBKczB6QWM1UDdQbzlOOEt5QzFVZFBVWFlXVFNqREVVOGY4SnBscVJXSzlGVlJBanNpUXd0QloKcW11WFd6c3ZSdFJFeEZhYi8wV21rZz09PC9kczpYNTA5Q2VydGlmaWNhdGU%2BPC9kczpYNTA5RGF0YT48L2RzOktleUluZm8%2BPC9kczpTaWduYXR1cmU%2BPHNhbWwycDpTdGF0dXMgeG1sbnM6c2FtbDJwPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6cHJvdG9jb2wiPjxzYW1sMnA6U3RhdHVzQ29kZSBWYWx1ZT0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOnN0YXR1czpTdWNjZXNzIi8%2BPC9zYW1sMnA6U3RhdHVzPjxzYW1sMjpBc3NlcnRpb24gSUQ9ImlkMTE5NzcyNjE2MDg5NjY1Nzc2ODMyOTMwNyIgSXNzdWVJbnN0YW50PSIyMDIyLTA5LTAxVDE5OjMwOjQyLjY4MFoiIFZlcnNpb249IjIuMCIgeG1sbnM6c2FtbDI9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphc3NlcnRpb24iIHhtbG5zOnhzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSI%2BPHNhbWwyOklzc3VlciBGb3JtYXQ9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpuYW1laWQtZm9ybWF0OmVudGl0eSIgeG1sbnM6c2FtbDI9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphc3NlcnRpb24iPmh0dHA6Ly93d3cub2t0YS5jb20vZXhrdnA2ODM4blBNcE5JQTgweDc8L3NhbWwyOklzc3Vlcj48ZHM6U2lnbmF0dXJlIHhtbG5zOmRzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjIj48ZHM6U2lnbmVkSW5mbz48ZHM6Q2Fub25pY2FsaXphdGlvbk1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyIvPjxkczpTaWduYXR1cmVNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNyc2Etc2hhMjU2Ii8%2BPGRzOlJlZmVyZW5jZSBVUkk9IiNpZDExOTc3MjYxNjA4OTY2NTc3NjgzMjkzMDciPjxkczpUcmFuc2Zvcm1zPjxkczpUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjZW52ZWxvcGVkLXNpZ25hdHVyZSIvPjxkczpUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzEwL3htbC1leGMtYzE0biMiPjxlYzpJbmNsdXNpdmVOYW1lc3BhY2VzIFByZWZpeExpc3Q9InhzIiB4bWxuczplYz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS8xMC94bWwtZXhjLWMxNG4jIi8%2BPC9kczpUcmFuc2Zvcm0%2BPC9kczpUcmFuc2Zvcm1zPjxkczpEaWdlc3RNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGVuYyNzaGEyNTYiLz48ZHM6RGlnZXN0VmFsdWU%2Bd2E2NDN6UHZITy9RODd4MnJPT2gvaW9WdHIvSXJqMy90c0ttc2ExM3BZcz08L2RzOkRpZ2VzdFZhbHVlPjwvZHM6UmVmZXJlbmNlPjwvZHM6U2lnbmVkSW5mbz48ZHM6U2lnbmF0dXJlVmFsdWU%2Bak1YVHZmQll5cUtHR0pLbGJPQmNuWFp2Sm9JL1d3Si9NZ2tjTVlnNzNzUXF2MkNVTzV4am1uS0pxY0NiZTRjV21QVnNINGtEcHBYdDc2d1NzK0lWbVpQcEN6WHRlVkE4MUlETCtIdDJYYVpHOW5mYk9XMGJCMTFXNTU4aUJKZStHZmhFNkh5TkZ6RjJRUWwxQlRIc3NJZUYwWGFFeDY5R2gyZmNLWFVoMmUzc3NTRkgxU3MvUkY1eW9BRTIvT0RwVElyUkJzdlBmeW55eHZKWFI1TmgvdDE5bFdSdEdlZldSNnhZeGFxMTh4ZXJ0MUZnc2N1MDBuTmpKaHRlNTZ4LzhnVlkwNTIwY1NPSjN2NXQ1NG00THU1MUQ4UGhMZWhwc01OdWFpb0hhcEkvRWJYckxheDdrbVNwTFpsWSsrQkRtV2dXLzBvRGFiOElmeXc5MUJ3QTdnPT08L2RzOlNpZ25hdHVyZVZhbHVlPjxkczpLZXlJbmZvPjxkczpYNTA5RGF0YT48ZHM6WDUwOUNlcnRpZmljYXRlPk1JSURuRENDQW9TZ0F3SUJBZ0lHQVlGREcrU3dNQTBHQ1NxR1NJYjNEUUVCQ3dVQU1JR09NUXN3Q1FZRFZRUUdFd0pWVXpFVE1CRUcKQTFVRUNBd0tRMkZzYVdadmNtNXBZVEVXTUJRR0ExVUVCd3dOVTJGdUlFWnlZVzVqYVhOamJ6RU5NQXNHQTFVRUNnd0VUMnQwWVRFVQpNQklHQTFVRUN3d0xVMU5QVUhKdmRtbGtaWEl4RHpBTkJnTlZCQU1NQm1OcGRISnBlREVjTUJvR0NTcUdTSWIzRFFFSkFSWU5hVzVtCmIwQnZhM1JoTG1OdmJUQWVGdzB5TWpBMk1EZ3hNVE0zTXpCYUZ3MHpNakEyTURneE1UTTRNekJhTUlHT01Rc3dDUVlEVlFRR0V3SlYKVXpFVE1CRUdBMVVFQ0F3S1EyRnNhV1p2Y201cFlURVdNQlFHQTFVRUJ3d05VMkZ1SUVaeVlXNWphWE5qYnpFTk1Bc0dBMVVFQ2d3RQpUMnQwWVRFVU1CSUdBMVVFQ3d3TFUxTlBVSEp2ZG1sa1pYSXhEekFOQmdOVkJBTU1CbU5wZEhKcGVERWNNQm9HQ1NxR1NJYjNEUUVKCkFSWU5hVzVtYjBCdmEzUmhMbU52YlRDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBS2w1ekJxeVYzLy8KK2xST2pDVHpyZjcwMERNSDR2ZzIyU0ZWbmZvbW9iYWlRR21WYTJJTit2NkJVTjlFaXhGUkw4TVNMUzR0ZzVYZ1BiOWlVZ2kzMjErUgoxQitpNk0xSzF0NFdHcE9Jb3dvc2NDalVETkMxeTFHSTR5VHE4MXdJa0tza2VXWjMzdGdLSmp6NmxCalkwY3pURmluVEZ2aGtSTlc4CnJBaXlYTkpRTzk4aUZSVTN1NHo2bEVsdmpRSTRQR3RKRzZZZjR2L2NnK0FmQ0JuVGRvVi8xQk54aUdkUnZ5Ny9BREhNcFFEcEg0SGIKSDJ4U2RTVHk0NmEyN0hreFk4V0tLcFJlRUVLd3JoMS9yY3g1WTl4Sy9WUGdUWml0VFBUMEZRYitTK29hUU9hSXltTVFhbTVmenQ5MgpxQTNub0FRdHVtVTBQMWRiVTZ1RGhVMTJPcmNDQXdFQUFUQU5CZ2txaGtpRzl3MEJBUXNGQUFPQ0FRRUFpQTlEVTJhM3RLUDVaN2tFCklUVW0rNk04bXFVYkEwVWc4K0pYMHJFNzhrWVc0V2pXYjNxeDdjRXk0NnBDZ3VyN2Q4R0NTeU81dzJjZzdxNVJ3enB1U21yZ0NZb28KMENsYTZaMWtrdXovK3BOQTVscHNUL29oMGg1NS8zalRDcld6Sy9YYWJubnRlMEZRNlV6ZWxMR2hraTFldEtpY3dVUjU5TGM2cXM3MApETmE5dkVidXhHS0VOZUhmN0llekQzSHJRU29IbnlkYnhVSnZhWmt2MWNOLzBCekpWRlNxOVB2clJiNWdVR3RXdUJUcXVHRzZIbXNYCm5KVFhyRHlRZnIya3BMbVFJWHI3TlBKczB6QWM1UDdQbzlOOEt5QzFVZFBVWFlXVFNqREVVOGY4SnBscVJXSzlGVlJBanNpUXd0QloKcW11WFd6c3ZSdFJFeEZhYi8wV21rZz09PC9kczpYNTA5Q2VydGlmaWNhdGU%2BPC9kczpYNTA5RGF0YT48L2RzOktleUluZm8%2BPC9kczpTaWduYXR1cmU%2BPHNhbWwyOlN1YmplY3QgeG1sbnM6c2FtbDI9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphc3NlcnRpb24iPjxzYW1sMjpOYW1lSUQgRm9ybWF0PSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoxLjE6bmFtZWlkLWZvcm1hdDp1bnNwZWNpZmllZCI%2BZGFuaWVsaXM8L3NhbWwyOk5hbWVJRD48c2FtbDI6U3ViamVjdENvbmZpcm1hdGlvbiBNZXRob2Q9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpjbTpiZWFyZXIiPjxzYW1sMjpTdWJqZWN0Q29uZmlybWF0aW9uRGF0YSBJblJlc3BvbnNlVG89IkNpdHJpeFN5cy1TcGx1bmtDbG91ZC4zMTQxMjYuNDkzNkE5NTItMjg0Ri00RTZELTg1ODItOUEzRjk2RDc1QTFDIiBOb3RPbk9yQWZ0ZXI9IjIwMjItMDktMDFUMTk6MzU6NDIuNjgwWiIgUmVjaXBpZW50PSJodHRwczovL3VzMi5zYW1sLmNhcy5tcy9zYW1sL3Nzb19sb2dpbl9jb25zdW1lcj9vcmlnX2NvbnN1bWVyPWh0dHBzJTNBJTJGJTJGY2l0cml4c3lzLnNwbHVua2Nsb3VkLmNvbSUyRnNhbWwlMkZhY3MmYW1wO21jYXN0ZW5hbnQ9NzM1NTY0MjUiLz48L3NhbWwyOlN1YmplY3RDb25maXJtYXRpb24%2BPC9zYW1sMjpTdWJqZWN0PjxzYW1sMjpDb25kaXRpb25zIE5vdEJlZm9yZT0iMjAyMi0wOS0wMVQxOToyNTo0Mi42ODBaIiBOb3RPbk9yQWZ0ZXI9IjIwMjItMDktMDFUMTk6MzU6NDIuNjgwWiIgeG1sbnM6c2FtbDI9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphc3NlcnRpb24iPjxzYW1sMjpBdWRpZW5jZVJlc3RyaWN0aW9uPjxzYW1sMjpBdWRpZW5jZT5DaXRyaXhTeXMtU3BsdW5rQ2xvdWQ8L3NhbWwyOkF1ZGllbmNlPjwvc2FtbDI6QXVkaWVuY2VSZXN0cmljdGlvbj48L3NhbWwyOkNvbmRpdGlvbnM%2BPHNhbWwyOkF1dGhuU3RhdGVtZW50IEF1dGhuSW5zdGFudD0iMjAyMi0wOS0wMVQxOTozMDo0Mi42ODBaIiBTZXNzaW9uSW5kZXg9IkNpdHJpeFN5cy1TcGx1bmtDbG91ZC4zMTQxMjYuNDkzNkE5NTItMjg0Ri00RTZELTg1ODItOUEzRjk2RDc1QTFDIiB4bWxuczpzYW1sMj0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFzc2VydGlvbiI%2BPHNhbWwyOkF1dGhuQ29udGV4dD48c2FtbDI6QXV0aG5Db250ZXh0Q2xhc3NSZWY%2BdXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFjOmNsYXNzZXM6UGFzc3dvcmRQcm90ZWN0ZWRUcmFuc3BvcnQ8L3NhbWwyOkF1dGhuQ29udGV4dENsYXNzUmVmPjwvc2FtbDI6QXV0aG5Db250ZXh0Pjwvc2FtbDI6QXV0aG5TdGF0ZW1lbnQ%2BPHNhbWwyOkF0dHJpYnV0ZVN0YXRlbWVudCB4bWxuczpzYW1sMj0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFzc2VydGlvbiI%2BPHNhbWwyOkF0dHJpYnV0ZSBOYW1lPSJyZWFsTmFtZSIgTmFtZUZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmF0dHJuYW1lLWZvcm1hdDp1bnNwZWNpZmllZCI%2BPHNhbWwyOkF0dHJpYnV0ZVZhbHVlIHhtbG5zOnhzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgeHNpOnR5cGU9InhzOnN0cmluZyI%2BZGFuaWVsaXNAY2l0cml0ZS5uZXQ8L3NhbWwyOkF0dHJpYnV0ZVZhbHVlPjwvc2FtbDI6QXR0cmlidXRlPjxzYW1sMjpBdHRyaWJ1dGUgTmFtZT0ibWFpbCIgTmFtZUZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmF0dHJuYW1lLWZvcm1hdDp1bnNwZWNpZmllZCI%2BPHNhbWwyOkF0dHJpYnV0ZVZhbHVlIHhtbG5zOnhzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgeHNpOnR5cGU9InhzOnN0cmluZyI%2BZGFuaWVsLmlzYWFjQGNpdHJpeC5jb208L3NhbWwyOkF0dHJpYnV0ZVZhbHVlPjwvc2FtbDI6QXR0cmlidXRlPjxzYW1sMjpBdHRyaWJ1dGUgTmFtZT0icm9sZSIgTmFtZUZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmF0dHJuYW1lLWZvcm1hdDp1bnNwZWNpZmllZCI%2BPHNhbWwyOkF0dHJpYnV0ZVZhbHVlIHhtbG5zOnhzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgeHNpOnR5cGU9InhzOnN0cmluZyI%2Bc3BsdW5rX2NjX3VzZXI8L3NhbWwyOkF0dHJpYnV0ZVZhbHVlPjxzYW1sMjpBdHRyaWJ1dGVWYWx1ZSB4bWxuczp4cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiIHhzaTp0eXBlPSJ4czpzdHJpbmciPnNwbHVua19uc191c2VyPC9zYW1sMjpBdHRyaWJ1dGVWYWx1ZT48c2FtbDI6QXR0cmlidXRlVmFsdWUgeG1sbnM6eHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB4c2k6dHlwZT0ieHM6c3RyaW5nIj5zcGx1bmtfY2FzX3VzZXI8L3NhbWwyOkF0dHJpYnV0ZVZhbHVlPjwvc2FtbDI6QXR0cmlidXRlPjwvc2FtbDI6QXR0cmlidXRlU3RhdGVtZW50Pjwvc2FtbDI6QXNzZXJ0aW9uPjwvc2FtbDJwOlJlc3BvbnNlPg%3D%3D&RelayState=cmV0dXJuX3RvPS9lbi1VUy8mdXNlcm5hbWU9JmFjY2VwdGVkX3Rvcz0%3D' \
  --compressed

# content-encoding: gzip
# content-language: en-US
# content-type: text/html;charset=UTF-8
# date: Thu, 01 Sep 2022 19:30:43 GMT
# request-context: appId=cid-v1:07b59c1f-56a4-4c00-91ac-a62f8fb8924c
# vary: Accept-Encoding
# x-ms-request-id: 075d5083-103c-4bd5-bd44-5f64e164cee2
# x-powered-by: ASP.NET

curl 'https://access.mcas.ms/login' \
  -H 'authority: access.mcas.ms' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cache-control: max-age=0' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'origin: https://us2.saml.cas.ms' \
  -H 'referer: https://us2.saml.cas.ms/' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: document' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-site: cross-site' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  --data-raw 'json_data=casBGXByb2QwMy1zYW1scHJveHktMjAxNzExMzBbFTJpnO9cB36KDzmH8lYJABOMJdbQtwh4iGBMlEvELA%2FoPb4RVcKV7QU1%2B3sN0N9bRBDsH6UmCuMTnsmlsOj4lyAAFOXrzjLOG%2B9R5Em%2FQWoBcg9UPH%2Biipm9TtiPFJTGDrL4NDXZV6JR%2Bbl2RWA1RmNPecgOJp%2F0Pc9gRxvgWDIbe06Sp7eBylUfKkHcVtHIhzjtm2JptygEW8tq1RwP16c0owmwmfUqtOoYTpywEktuv0HqNYqYkZ%2FQLlHYe22kqSn8cKNJ5ldQ0ln92yokyHrzjrQ%2Bzumw87mx7DWc5RDs%2B2vIgmyPZ69bjEBUvRLo7fTpPQZap2WhL9VS89Sq0XPxO2B9exh%2B79N4IrZLRcsc247EQHOeP4zpXfDvfldCWmtYqecrTrbG7dVbpX5TIXp0y654OKa2%2BRADfa3od7H0e%2FHLheBbQM0yIe%2BkAa8T182K8tZ09%2BIeo6bBs9WicHsKsu7%2FCDxNQGaKAIauhFYyd7Satmy8YO03W0cQufhlgW8ekQXvSOrgWTjoNyPq2n2PMTsZtRBSyxUQ8JL9bX9ulG3zmc%2BYhzuchdVYCvRKalB8y%2BG6QTY9hB%2FVW8kxrh3ENSWzdIfFuM%2FjpTNyd%2Ba5F0c73DBEHoPP4YqM4P4z%2FjgK%2Ff4tZa%2Bx2tN6yoyE%2BzRB%2B58guBMlrWQ%2B8hceTxcdnQ8sDi8fxTphBR%2FSN9mA4RCqomHOp8gxT%2B1iI%2FVQSzD4WjzcLrJnj4t0HIrKpsK%2F8cKFYTiFB%2B%2FdI0gH%2BW7iScMzyUobGPkBAw8IgV3pKiu3EyHcVdYBpDk9BjomsoYQ8xB2z2MILTV%2Fyi1Kai3v2zc4RoZ74gykNzxd9VRzLvdZ8GZlZcSyCc4D4G%2FD9AjOcQe2WoZtJ1svS0r8yQoCygDTqNxmbI9iX8UQcRISXAUreBdmuDBlitfyNbkbnA%2FIj60Q13gTMEZcjkGvQ1j0pz%2B6SfcuJw6yXJP172Lud%2B3roJsmQtgIQ0s1QFwnr1p8aY8phKwgIKFETFFz%2Bd0Lya69neDh3eBF9KrTBXauYBnQ8%2FloNwmev2G%2BwaDSCdiHrFEcrFU2VXagnGjmzSiILjWDn%2FIVOmCfd1I%2Fxuk6dphfZwNCcElAqYK%2Bnd6fM2SWwVEn0CBoeYvbTIIZ8oHYlie27IF3AEVqud%2F3DwW2bB8A0lpDJWK1P7%2BTcv%2FZcW5LtMkNfJP1Z2xvBstfAg0GnRD7dAMWf%2F9fQosn64VJiqTV55p%2BzsuO5N2XIKD4sXfUBp4DoA3zTTdFb6DI45teZ%2F9R3%2BD0hWeTSqncTAC5Bha2sh7GpdVhBi78LU1JPsbmFUnrleb%2BjS8fIcLaa550fFVfrumNE00CkUMRCLBW2fA23uk5Ww5iKYUpfbfsQQFdlfn3ocsEtaFXUq1674pjNTGuIHtV0hQdgTUaIr6Z0US0bTybbzGcyXqrgRfyYnzZoaBnhrqYYiy5ndG9lYeyPWUytLc8NfPd4ce2O49mf5g44ReRqEyFc1lGRrp9h%2BhTYOwKO5W%2Bk9Y0UhjHVSEThUIw4hNRqIMo3NB3t5grtxSBrgpgB1X6OIncdy2kWsz06vX6mntg%2B15zh2Y%2BioynuL6pEiw8PVQM%2BEHv3zCyUQCL31wSaGGzVn8QKxSrFviHDKtvDKhYww9uWzPaX8Pe4dLKGBAeAI71rvfPVPyHZ9jRofibVbwWuc0UE4uiJVZkkzy1C23AOzfEEwfST%2Bcc8WFal3dp3IcBcSmW3SMVfB7ubyhRXQmEckQCss2KhzjPG6BD9QYhA10Km4Df5MmlKathqvcXenQNJHuhaYcjN7yy9y3BhdP%2BIbBgYtGR%2F%2FoToKS1hn%2BakfsUJYWtgy8nmRkMBOOGH%2BGOksZqSR129mnbi2AI7jRYReBDqnO0xek0Q3WogEvHJ7ePeT73doexjClUHTsRNHH2quE8uPpLZgfs0aInTI8Gpcx2hkQBEgIekBKVk4SdbqsDOreInQWQj48wC0vRYPpdBPK0sxx1imyxJai4GoarSqM4HVQAD5SSw7QWyaxEtVxiAOw9A7SB%2BCyDuZGibPrqIw37h0Sql1cHSJDdLDk0nRUyId%2Bcm17zgefkFcKUM25oYlKnSIvVlKLlwM0%2F2koOaMlXM3XGNUjU8NMz0qzlYAoHmZCcd%2F1w%2FuBZCTMMZjVxDR7SE3NOnrbyp6E5wUityIHFGePHEILGA65Wlsan95vSYbuQc8xWk586MxGtOTsOvEoWygk5qN5tkW7Dt8aC5UlKYqnF80Nvhqm6fEQPbPZxNMHYy%2FR7ZVlG%2FulT7MBzTdmYHj0UHBqtvXyVOyOUPD0NrjpoUJBgdm7lAQTN4UqvXZ8VXVAzP5JIKFptHg%2F%2BTkex%2FIu84nRqKijpaOJ99TWEPtbrO%2BCx4bUw4iNE9RiiaZQWDkCfJnxEwaFx7BqCywl6qNYm1dsbNeu2im99xQVl9fGlVTZAW4LfTSuEcI%2FGIU1atPqOcapxH%2F0KMEYWnHQIDBxP3ZOMnPz%2Fe%2B6ernfURA1MvZHqOkL3nTXJahGLZkICfgj8zwjstEh2FiEBNN2lQ06p%2FQiHYwIVTrI0orX1DrBbepHa8QMSpR8gz4%2B08UaGg4as9S9L%2B73K89dhcXYFtOoDjMg0uUn6WxdYp2dxIACgHJ1NxHfYR6Ybo45zih79cbb725ycFnwhcLi6jMH5oNCZrFDlzIOSldCs2moVw2IlgcsZpEDP9G3hqfDM4KHFpKRQ5fk%2BX14UNBXU2Y1EeWSN8RGQFcGH8CgcwpwqlPOYj5h3eGwuRPglvojEcVchIjFca0ziKu1D4iYyZUV3JoC74mWhwvl76Lt20Den2ZFIWTbY7hN1rEu%2B%2B5zWacc5tMJMat7kcQiA9he3R94HFVfhCfmhyFwuoh7%2B8M572mieGz4pVJ%2FzYy6BLjpkOKKeg0pl4GSuFx4ZyL%2FavwVhMPdLwzlqXPed6hU44JPZHBsWSKkshKoC22aZu0qxXv7zxPLDOe%2BKEMtNB8sEkCQoIEQ0H35ToriIsxSCxFZvOHRw0Va20x2yAcUVsQ076B0EkxiJC3eWBOPTJceqQVMxVmErChG96QVkkSG2tPaaJIiXWcwLcW2PJWWN6p3lvTOjFZ04vg2c1VIVzgZ6MwIJC5651L94TRCBlpaHwbl0PEg0jFOZ6uc%2BFr0vkbx13scgFLy1EBT4uepitsQSNMh%2F147Mo%2BYaURemQ%2FjmWElHz00k0bD%2BrizN9g2Rx0Yx%2FD5TDaZKwVuU4dfYWrkwk%2B2g8Uvrz3TfCFvyvwPc4IZlVruIoK25ydr%2F9uPRFnYTzDPPmA%2F1t%2B%2FbGTyLsO3BKZfjKE%2BMRXFcCP3yBfMNPib0eh92F4%2FJKfb0J%2F7MH5knmG46%2FUyhnWzQ2ZfsPNJjYDGQHxkMXYNsl0aKWLKe%2Bsh9m13sWsNcog%2BOPIz5IPM9QzVz%2F7T1GFUE1x2o%2FIOUC%2BJDe08tWCfw6rTi5Cz%2Fr9dRs%2Fr5D4YFfdV2Y5%2BL%2BRteVkvJKb6ciKRC0fPiLHt7OZEX408%2B%2BPUnfAt%2BrzeZ8G00OL689%2Bz%2Bc8v7SObxGVaYFsN0%2FU9p%2BMt9PYzVOTm6sbagt%2FUZm5OD8UUXthMT16UqUXLPB%2FXOfD%2BpeWW1TFF%2BRGIV46Wxor%2BtMZnm7a3kZa2uHOAeag%2Bv6cYdLl7m7ZzhbvlZYNID1ErmTYdE0uNLvo67EUNaCOWn0ilWxe9ND67ucHl%2FI2ZT2xmCX8FwF%2FOmsThJVcUWXbaq1oAuLxGEeqwW1n92I7zL%2FR1%2BoDVDCBlFJAAivcFQv7gENAdCvUxMr1nJqZBhmiuC8w%2BiOHvvrg5gk9F9U5gnP7mT1CBWFdkfcUpNSTwv9e5oXn3gepwN%2FH0ovuA40GFeqtakpMc5MpRqvvuuH4aYDZ7l3WTVBV2JxZGcbiUSyT%2FYmROCbu34qakdDTqR6wvhCnxIbaYReOgikpi218fuWRzP1E24lRHKwpc4BDPZV73NWyk78WkHqO1KaHt%2B9p%2BNSrIsX1ZcqnTNFte046lwJU67sGrHUsDBJp6OnJs5eZC82xEGMvwPAU10xkTvHiu73GikhJFVQ4Y1ksCl4Aw5l1f9DqWEyp39xe%2FPDpXFEIfJZxKcx6gagFUJt4EYRiksXViWpU%2FFiM9ej9jbEn7m9uvh0e7EJIPRK1WRKkvr1Db1Q%2BUBchnm8j6g7oJ62CUFC9wHMZuvTvYa5curQYAp%2FXAskFi35Fx1P0h7P%2Fy4ZeuE6Np5VHtxdGNV1fm0XAJyAt42%2FEi53eGHDlhs5RFXIyQ1JgX4np2C3%2FG%2Bz5EzzGE5xCA80W1cCZ7tO94SmFl4ZwOCWXPWchxcBvlyF6Mc2%2FUnj0c5FQSrUrv0i5P9d7f%2FLvUKpNrG0Dq8Yx4mnNWP4cG%2FkF7ltuppRV1vyqZg0U%2B%2BaSWV8OTgnWr4b6zzVYi%2BiVUwuHzfKgd%2BvgXNcofonVyWS2tmf8sLXHqVE4ydjUhzQis68s3fF7ZW2VbK%2BEe83lE7qz7XQhsSk5zrzC0t7AIuLDbLtAbnkAS46m%2FFXQ1g2o89xJHtv%2BiLNlyeI%2FFghbNU8FWo%2FZYT2XyIyfOUbHsIHkZLGyFBHqL7DS3UXfW6wyvCIw8mvPgKOsBF1Qn1zAG9ObVCyBOHQslJ9qzcIGtGBd4lM7%2FcOB2Krb39P7lDRQ0XPg1lNCgDGwl4%2BDyXtUjRe4uPBCriNLaEM23iRNKtkwb3Rwc4gu6GCMyUblztD2Br7nfQXx5TW2uVcUYJMq1U%2B7JGZvsnnuXalhLL4YM0sLF0g62jGQAB319sBhP5Gb88iTPJfh%2BBLDk1encwzeUFOWqdq6woHQ3IFkLVK%2FTs17Xaqa%2BlQXZk5XDU1Yv5cgeCqtuCHNDQUXVwa91otCbPiXJ8CCcDDWPf4JQXBD2mqRlab%2BMqGp0NBiMUFjKIUasT9RzboVzZJ98ljGjdVRjcclyuT03nWJROVvlwm08ULefNbtEK9Ve5XLBBwE5XkDn5jQGqVxcJ5KlmB%2BSvBa3ZwEHwfpuiteY3RgyvIru4qFatZDouSINIg4rR1%2B1RKR1GwD6DhrbwG7tE1G8%2Bj3sFIsbhtQpuHlbCD7PDU3H6Z26qSthy2HAvz7wcfV4VH1nwn%2B6qRCivonyyap5Vnv1RI1L%2BRIRLOQ%2FSLsMUtqNtlrfdqpb1s1gAzWegE%2BDWPnw0jNB7TJr96GIzwUXUt8yl1aSs6p7dSGSiUpiVvbwwIRJF%2B5AMj5H7Ru0RTfbLk7Nw%2BTdnVBo8Ne5ox6edR6qDFRL4Gez%2BAgK3oIh8vZm3aLKQvZkupVIJwcHz34Xw%2Ftb9euvJ11dBY%2B8Fhz5Co5oJbQ%2FhCP6DFD9hTZZsvwbByR36KuMLFOJ1IaIHTi69qV6KmfyJ8D6joI6eUAIw2xMylcJfHpB5qz4%2FUeOCcSDEqmgctXIMx2uOchYWtWtvmE5qwnGv%2BE2gUAyMwBAgSK6%2BfF5EaU1wrV1z8LgCaBNN3Waj92IbKQUiZR1JEiK7c%2B2i9SZGJgS2k04pzT6J8zsrvrgvehxJJfl33%2F4l7RXlQp8a%2Fotqc9dNzOLsgRE9yQCdQkgjVFG6fuM6ZciwJyXUR21AjFzi0T6F7URTDP8cBoxYPUxExBm4sa5gzm0uEVM1%2F1yaRjoxOfMEwdXwzhcR8J%2F06ndzkt2on7WLNBM8Kn44m%2BV2eDPppBWd6L0JBfGHPMFZtttDf1TfrEbZTeUX8clklWq6635bDOXqgosoT2ZuHtZzdgWUFjyhuYw3gjOOSPJcz3E1CuIP7gl%2F2xVnaeKJaOfa6ICPfctBnBVakyL154EZQWV3TWMVQlGxPG9MVJeQ0Xm6bDbvMOxYqI6kgHClLCHVBPNM6vv4DkOrainGMAJVB9F3N2%2FtIOnFlokn9p27pWZB2DqW703GLQSTxUJuubdaXfAOJg88C79Yjqp7jwTI6Zwp0Pr7aX%2F0Xinry3r9EIbc8mN2mbusi7Ua2LtUtBkpr3E0BAIj6X0iM8k8qgX5X0ceRpfQQ6h7SOE1wo15MuCrivh466NW0kW20tnWPpMBKl68v77GzpcEHhzJ%2FeKCnSvOyDmAbFWIIhiHuS0mDerbjXHrZ5h45lzrudjVdlL%2FV7%2FwpjKoyDSurXnP3x%2F35mQa%2Bw7O4Y%2BEnbfl47M5SX2mzyJz6A5rQI5Jfgj0gVOL86PyvoXjiKI8T56AiHjMceK3PkXOZ42H2Fz48ChtYo4UOy8j4u%2FOkPlpGwY2XOW8qa80hMG%2Bl7N0yH6l3McCCXlLyWOWy%2BgSj9o%2BCJcAPBA0A3kL63F3BKO%2BfuFWxZLQeaS4VYijhMZY7i%2F04longAnZo%2B%2FUD3xJbsllZJI1hAVuZC6IGhqB%2B4ICWsywXNN%2BUGrbP1tY0UVog0lQilRE5%2BIafx%2FSIK9auE%2FawpTYri5MWCJrI4IwvPgsXK0WE%2FKwQgXlw8l4XVtROv%2B7e1RmsqILrLJtfk8KAO6AW%2FtubcTWgkrK%2B6NQfpVus%2FEtLtxwZhsykmGAGeWoBa0wp%2Byb16CI%2BeEZidXrqXi8iVVL6HBNprGke1BQmO9BASet3KJOOf2xMy7JCZvPoGldZ3nhlHftA7ywPfydibx2dvnjnpI9MTxRS8M9u0zc63bxpAT5B%2B3WAPrBE90dEMrBX7c9j3HlACgPIN1MV%2FVVMjbnlmXlNKSk530rmVYD8sp5mE%2BP5stb2mwILkL%2F%2FMqtvNH4wDRXtkfYDa3bXUDdaHyncQ7rd81SBEnjsTj0krgKaNxByPOd6EHJGMluUxIW0dHE42knOlyT7sWj6Cy1fpp2EBh2is7yhkRutOqW9RAOUXw74UeE8hG4tufiTRaGgY9BCJk4j44iWYGNeHDYf9V0lB3m46Q7byZE42PsGxOhUbWF9TmsDII4K2FAv0JLWayFabD1PSiLGoQT4PVNgkpDkPc9ww1WPOTZ6KJndpzU3WfjYc92PL5FCGcoGB2Fm1HAClb9yHGcwySXcPL8fOJCX6i02AvxxvQwodV8ZDJZ0GpsElPI7kcR%2F28KgR2UWXFAN1qeJ%2BeM6ZUJTSt15SYTf4ZJxCAT2%2BytQdWdak1zNv22x2ARueBTTwSVOjD2O9DlDTrdjTQ9bWJ8QfREq1miruHOkowCz%2B6Kp2WNbB%2BVa0X%2BboxzBuxnPnd5Zn3eopfO%2B%2FQcYK%2BtSbEiiMx3WUjRf8Q0EPkI3VeTY1Ptb2hX%2FELuAoyj7l7uaYEFtu%2F6advuORY0jd%2BT5dFA%2BijsCLxwIiNhq1qtR3Vk1B9pV8QPIKt6RsslIvl%2FQ4tmvaNxIg2FLCXwmAfIR5DE8SRaH1Pe6E00vNk%2FDZ%2Fiu89ikqnyLoM423e%2FsKz%2FNvvmGIKhmymTDe6oxQdBlz2SzBXkAOTbBHHHBjvGDJxH5Kfav9UUdMTvH6g9fpR3of%2FzIfZqxLWJn8sBJUF8UNWxhRY5vndhdIj9%2FrCGol%2FWioTPnzelE1GGwDC86G463IyfBrKS5HJZZPZknweoH5LM7Y93bKEECDZxHwP9mQPM9R93ZxpIaSPqSLk50hu4DHPh4%2FBiTH6co8N7ikHwY%2FC8fjOsQrj96zjvvj8lisnFLU%2FyuCPMt8j3fuoAzX8mC%2B%2FZ6CzPGkpJgUBy9JxpMNuGd2VNllM95ItAHo3tWBkhkIgyEhzsYcAwNzw8QYUOzI81QbAKhqMKttx6hOqizndOWs%2FC4yt24FiqNYT7DxIn1FfQikX665bUtozoRmPKMI5GXtQcKx%2F5%2FdHg4xn16uwgh%2B82xkFND%2BbyCAnTrSRF%2BG2afa5Zd38w8U4lJ8iGGeMKNc39rkRs%2FQj9jwPf3cZT5bGQLW2ovkYfLWz%2BO%2BRlze4m6F1YUADEn4%2Fa55Inpq859AfYpsCJpvffMjlPheogah64l%2FrLlQjjLwmW4t0x04ct2frggmeKUeoXAQylgo3B9cqNoIzkkAxb2O0GXy2R2bh1KuyWtHm0yuqs8QMWPtW5kIGHtE49VcthveRWhQq3P6Avmw6rbjMcoTlQ2erH3Iqf0AGGsdb0eJh5zMTnSTscP7UEnw2z3yPvN4bIKTasFy1E%2B7tX9IKka9N%2FrGxHBqqvyHE2%2FkEGyJkhEh1ddsOsWF7f2M12MF6WGpquVVypJfXqDxNQ5IHLG7sH1MsI1oGWoDNfXTVgwYRUaDO4hOYr76wRFL7%2BZFbieHzh0PZ6dipmF5umWRt4yHsx%2FFjtK2y9YCfp6gLv0uXqR%2BHVyGhJtB8967WG2r09saxsK%2B7CEl7bXt5U2oPFUqPs6%2Bq0wU3ZGpmllNGxBpYK7rR02kCz2dylI2H0C71OJNYB7PkjRZ6A%2FCk6kq97r7sM%2FV9CcIsovrprKStFz8MPi9OGAMlKWbw7F5oPvZWaJ5f19vP8dbR9yNLxNMVcaYu9FSkd14xZx7TKeMYphZsPpjNvI4KXYLv%2F65%2Fmq%2BYAwcTRjdr%2B9bOnlkoMjBwcPJOtmon6ucGjQihfoqKLZmmrLoL5CjgEZ2m2u8etFfGBLJNKnYe%2FX%2BA1buEyNCXCh2%2F0RnYd9cJpjRGc%2F9KKRE86EIAM%2F7cJDQfuPKqiS0YPVFEP9Wj3w%2Fq5mc7OOwtMxof6KAsBvAlVfO6oDmKMBCXvAfonCluahf2ZRuA0rgzWE7up2VfZ6AVPWUGpgK6w45Iz4Mmf8UxIKYWkyX1qFiBhjV7PohLFpoRb7werw2SM6A2LtCj2mVwwJ10ed9peT%2BKNiJ2MZ83Blyaj1eOas4dYEhVejpY%2FK9Un%2BtPMGvV4l0ioCvKD3iVE%2FUuQizoq2%2BCNMhLFZJawh28V5P5Oyi0msq0yKoLSF1axJUeHx1SJgG7AApj0VycD4yxAqsj%2FY9093zpXc6%2FR6Uk%2FDvlaKqB8FFItHZsSj1r%2FdkzmmHfTMa4VylKYphxTDHeZCI7gStX2M9u3TB7Qy%2BEukkHxJYfU4b%2BjNUUXOCPX8P5mlJUVQpU2fCfjQojxSl99DCpZXOmalZdJ1mchuVBU8ruPjqw1cjI3pBiX2%2FbENxWmfuR77yynF8Z%2BChpZR%2FGYOUVKybysBjl4%2BCicR2kkqLLtNZSV6yCdavykPpIpQ4tehOSKSwbaaRjggsKNfBFierdg9DWGXIPIMuaTVWruBONhWMpJNOF9WnMsyjC1ArqcFONxQ3zefJ%2FzCetlvvMujH3zyv1hBMMTbuoZ%2BMkw7a2P16xc3JUq2lq1mV7oytkmvKj751K8M%2FJ8JvuOOhHdpcS0YB0SF%2Fpzmnn%2FEI6rZ6mWRil7JD%2BrO99%2BKUPQNSveP%2F15yl5clo3tLwLFD%2BosJnKOzhRVS1FyjNWa%2BnD7x5DtgdyxMnZbzcJTdGZqilNvSKl8%2BapGw8cq0QDQokcXAwClMghJ4wDq6B5D8xm4Dk96eFRCluom%2BG1Yb%2F5n%2FMQXT%2F9rhuX6HnmKKmlDqnbQREolFGSsWte4bVb2rDQifOvF%2Fnjcqo2mXt461KQQCikUbX9oqBySBwgUCMOdH1l9U4WBEKORVPLl0wfboErs2gRETUIE0z4RwGw6Svke6kbyY8Jbvh2H%2B8%2BqtIew6Rx74voaiwuMt%2Buc1%2Bl2fxKbfWNabm%2BYnSP90Gynx2dTwFk2RtULHbEAt2mM5OQPw9%2B3YSs6Pcxr6rkGu4PLqw%2FYyEsNamIfarLUPst4Wynn6FVg82Do%2BPO61gqB%2BcAZPUZM3fdiY1gb7JA7mjvP%2FB420%2B9qk7Xb9MXaizTnH7haGp0EeUJnFS2BHJlJCzVTh2UxmeRkf%2BvbPxwxzfNWF6J%2B4q7ortbS%2FdS55OGlK7NthWoKVrOcCH8iqhgM2P8TdhJWP7n0snMfxXLExXmHnPUs%2F3yQp4XKbsLwomXmj7kuFGzE%2BxC8zl4D4vVd%2BA9TMQz4OBERfzB32daGdB2HPan2ThOPQeiA02Jqzp9RfYtmLY5XPI5WAyX3xNJJlBDHL0jfXecPF5fZF0WwJ51Vdfr09rPrWNpYgvDnDkaXhIyftYz1CkP7dR1hPygevc9ZwIa0SjxI12yq1sWah8s2%2B6uZjYwjcaSvbv5xj0aV9J89emba3flYv%2FJd4UgdsEKrJYjifsoly7tz8NB8nVOx8s5pPSOwMvwn691%2Bxilq8xBX6gHgx3TSvHXV60j6f2mKmaLjpMaUCu%2FyKJOXl1Uk6%2FU4QJ1x1U0PmBMB%2BXw%2Byu%2F7mgW6rjdOpSv7vK9pFytU59ixjddDLZPo9kUFOnLjgzZG9m9%2FUjeYn1ep5LPl3oH7W7XMUbOc53SLFatAiUj9XM22nAkG0VFbXyMAHI7QxxrFYzwBjqaxIBQBulRR3NufWstlKjKOBlv99vfwCVuE%2BxIz2o7pvXammjJxeInqC%2FXhLWj5%2FTgsp8jiRra%2BxnY%2F47COVcK%2Fh3QCqg4vbQomgTcxgeIpWnA54XG4w2Vyb%2FgZje5TBnWa5u%2BTppYwyEOasKAPey1tKYDPgoTZY%2FUqXavIISC2O7j9NIEbZ2QIB4kNhYEQM5m0aTQfiut4uVuzg%2FtzPkwlNmtlS1yIV39ffPEaLjB32vSaKEqfFH4v4wkYlmYshF%2FgNV4lujgvwJUZnuEKI7Qgh5vIrTYvAaXKG86AztfdS3Z5tB9tna058Zi365v37HOg%2BEcd5hdL%2F0SZk77fwsel4twHG%2FbEcfMh8CCyUDWvboa6qEVr70IcaFNhv1pDaLFM2bfuDQv67I19FpTPHoAWdsP7biCeg1L8CQs5Jei8qaMgDPPtZ9MdR%2BuxIwAlH65Dsevq6qfLWqxNQHSxIU3jqyfMcueK5iSF7HI3US%2BJf9%2F0dsDBYBGF2zfMdG5z7CmknKuFXdKWwmacBStrf0f7%2F1BL4DhcSpi0BYMX5Jwp5mTWX%2BM2OZFS%2Bvn0X%2BzJF3POqjDYnKrYjZWMMlEYe27SBX2uXVyHPHZX7xddYoFj3H3e7JtJcbOu7tYVw1RkVwIF%2B9Y8baFkKGjE3%2B5mB%2FvdUwiUoK9B63sDS4rT%2Fa%2FDVdrogVda%2BYvSrA5hnEzD%2BYLo%2BwgvqnVklh8164ZCyztheqHquIq1POg%2BCPZVTllRIChRlCLLwswGvfkwKgvCTOi5fir1Q0rTmx%2Fu%2FDbYee9tqt0s3YmcB2IRCPoB3H2AILyyJcQWAMfFW2MosbZ0bfbInLs8tDNiJSkvHU0%2FQuL7502jWBhJLcabwn9%2Ftt%2FSvslyj6we5ZjVKupZY%2BdBnhe%2BJCXUrc2Er49%2B0PeG4tFWGRLfljodtx3mNWcpTuo%2F%2FHwl3m8xCsM7sXhFqjFKq78f35jMmJn4MTUT%2FiiIpRqq7V2IFoeK77%2BM3FXYcoKcHfat0NaIeZmiphMFlNEFw1h4EHBHZXyZMTsePZNs9NJ5lCGXM2XgmZjYWDHtdx6kwNq4sAJq5lnzYDru1agl5Tv%2FU%2BesjzHHf2mjJm2l%2BfVWtZzBA9FGQo5YLq7%2BLr77HB3yZptb8cQ7WfiMpDtG5rsZg9wuXodgAETyA3E1zB7nRQHTc8DgRYH8w%2FtczVxRWhRo%2BuhbejHAlQAz5bUoZg5PeSaYm72IL4Bk0u%2Fjh8l2oWjFQPfMQu4dzJpyuG6FNT%2BFSQHWEd9JuHEjr2PgiJoOwfnEgZnDzrqbcGNE%2F0zcLuoBonsC2EvQLkYO27hWs1dp7rPj6GXKtlbaUc%2FvOL94qyr%2Bh%2FV3IiyTr93IEGrkacM6cuEUq64vpkeBjlaiYNNg8oiKjfbGfzHF%2Bzj8WkrO22yZNbToceL7xphtnKF5%2FBxef2mnwl85kwGlbu0%2FX%2Bjp1S2QnzhAITePb8DXm2NWjpTielcJdmmeLsFLtL1Rz3GOG8UQmaiOgeqDTKCUkr4lPhB1%2FAWGu6l%2BEuurKnHt7bmU%2FloTmNeDsY1thzxgzL9CRldm31t3xN7QR9eDru8f3wKXgqjFo2wTBl%2F9I6G6Pkn7606ZT6Q8o6ML4byqqatUA%2Bx4MA8srw%2B7ECcWFWte75bfwKYSo4RarXk3pOvWLdOvf2BuVRvANw8B7tvl2FijgT7NZuvmRcMy26orP8xWCbkuvUu5EX%2Bhkb9jQMivW7QtKYtKmNDkGrwSquD4kyQeIup21CUBMaHlbogMio4RqRLukHtIa0UliOK7Ixp2uVBjxwbQ6EH6SmDsYNVk%2BcDDNDoYqq26dxKp9ZbaPV4acuV13bVFHRG6yh%2B9h5AkVawj38gEg5AOTLQOeNq9H7VYEu18kIpeiQlLWqCcggls%2B6KNGzVvLyoNP7jmFRPTWAqZ0h1ysXL3GwYGMts82YHACXU7QtgFeQRfKK5p%2B8A5hC0SrzGU8ME39V%2BiZK%2Bt%2FGWs0vE1CsnDhooTDpyqVfT7iS3vl98Q8i14lSDlWnfSN6py5wvwF6QFfUyDo%2BE%2BySiSrZ%2BUeEMQedsyPMur8dKbNaF8HN9B2u17vo1p%2BK%2FtBWuC1Jn6SPYlT1zPVGx3AuVzgpGLZs0PNY1KaN%2FH456rR1wQqS7QIhj%2BaRPSp4jnq1KWGiDbwN9zYqSOUmII9Jg5ybFEZGhbcjjL%2F6JeEc6h8NLvHJxJrY0B3cUPAOnj3dax6%2BmbFU%2FGNbnyCsbmZAD1we3MwqMy%2BUr3n1fu5CwZVGRywcgr%2FRzMRPrSZl0BDec5A5YyGm3P9ktwHnYquEI592N%2FoYX9KksHZJB2yvyEkYd1lmupXlxId0dceMRO%2FkbQIGqzvTYM%2FmB%2F0dwBuOMKvwPGfuE6hjxBcNPu5ezbT4VzSVQVgMhjUaMV4XffIwImqZyUj0sKpfntWlYQBVXhR%2B9N00vFU8igNSD5op3xfdIoeKvcaB9%2BtHn2NVYLmcfdrO40dAUiOuR73bNxlHzL6b%2Bafq8pw7TRo4nw353AU98qqQd%2BQ8XyEXDn6bOPhFmA38I2UgUbJsy3C1fLGiPAB2dqHzYcuUx77c9DwZRehMZadGv4FhknsU1w0ChvytlWtofWudXnoYoneOuqW3l5dZyCfKj3YH9UPTWy%2FgJYoijSGAK5uBYuB%2FVjFrCWkspBdSqhZN7AFlUokdkxOxZ2QVKFL7uFtLjphMECmiIcCHwRkvsVVTtpa%2BFaF0JBsrDTobkMxCfiennP1Fah%2BngNdf9%2BydDNI72zDXf5Ge30yk%2F8Px8gsvFW5vSQhWUilASoUvFQELW3EIKG4WRa2VcwGVgH%2Fu3mvwdZgg2w5fSGlO1iGyJ8hpinQWj2qleNuiVZQPglZHppTvtSq899gCYbRJwMpCk73szJ8t8duOU%2Fdk9OrX3vadnHWDdD3rca5n%2FrvrBPkskAaBRDfezf6alWImWcl6Xfyvv%2FEQNmgNpAbYTcYRCp28Zp5NkJ%2FXKlD2KY958LNKAXMc9jYz2%2FZ3dq5T3rzM%2BVs%2BKDVu7QdYrLWKXTJo2AWs6rPWIS1SkxQSEPTzL210L%2BjVdWc6cxLKkjVHknLSNAXnT0QChzy5xf%2FriR9pecsoXbYix2zdlMhrKMr%2F7ftjvZodkG%2F5agJHG2qRo%2FBIevBuALBPzvwXJDYpqO7b2pm5SgUmW9Q4%2FWuXJfKqvyS120pKLbiej9o4z7xdu5oB3Kdgf9TV7zpA%2BGkS782oHXe1FQSR4lxC1kgp1tPP2iVMMDg3y%2B1UekjmmGkgI68fTd4GgkoKv9oJyfCuYeuYR56koeXX%2FI%2BKbbsPKrzFhgEWFJUeIalhLvlVu3ne0p9%2BBnDjOdZ%2FFNdsfYCP%2BpGdjMy8uIIsVt%2FPP8VzpfNb2oAoGbbDiB3rmvxhksG0GnXchTAOVDmLOhZoS2BpIYfq9YXIiOErk4q1%2B8OtchgEJ6H3IJN0uDAvg661ocwc2p7RTjFGW36wYEzgzg8Gjm%2BXympikPAxkXJwZAaWsJk6YeF1A0%2FB7LGt6YPVOuS2zN9w8KL0hVM2FvEytHjDL1dq9AvgKjhmV1bod4WdRu9I0ne41vxhhzvtebGApINO65z71UeGFH9NOGo2GId5JdTgZyfxibsrFaHeFbBvOfgxpLOaOFPGYsFAOIycK7DpGxWc6bFRbiFxjHeqf9aMSk5%2FXLQGGEl7Q%2FQ319q9QiVhev6ZicUs9Boh6TB2nImxMwk8jg7t97wbk9goO2JYiZDTBAGiQOWsRHWzBC6N1OwaT94pKatM%2Bi8Ku8RnX3cJiGe9%2FfGsycu6JjKZE%2BH7Z7x3y2NQS0sYC11kgv%2F4MrQ1F7TbDWK7oIvFpk2a3hrSY7LOJv%2BjKqR6xljTgdW%2BDDmRMXKCFdg8AfBiOb6VacBLLq9YQW9qHM75g18E9I3c7tRghPlgRoohta9aQ9bfKclesVMqG1%2B3bQrZJf9UidJs3gaal9kT0HLIBtWZTUlBLcs7r5116Sv8Fx3oiUgYxMgsvXf7uSWkeKNL5vk1bTVdt4Q2UGV5jFuK%2F3EiL9LTaAylvmaMA4jHw2X8lWQCTK2n2TYucNKc3s%2F6oZUhmLfWjfBmwfUUYrDOmOJlCQpesoRdr2%2BCVNhR%2FYH3GDebchH3X7NmbVx5cM6z%2FQjp8x5DgrCgJkNDTUJwypPBq9l74F0Z%2Bm1CZ3K%2ByXY2CZdPubJT3yU8eWBFz6nH2p5VWDZdmNihf%2FUjlql%2FldLIrLkYOG9iiqlu5AaEV9ic8si%2FesOkKkfYJEW5lv7pijnH774Hr%2Fj%2B8%2F9Jw7RRuvVrRO2ZPPTsmCiU6WWwOhiBgZ4MIm3Qf9TYi32au5wGIfb6zO%2B4v4qZNgw2lJMQ%2BSXqQlh6NWoarPXTRjQl5CrtBu9NZROAEhZ%2B9zqFr0vKxS1umnB%2FerrZV4pOImscvvkvl9iw1Dd6WwJBvZTzXJi2EFaKFPAm8aTK6jDyUtCOufeABG2%2Bey8GYjag30a8h3JAnerL%2Fx0%2F9ej5ij7WfntSmRFviKMndCPV1tEo25RRkIntXjlEzqSrXoHKEXrdGDJWaYdpgEo3SZtcrDvwLQiWf8RL%2FCH5hg57qS5ncDy4mPUiTj%2F%2BW9TOyhGR62nqqRhhsSf25DNeIUxtSeCEe5lypiPPBHHB8GFUAehBJlEukBKr4R6CCeOm7ltFUHkdiIwyAQ7NLtejmUAi4WeNzTt6oWcJl2Q3pOm%2BVzVG2ai%2BTQHEwiBzFbw3iTlmtwjPgRgq6q9u%2BZj5kelLgBCBuMAor837OTgcKPQyzg8gGrVwTIUacTSgw5EvT1XEPSwprN%2FvNH8ljSZvZ5uKx8mVk%2FoONIot%2BwqaNZKJ2LeooOuz%2FJ32%2FbvAfjahF2wJZDirM5jp4p7TRnfMQ4SYAaxIa0frorjU27rJ1wBko4gGZxndFgH%2Bv231wFhgIdLsLhxNjeG3p99YyNjgHl1xUcMZWDWvcJVBZLmYibdSPvPglBuNwd3wnSHadw43FaCLKGZmQtSk9QCi0lDEEf4yxPD6BTRkS4rbJLcUEeE4aQ%2FBfvv4w1baxJaE7htcs3M6SEK5h9dja38KTq%2BzAI%2FJwRzJrCNmQHwr%2BJWkaCLIxYp59HeyvyKvXTbFC016ak0UgU7q4A1L1SCde9lHn6zNkonkPbJhTf42CCPv61tyt%2BElMMugX%2B4ffCUwmi%2FMSzg7Xqzai%2F2mj%2FVdD%2F%2Fi1ZnYoL6AMx6DMRoC%2FBkWY6tVnIktaf%2Bc6RETP8dJ1Z8BVwJBV4ZW4Dc5vciI2PrvIrzWYBWcvY6Dp1HhnfP6ce12wx1eQp%2FceEvfVUjLQcdKH7KV37jryRiJ4Cn6eTTDHnmhpi57Hf%2FldIswDGtr9pWf%2B12SEmrh1i32pEpmYXpjxXYzKvm%2BabOwuC3CzLayUqzJKgvXQg732WiAEZTqWSI20XCIlE9xJGwpHJ%2Fz9A%2FesLDnwQAGtQVOhs26S2QgB93PRHKxDcHI%2FdDbx11ZeygnEWS7uq%2BPMX3Wa%2FzN1MSfNfTlVdPEUEMYqyOvkyQ65SvVTcEQ00OvKBecYi3vuJ9k6VGYCSsTrAtGCNlneXeMaEbuxE%2F6UiP2STNi%2FG19keeqxCT5FuuIWEw2DJFXd6GLSiDHjzWomVtivvkLXmQf%2FopYbijaME0Paw9Lcs8hX5Bn33COJHSuP1mpE8MLiYeV9Yz4ctj1MqqVLEJ%2BSuEcY9ruzVS8IBJDbiHIiGU9ndObhiGTFqa5Y4SJJp0NiNbJA6fH851X%2ByFXQiCF%2FW%2BIRgg6gsqJqt2wQG47ic5TCq7rY5P5ajx5Gs3SlDnBtSlZwOLtRBR2xsxGwyHPb0usr31R1oZVS5%2FFthC%2BSSjy8D9EuVX4QQLSkXXQ1MZtjUlHq7KqoWxa2Dh%2BgKYu5VdSOxPj34kjgJIkiSbkBDtGWuCkTSmIDj2fz67yF968bgwpVa1lwUO0tv0DpTM1L6rbGFR3PvnNprrfeM%2FBqJ8%2F5A4COoGtWRqSctjd1Ws0g160fxyRkoI2HDFw34xPxNM%2BX34zBcWmcYE%2Fe9J7qHqhzERexYhITuQ55dV0M0uZCOKACpFF9Mc4wLaSgx8lAEq0kJDQhWjDz4wzf6qua6wnKMY87wkiKV%2FnJVbG0yfhYOBj%2BaMRWVlAZtFn77KQopzBBr0S2cLq1xAvdV%2BpvX0%2FuztwPBBrEHDuqx76om1drbBa%2FYlInNSxPR5AjULfAsIhWCnEt05C6cK6lMJDWzchoZiOSG%2Bchxytr%2FiWzZDl2Wq7w%2BRg5h%2FVFjpZiDUOQX0p4Sa%2FuZI0rmBJNZtl%2FrFimD0HhB22KJKNI%2BLDtqIXot8DqoBRuqY0E7fzIV4Oa7yHnfkJOprmRs8WRhUDCBogvzcUK2rgmwJna79mTj7Spw48fNb9FwTrv0rivfC3GH0oBqMJVe8UumKcuDwf2bfZb87iaLGvc1jXw6UI7pvgADIQYizNdCmIcZz9n2zHBRhm9e7dAD62QtDZVzoEmS3E3%2FkzGCIxPsaX63KGXfYLCg98jg1H2DO9D0QhAfm1grTxtdTWod2qPhWBEGKLGsI%2FOjF7cZyzdZFZhNC%2FnnDKhwS6xXSKvWyrvC18wIz3G6HS%2FzC%2F%2F7hh%2FCsM1hTUgc9byPO5RTCV2BltkweDfB8qxKn0wx7m58i5JeZ8gBFMmT8dsDzsnsjAy9VnHFf5Hd%2FedyAPeM5wrE%2FXhGbzV0XdN%2BNJ0UmRvqjyxeYmpPXkyllFF4rAOzeBERYvHfFNNM06mXiHf%2F%2BLGY2nWqEHc%2BGd5uF7mwJjKSjTK68JciitifecOymawG3n44%2Fr9F4GVfa42l4AMQgxJEzQdgzwpCUKoebVSKEkO9o4Nj2aTc5M9bXdXmQ93YjIhFL90biMpJvJyWAQ9HQd3lJrS9%2FC7s99e7c%2FzK3aI%2F8UvXPybs2ySHfZFdAVwS65uA5sI4%2Bd0yu7faIBK686N0ZLHjU4jbFb9qfMQ17lpkBdS0TNSkmpXmOzXI67ywhQKi6haAl%2B31%2Fav2NClk49Al3JcyKFmsdZSvraF901aFJIFzYbBIXdzXlWqNk4fQNx%2BYbhnxPmTqVZaUxiX5pGJ4ZZH2cY1gLMBFuJpwt2V0q1R%2BtMNdJPUheLcveEZuIS1SdGtVcqMjiUf1pEepU1gravdsAn52XIKVDdhyw22JefqBJe%2FXxOb%2B8RQZRgCltvlsDtFmPLK18clNQgd4GuQn3q87%2B9obO95RBGrf47qFU1CaZZt8GpvORN5xqCsYYmeWPH5C0qnUmeO1iOdY0iJdjyzYASrQcy%2FlMCFs88WP1L0K930XN4K2brY%2FcTegTzINtPHJ1W%2Bf0uJYLEOqClOF20ecR3Jjpwost7HaToVy346d3%2FBDyhnnFtptoBF6BQOUXG%2B2Xuom1Q%2BeXzUZ420La7il%2FKmpUd4uxxhNTz2QjXlcv2q%2FQkTgqXDH9E0yx7aJulWn5ohYOTT8ZtEtOid3ZuNSzqBFSHTMJodacPwCcpGnnqTopLiK52gNbY%2FTk9rtwGroiI4mghDKsWG7X76dGD6kwDnx0L%2FbMHsWQkVIHder2sgyu9qzOgtVUb8rE1n9zgG8KfxYYtKFPjW5P2QB27sTYUo7PQE8JjyjbID2NkOu8K4YOzzm7aWdFFI7TD8BbpXp532Sudiiz25vAjwthZ%2FO1W58t6amuz2VMCW1KDEpFLrvUV3WS%2B0utPPh5oFpZCp1xZb91p44e%2BZSEgmgOWQZjnBtuPbALcvpD8DYD4UF0pKj0RtaJXGonZ5UFVICgEULkaGd7QgtP%2FWIhm4fxjvgu1GDyXiB29gr2wErjRUccmQ%2FYMCpNrjjpk7B5R%2FkAZFSYnnzvOQNXZEkxmsq0Vgq87B7P5y%2FSzcn20sQLOJJxneC3Fxdjs7xxeNNkrMyZcnN9YAbXMEACY6VZp0I625fT0%2F1UkDrcr%2F62OkqX7yaPr09rhwszA%2BPEWxrWNHeBTHYPEcLIRYm%2BokauSYn%2BUIPx7309X9xNynz0RQg64v25t1jAVEtkgyeUL03BPG%2FP3grF%2BkqbRhlGiBtUJ%2BPzHb3FDiocJpW6k2gVtmaAU2xy%2B%2F00DMmam4BZDJRahovMA13d69YHjhNgGFsveOgK2VTZiidqAwTDDYCdi798M8TTVyyZm80p7gxPC1ZG0iCKJehB1a%2BmUWdIL62bXggvUDnAWFK%2BHWW1Ai%2BxtbP22JUSukKFDrO%2FwbqFNFDgZdID1zih6BguGj8VFVjU%2BHEqT7tvTK8v26UJlXcQ2W4N%2BmFjbrb%2FSGNghgMAK1IP6SsOtG5Vsdki0i%2BjKjyz%2FjfR%2BujUL9Lc4gBKI1tG4gjXcpE91D43eHglURzXiiV0bHz66Zwimsjiw9svlHSBU4U2cVB6TLa%2FilckdPApIX%2FZOwTUBdRvyZDYuTPkfq8bTXdZku%2FtXpF1%2Fcy8xWxOEIVYOV3KSfUiuV0ZZOHLQRELmE1mR3DnZMlN0%2BSjA66ZZKDArry835ODlwDCj3QHM%2BlypidNhP1m7syc%2BdOjOWLmQVX4HeUyeASLYbRP%2F9uQc5tzlw6GW7aHYkQP9JezZLtrp2o6wxrw%2FTzFet3xGnqR1Kg9vLFCAn6VC0PeHxL1zk2zCmG5Y1HOq7P3w5uHpNBJt%2B8%2FjHRhMqgYxxIcs1kcvyqdHeMHFbvQcaLDVpPfPrT%2Bh5btK4Bon58rOhppZuRNF2yt291UI2K3KYntnXvIR0nQrMSwV0870NWt0DiB2g9PdduUBygnKIbHfWMQMplICCkz4E%2BUL28cq%2Fh%2B8MF5d2jkac6lj8bk912OB2MBC4TlJUf5mDmzIPuH%2FVevKCKxTDAMdmbb9Ppq1G7IOxK%2Fp8FIkLCOwdiy1obDGmgNZEJ4bGTz1E0LyEujKg78NlGh%2FJqzYnV3RaxdFEX%2FVLUDbnoLVcpz9qr7A%2BQEeyGyPEzUUXjsNjK%2BCiCfoCpPcU7iNCvEW%2BdYwlZEG4hR5VvuGlKji3fBCnrgnszhtApbx8oq9i0QMnGhgHdctf8aA7u04e4aOQ67S3bddhtR0MCMLzjwxRB6FgSMf4OA61kCplQNzAm0zzNc539J5fiac%2FCKAvllUje%2BZsFrLmZrDtAoMGLncy7XF9nB%2BmiWeXX8cRTFNGsmQS%2FrPilmyp1ZYhQJsn6zstFx6tD%2FEaw1%2FfchA0ysaYVeCEpPWNgr%2FyZk9pp0o%2B5xL3M92hKmlMnCrx9GiMRVmLeodFN9xCGIlD4TO2cXwsvy95NBH4S5X7GkqrZbz15vFbp9dws2ks7W0myqFh%2BZtUcXjUKmWwKipdPLCyIYj1yG3PoNwZFyEBLPGx%2F%2BVPEfmRTyIh%2FNIolbGeJu75rCkUIU1HrXRQ9dT4RDduSu8R0namgBRtEWahYYvdb0DYnF8fRK8VWfoZSz0jMpGa0GBiMXnhW1vjvEpaSjppnACIgdVzLgLQQwYhaCkhAr0BQgWG3vPcaa4TPpivVeEFqJ%2Bgj1tXuTuU%2FT6bxsoG5ePvLLM1n2OLDq5ZH%2B7aCwwBLRB5bkpuwjUQo2U%2BOFGZ0YcY8E9RUx3zUol%2BfPRUp4lXSBygcEJzaTB2kb1D%2FIv5Yt%2Fzjrm0QU9%2FOpL3nwDO%2Fxsz%2BDYKfLaz1zIN%2FimCa1koKtZB8revwmH8ANfrz%2FGApxq%2B4pmslgTErUu0tbHHJz5x0qhq07uJ%2FrNzMWEzxoO0vvLMV7AkFBL1Gw2xJdwfB9v0z2Dp5AceICZFnbGJ7b6aujRX9OZPPs%2BP22sAwz64pGiE%2Bv8ojESEpxoTyAUe%2BB9qfOAAftampPCTrwMSPS%2FhbQHlKzcGl1LqO%2FB3zOcQ%2FYGoxJyhOGTlhxruqg0Podg19p2iES0kcIgy9z1j4%2FvFNUQlo3Ly%2FnPugArf9aQxbet2EfjDmzvIzaKdVd%2BwuRRvzITWbfrNQzBEuL9yZ9oTPTqOLPHcZfY%2FAbYISykJPhD0goVohtmM%3D' \
  --compressed

curl 'https://citrixsys.splunkcloud.com/saml/acs' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H 'Cache-Control: max-age=0' \
  -H 'Connection: keep-alive' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Cookie: session_id_8443=b6a8a8884a5bf15349f66104c35d8635c3a9ee65' \
  -H 'Origin: https://access.mcas.ms' \
  -H 'Referer: https://access.mcas.ms/' \
  -H 'Sec-Fetch-Dest: document' \
  -H 'Sec-Fetch-Mode: navigate' \
  -H 'Sec-Fetch-Site: cross-site' \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  --data-raw 'RelayState=cmV0dXJuX3RvPS9lbi1VUy8mdXNlcm5hbWU9JmFjY2VwdGVkX3Rvcz0%3D&SAMLResponse=PHNhbWwycDpSZXNwb25zZSB4bWxuczpzYW1sMnA9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpwcm90b2NvbCIgeG1sbnM6eHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiBEZXN0aW5hdGlvbj0iaHR0cHM6Ly9jaXRyaXhzeXMuc3BsdW5rY2xvdWQuY29tL3NhbWwvYWNzIiBJRD0iaWQxMTk3NzI2MTYwNzQxOTQ1MjExNzA2MDk5OSIgSW5SZXNwb25zZVRvPSJDaXRyaXhTeXMtU3BsdW5rQ2xvdWQuMzE0MTI2LjQ5MzZBOTUyLTI4NEYtNEU2RC04NTgyLTlBM0Y5NkQ3NUExQyIgSXNzdWVJbnN0YW50PSIyMDIyLTA5LTAxVDE5OjMwOjQyLjY4MFoiIFZlcnNpb249IjIuMCI%2BPHNhbWwyOklzc3VlciB4bWxuczpzYW1sMj0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFzc2VydGlvbiIgRm9ybWF0PSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6bmFtZWlkLWZvcm1hdDplbnRpdHkiPmh0dHA6Ly93d3cub2t0YS5jb20vZXhrdnA2ODM4blBNcE5JQTgweDc8L3NhbWwyOklzc3Vlcj48ZHM6U2lnbmF0dXJlIHhtbG5zOmRzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjIj48ZHM6U2lnbmVkSW5mbz48ZHM6Q2Fub25pY2FsaXphdGlvbk1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyI%2BPC9kczpDYW5vbmljYWxpemF0aW9uTWV0aG9kPjxkczpTaWduYXR1cmVNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNyc2Etc2hhMjU2Ij48L2RzOlNpZ25hdHVyZU1ldGhvZD48ZHM6UmVmZXJlbmNlIFVSST0iI2lkMTE5NzcyNjE2MDc0MTk0NTIxMTcwNjA5OTkiPjxkczpUcmFuc2Zvcm1zPjxkczpUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjZW52ZWxvcGVkLXNpZ25hdHVyZSI%2BPC9kczpUcmFuc2Zvcm0%2BPGRzOlRyYW5zZm9ybSBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyI%2BPGVjOkluY2x1c2l2ZU5hbWVzcGFjZXMgeG1sbnM6ZWM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyIgUHJlZml4TGlzdD0ieHMiPjwvZWM6SW5jbHVzaXZlTmFtZXNwYWNlcz48L2RzOlRyYW5zZm9ybT48L2RzOlRyYW5zZm9ybXM%2BPGRzOkRpZ2VzdE1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMDQveG1sZW5jI3NoYTI1NiI%2BPC9kczpEaWdlc3RNZXRob2Q%2BPGRzOkRpZ2VzdFZhbHVlPldyMU5RdDhZT0VhbmRvS2RkbTJjd3liTmkxczZDdEc0cnA1RTlkMk01RmM9PC9kczpEaWdlc3RWYWx1ZT48L2RzOlJlZmVyZW5jZT48L2RzOlNpZ25lZEluZm8%2BPGRzOlNpZ25hdHVyZVZhbHVlPkVCN2VIZFJUY1ZYVVhsRVVEdUk1OFlCdG1IeEFoaUVJU1AyeUdtOGxYeXhiOG16N3FiV3pYQkxLODRhbHFQVE04SUQwb2x3TFhhTERoaE12dlRCSkFIN1hJK2R5cHVxeXp4STcxKzhralVkbHVDRGJBY3FJdzVWRHAxcThWc252TTh4MlJEYmR4RHF2d1Y2MS9Rendtamtud0JKZ1RUaTI1UkJKd25TQ0xUak1NTlZnZm4xb2xHSGlkNk1vNi83TnB1Y0hObEVCdmczRWxHWkpWQmdGbWNDQ0w0elpzNlAwMmYrUTNVdDZlR01UVXhra1NmK214NW9jWkg3YTI3Y1RZdm5UK0tiaGRFOHIyemc2NXBuZlRnZGZQSEFsbDVpMGtueVJFRVhnL0kxMkRId3NqYVN4Rk1sRE02aDFiU2hSazRyaFlsQTgwS24rMU85enFYZ09Sb2x4VnN1d1ltWnIxQkt0cmhKNnNIQnVnaXBWbmx5cjRrd25mVVExSmR6Q3JaQktHVUtDQUxiSnNiaHpIam9wRzNaNDJ4cmVnckw1Ym1RMVlMRklkNUFMeHNWcUF3UTZlNncwTGpaWG9ac3FWMTdXMXoxQm1BNkZaeWxMMlRudm1uR3JZZG5GYVdTcFdTTUJWMndtc2VsVTUxWklNZlVHQnJhNHhlSTQxZ3RPRmkxeFVZSENoWXI5UGdrRjVEcWM5Q00xc2NZOFlZSGdzS1U2aEZDSHRGeEZZcE5wVWptaGc0dGlSNjNXMU5IbEVBS0RhdWgxMU1xcjlVNmNyWGNsS0lLbzNvVk9oeUFkYXViNjNETTY4UkpaUmdBYlRjdk9QZE1pY2tjcEJ2Vkp1VlJRWnlxVTNQZ3hSd0J4aktQS2FaWjZuM1l1SjV5MGhtMmtPVi9tcUhBPTwvZHM6U2lnbmF0dXJlVmFsdWU%2BPGRzOktleUluZm8%2BPGRzOlg1MDlEYXRhPjxkczpYNTA5Q2VydGlmaWNhdGU%2BTUlJRnRqQ0NBNTRDQVFFd0RRWUpLb1pJaHZjTkFRRUxCUUF3Z1o0eEN6QUpCZ05WQkFZVEFsVlRNUk13RVFZRFZRUUlEQXBYWVhOb2FXNW5kRzl1TVJBd0RnWURWUVFIREFkU1pXUnRiMjVrTVI0d0hBWURWUVFLREJWTmFXTnliM052Wm5RZ1EyOXljRzl5WVhScGIyNHhKVEFqQmdOVkJBc01IRTFwWTNKdmMyOW1kQ0JEYkc5MVpDQkJjSEFnVTJWamRYSnBkSGt4SVRBZkJnTlZCQU1NR0VGalkyVnpjeUJRY205NGVTQkRaWEowYVdacFkyRjBaVEFpR0E4eU1ESXlNRFl3T0RFeE16Y3pNRm9ZRHpJd016SXdOakE0TVRFek9ETXdXakNCbmpFTE1Ba0dBMVVFQmhNQ1ZWTXhFekFSQmdOVkJBZ01DbGRoYzJocGJtZDBiMjR4RURBT0JnTlZCQWNNQjFKbFpHMXZibVF4SGpBY0JnTlZCQW9NRlUxcFkzSnZjMjltZENCRGIzSndiM0poZEdsdmJqRWxNQ01HQTFVRUN3d2NUV2xqY205emIyWjBJRU5zYjNWa0lFRndjQ0JUWldOMWNtbDBlVEVoTUI4R0ExVUVBd3dZUVdOalpYTnpJRkJ5YjNoNUlFTmxjblJwWm1sallYUmxNSUlDSWpBTkJna3Foa2lHOXcwQkFRRUZBQU9DQWc4QU1JSUNDZ0tDQWdFQTBqcCtEUTZVZmN2OUlxc1daT1hYblFIem1wRFN0V2t3ZlVzQWdiTit2NFEwVjloSnpsaU5yV3VESGNiLzBVUzZtbHNkczdWM1NTUlY3YXJoU0IwTktwT3VkOTdndkFhczRIK1Y0bndGWmdoRlg4YU5jUG1uT2Zld2MxWlRZYUNFVUZBU0tCTFZKNlRWKzV0S0J2anlrRElLcGRhRng1UWh5UExrMlEzbEx0bmVuM29tK0tvMnlDbEhhb2IwQnNBbWtZZlR6TE9CcFV5d3R0VXZSRlBiZ2JBK3dJOERHclpVQW5RdW1sMm5qQmFha081SEI3VkdwZUVoOFpZNWRVS2NTV01nQk1xQndCMzl2Uko5Y3FvVVpMNUIxT2hPeTZSK3NoRHFkaUkzRkhtYWxwSUdnamI5NFlvb3BXcUZvbjZXdUVLY3cvWFpDS2lzd1hBNzhDOEhsM3dxMEF6bTgyanhzQ09oR1lWWXlDbVMvRGNINGlSaFJOZjl2akIwOXpJY0ExZDIvaWZaM2x6emE4ZGF1NENZVG81aWhzd1pDSEpCU3Q3WEhaMy9IaVFRaGs2T2ZVbHNIbFJOVVNadEhpRjRnMVB6dW1CMXBjVUQrMHFxcFBwK3ZvYU1EalF0ZG1PWVBaTlMrT0lNS2wrZzMyc294YVZDTlNzbWwrVk5FU1hWZkxCRmlGVy83TnpnNFhkeWJVZzdWdENZRU1BbjUxZmx4NktnOTY0WjhMMDZMSE5NWnBFUEp1eDh2T2lCNk52eS9nTFBuVjV1N05JckhxZy9HWGtxQktleVZOYlJ1a0djT2t2cG9LblhHSU5JKzNWamowQWcydjdCU25SWkk0YnY4UVc4RUx6d1Q5TDgyWi9icDlBRUNSYWpsNlBHU3l3dlFFNmk3MVNJbDBrQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFzRkFBT0NBZ0VBVm1UQmkyRW9kUjB4a0JYV2o3dXltbXdHMXVRUjEwM0xlMlB1WFloaXZHcXRUMEcydWdCTmVmL0VwYTFocGZ4ZTBzRE1qK3p2UE5UZ1NObWFKL0JOYTFFa3dzWGlYdXhpbFJuNU9ndHhvVy9vazl2dUh5cmthWnk5UkVqbFVqUyt2aXdYZ1RMS2tKeDlOdTBJc2daWXJuK3dyaUxkdlJlZ1JNelZmSlpvTDJXV1lpZEZEWEdHMXVVc3ZhUys5NVAxUi8wZ3ZqM0lHZ1FqaVhTb2k1cGlPWjFYTUh1Ym9kdVNEZkh0U05mc3Y4SmdMYk9WRDY3NThNTUxQc2c1MHRUb3RuenN4am5YN0NGSTdrVnJFRkRYK3A0a1M2YTM1blFVMHI4K2RHS1U5aHpENWVnTnl3S1BlVXI5ZDZLTWdlTlYrNDhWMmQ3QjVEQTNIT3l1RDZVMEtBd2ZESzlWYjZlSEFCYm9JMnkxV29aSkJJM3ErM2hJV0N5WmhuejFMV2ZnWFBZZEVHUzhuRkViNElnekwva0czeXdiSW9GdzdUdlBsdjRKWHFab2Ivb2ZEczFqZ2FtOXJQSUgzTDIzbUw0WkpYRlIybXErUDMzeTdNWEUvQ2F5ZnRMeStscXJhTTVIL2NOeTIwWmNnTlBmRXRoelNjVjVnbEtLNVRSdVU0UWpCK1Rlc3p4T1Y5ekpqZmdNT050WHRicE1BMTAreC9FWHRxOElBOTJSYWNBT0kvckc3YjE4bDZLZkg1MW0yQ0lhd0FMeW11WE50ZUp0a3pyb1YxQTRwdldsaXVYREtxdFpDSkoyZWpoUkxOUFhvQlVUOXkxRERvQVdYVlFYS1N6VGl2VE5BTnNqSXpDQkpLVktoUGtpVXRUektiRG15OXRIcElDZ0pDdnk5QWs9PC9kczpYNTA5Q2VydGlmaWNhdGU%2BPC9kczpYNTA5RGF0YT48L2RzOktleUluZm8%2BPC9kczpTaWduYXR1cmU%2BPHNhbWwycDpTdGF0dXMgeG1sbnM6c2FtbDJwPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6cHJvdG9jb2wiPjxzYW1sMnA6U3RhdHVzQ29kZSBWYWx1ZT0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOnN0YXR1czpTdWNjZXNzIj48L3NhbWwycDpTdGF0dXNDb2RlPjwvc2FtbDJwOlN0YXR1cz48c2FtbDI6QXNzZXJ0aW9uIHhtbG5zOnNhbWwyPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZXJ0aW9uIiB4bWxuczp4cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIElEPSJpZDExOTc3MjYxNjA4OTY2NTc3NjgzMjkzMDciIElzc3VlSW5zdGFudD0iMjAyMi0wOS0wMVQxOTozMDo0Mi42ODBaIiBWZXJzaW9uPSIyLjAiPjxzYW1sMjpJc3N1ZXIgeG1sbnM6c2FtbDI9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphc3NlcnRpb24iIEZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOm5hbWVpZC1mb3JtYXQ6ZW50aXR5Ij5odHRwOi8vd3d3Lm9rdGEuY29tL2V4a3ZwNjgzOG5QTXBOSUE4MHg3PC9zYW1sMjpJc3N1ZXI%2BPGRzOlNpZ25hdHVyZSB4bWxuczpkcz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnIyI%2BPGRzOlNpZ25lZEluZm8%2BPGRzOkNhbm9uaWNhbGl6YXRpb25NZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzEwL3htbC1leGMtYzE0biMiPjwvZHM6Q2Fub25pY2FsaXphdGlvbk1ldGhvZD48ZHM6U2lnbmF0dXJlTWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS8wNC94bWxkc2lnLW1vcmUjcnNhLXNoYTI1NiI%2BPC9kczpTaWduYXR1cmVNZXRob2Q%2BPGRzOlJlZmVyZW5jZSBVUkk9IiNpZDExOTc3MjYxNjA4OTY2NTc3NjgzMjkzMDciPjxkczpUcmFuc2Zvcm1zPjxkczpUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjZW52ZWxvcGVkLXNpZ25hdHVyZSI%2BPC9kczpUcmFuc2Zvcm0%2BPGRzOlRyYW5zZm9ybSBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyI%2BPGVjOkluY2x1c2l2ZU5hbWVzcGFjZXMgeG1sbnM6ZWM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyIgUHJlZml4TGlzdD0ieHMiPjwvZWM6SW5jbHVzaXZlTmFtZXNwYWNlcz48L2RzOlRyYW5zZm9ybT48L2RzOlRyYW5zZm9ybXM%2BPGRzOkRpZ2VzdE1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMDQveG1sZW5jI3NoYTI1NiI%2BPC9kczpEaWdlc3RNZXRob2Q%2BPGRzOkRpZ2VzdFZhbHVlPjZiSWlXU1lTSnZrNDhVa2d4Yk9NM2ZvaURvTFFUdFY5Zzd2c1B6MVg4OGs9PC9kczpEaWdlc3RWYWx1ZT48L2RzOlJlZmVyZW5jZT48L2RzOlNpZ25lZEluZm8%2BPGRzOlNpZ25hdHVyZVZhbHVlPm03a0VZVnVPTHErQWthK3UwNWpYc3psVXYzbTJrd2REZUYrRUhyQ0diNEdFMUI3S1JRZ21QUTJhMjF3RnFWM2xKWVpZQWZTRGJhWGhUWnUwaWh3Q3IzTEdoV3JMU2prakQ2bUVTb1ZQbmJWcnRqei8rNk96RVpwTnZodmU4QlJBei80clpPU2RRcC90Y0VLdG5GbDJYK3FzQ2xjcnJMb1RiVElGcTdFem1EMlRlRUJUUjJlNHNmZSs0dXhNM1R6RytiMzZWWVlaMjMwTUdiaGxHVm5DNUNxY2xYRG10RG0ydTNhWlZ6YTArNVc0VXROdDdEMEVKdHZXODlmTm9GQ3J4VUFkeGswNStIelhXVEloOVRuU0JGUjlGQVBZWDJKUzdtZUtDampEVVVBVURHcVVBU3BsalIxMTlPTTV3U2VGbGxpeklNcmFBY0tiMUVZaVMyZkQ0QndWRjNGVXlwYWo0clF3MkUzNDFIK2tlNGFhVjFCWUNJcXgrZ3ZLZmVZSDk5ZlpER0x0QXZWcWtNMTBvbDA3S3p4L3Q2QkJFTFhFUFljc1ZUcExJamJJNTVsUUZUZUJhbStGTEM0TXR0UFJqQmV2TDNERE52TzR5WWVacENtZEVjY1hkbjVnZ1VlSUJja0NxTmJrQk0ybHJpejZpeFcxeTNKZ3JJUVhYWmRKTXNPNU9PSTFlRURwTjhEOE9ScnZBUnFwUkVjT2hSdlF4QjRPNmVMWUYwenlzYmJJTWVPVCs5MTB4NjNkVXllR1d5WHBGZk02UjJLUzR1b0VZaVJSYUo1KzNaSjQyd3F3YjRqcUhmVW9PL0FuRm84ZVgyeTF0bnozcEF3UnVxYlc0bktCQXVYR01STkE2a1FjMlVRU0RFWlFhUGgzZWJHZyt0UUZoMXFUODhrPTwvZHM6U2lnbmF0dXJlVmFsdWU%2BPGRzOktleUluZm8%2BPGRzOlg1MDlEYXRhPjxkczpYNTA5Q2VydGlmaWNhdGU%2BTUlJRnRqQ0NBNTRDQVFFd0RRWUpLb1pJaHZjTkFRRUxCUUF3Z1o0eEN6QUpCZ05WQkFZVEFsVlRNUk13RVFZRFZRUUlEQXBYWVhOb2FXNW5kRzl1TVJBd0RnWURWUVFIREFkU1pXUnRiMjVrTVI0d0hBWURWUVFLREJWTmFXTnliM052Wm5RZ1EyOXljRzl5WVhScGIyNHhKVEFqQmdOVkJBc01IRTFwWTNKdmMyOW1kQ0JEYkc5MVpDQkJjSEFnVTJWamRYSnBkSGt4SVRBZkJnTlZCQU1NR0VGalkyVnpjeUJRY205NGVTQkRaWEowYVdacFkyRjBaVEFpR0E4eU1ESXlNRFl3T0RFeE16Y3pNRm9ZRHpJd016SXdOakE0TVRFek9ETXdXakNCbmpFTE1Ba0dBMVVFQmhNQ1ZWTXhFekFSQmdOVkJBZ01DbGRoYzJocGJtZDBiMjR4RURBT0JnTlZCQWNNQjFKbFpHMXZibVF4SGpBY0JnTlZCQW9NRlUxcFkzSnZjMjltZENCRGIzSndiM0poZEdsdmJqRWxNQ01HQTFVRUN3d2NUV2xqY205emIyWjBJRU5zYjNWa0lFRndjQ0JUWldOMWNtbDBlVEVoTUI4R0ExVUVBd3dZUVdOalpYTnpJRkJ5YjNoNUlFTmxjblJwWm1sallYUmxNSUlDSWpBTkJna3Foa2lHOXcwQkFRRUZBQU9DQWc4QU1JSUNDZ0tDQWdFQTBqcCtEUTZVZmN2OUlxc1daT1hYblFIem1wRFN0V2t3ZlVzQWdiTit2NFEwVjloSnpsaU5yV3VESGNiLzBVUzZtbHNkczdWM1NTUlY3YXJoU0IwTktwT3VkOTdndkFhczRIK1Y0bndGWmdoRlg4YU5jUG1uT2Zld2MxWlRZYUNFVUZBU0tCTFZKNlRWKzV0S0J2anlrRElLcGRhRng1UWh5UExrMlEzbEx0bmVuM29tK0tvMnlDbEhhb2IwQnNBbWtZZlR6TE9CcFV5d3R0VXZSRlBiZ2JBK3dJOERHclpVQW5RdW1sMm5qQmFha081SEI3VkdwZUVoOFpZNWRVS2NTV01nQk1xQndCMzl2Uko5Y3FvVVpMNUIxT2hPeTZSK3NoRHFkaUkzRkhtYWxwSUdnamI5NFlvb3BXcUZvbjZXdUVLY3cvWFpDS2lzd1hBNzhDOEhsM3dxMEF6bTgyanhzQ09oR1lWWXlDbVMvRGNINGlSaFJOZjl2akIwOXpJY0ExZDIvaWZaM2x6emE4ZGF1NENZVG81aWhzd1pDSEpCU3Q3WEhaMy9IaVFRaGs2T2ZVbHNIbFJOVVNadEhpRjRnMVB6dW1CMXBjVUQrMHFxcFBwK3ZvYU1EalF0ZG1PWVBaTlMrT0lNS2wrZzMyc294YVZDTlNzbWwrVk5FU1hWZkxCRmlGVy83TnpnNFhkeWJVZzdWdENZRU1BbjUxZmx4NktnOTY0WjhMMDZMSE5NWnBFUEp1eDh2T2lCNk52eS9nTFBuVjV1N05JckhxZy9HWGtxQktleVZOYlJ1a0djT2t2cG9LblhHSU5JKzNWamowQWcydjdCU25SWkk0YnY4UVc4RUx6d1Q5TDgyWi9icDlBRUNSYWpsNlBHU3l3dlFFNmk3MVNJbDBrQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFzRkFBT0NBZ0VBVm1UQmkyRW9kUjB4a0JYV2o3dXltbXdHMXVRUjEwM0xlMlB1WFloaXZHcXRUMEcydWdCTmVmL0VwYTFocGZ4ZTBzRE1qK3p2UE5UZ1NObWFKL0JOYTFFa3dzWGlYdXhpbFJuNU9ndHhvVy9vazl2dUh5cmthWnk5UkVqbFVqUyt2aXdYZ1RMS2tKeDlOdTBJc2daWXJuK3dyaUxkdlJlZ1JNelZmSlpvTDJXV1lpZEZEWEdHMXVVc3ZhUys5NVAxUi8wZ3ZqM0lHZ1FqaVhTb2k1cGlPWjFYTUh1Ym9kdVNEZkh0U05mc3Y4SmdMYk9WRDY3NThNTUxQc2c1MHRUb3RuenN4am5YN0NGSTdrVnJFRkRYK3A0a1M2YTM1blFVMHI4K2RHS1U5aHpENWVnTnl3S1BlVXI5ZDZLTWdlTlYrNDhWMmQ3QjVEQTNIT3l1RDZVMEtBd2ZESzlWYjZlSEFCYm9JMnkxV29aSkJJM3ErM2hJV0N5WmhuejFMV2ZnWFBZZEVHUzhuRkViNElnekwva0czeXdiSW9GdzdUdlBsdjRKWHFab2Ivb2ZEczFqZ2FtOXJQSUgzTDIzbUw0WkpYRlIybXErUDMzeTdNWEUvQ2F5ZnRMeStscXJhTTVIL2NOeTIwWmNnTlBmRXRoelNjVjVnbEtLNVRSdVU0UWpCK1Rlc3p4T1Y5ekpqZmdNT050WHRicE1BMTAreC9FWHRxOElBOTJSYWNBT0kvckc3YjE4bDZLZkg1MW0yQ0lhd0FMeW11WE50ZUp0a3pyb1YxQTRwdldsaXVYREtxdFpDSkoyZWpoUkxOUFhvQlVUOXkxRERvQVdYVlFYS1N6VGl2VE5BTnNqSXpDQkpLVktoUGtpVXRUektiRG15OXRIcElDZ0pDdnk5QWs9PC9kczpYNTA5Q2VydGlmaWNhdGU%2BPC9kczpYNTA5RGF0YT48L2RzOktleUluZm8%2BPC9kczpTaWduYXR1cmU%2BPHNhbWwyOlN1YmplY3QgeG1sbnM6c2FtbDI9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphc3NlcnRpb24iPjxzYW1sMjpOYW1lSUQgRm9ybWF0PSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoxLjE6bmFtZWlkLWZvcm1hdDp1bnNwZWNpZmllZCI%2BZGFuaWVsaXM8L3NhbWwyOk5hbWVJRD48c2FtbDI6U3ViamVjdENvbmZpcm1hdGlvbiBNZXRob2Q9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpjbTpiZWFyZXIiPjxzYW1sMjpTdWJqZWN0Q29uZmlybWF0aW9uRGF0YSBJblJlc3BvbnNlVG89IkNpdHJpeFN5cy1TcGx1bmtDbG91ZC4zMTQxMjYuNDkzNkE5NTItMjg0Ri00RTZELTg1ODItOUEzRjk2RDc1QTFDIiBOb3RPbk9yQWZ0ZXI9IjIwMjItMDktMDFUMTk6MzU6NDIuNjgwWiIgUmVjaXBpZW50PSJodHRwczovL2NpdHJpeHN5cy5zcGx1bmtjbG91ZC5jb20vc2FtbC9hY3MiPjwvc2FtbDI6U3ViamVjdENvbmZpcm1hdGlvbkRhdGE%2BPC9zYW1sMjpTdWJqZWN0Q29uZmlybWF0aW9uPjwvc2FtbDI6U3ViamVjdD48c2FtbDI6Q29uZGl0aW9ucyB4bWxuczpzYW1sMj0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFzc2VydGlvbiIgTm90QmVmb3JlPSIyMDIyLTA5LTAxVDE5OjI1OjQyLjY4MFoiIE5vdE9uT3JBZnRlcj0iMjAyMi0wOS0wMVQxOTozNTo0Mi42ODBaIj48c2FtbDI6QXVkaWVuY2VSZXN0cmljdGlvbj48c2FtbDI6QXVkaWVuY2U%2BQ2l0cml4U3lzLVNwbHVua0Nsb3VkPC9zYW1sMjpBdWRpZW5jZT48L3NhbWwyOkF1ZGllbmNlUmVzdHJpY3Rpb24%2BPC9zYW1sMjpDb25kaXRpb25zPjxzYW1sMjpBdXRoblN0YXRlbWVudCB4bWxuczpzYW1sMj0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFzc2VydGlvbiIgQXV0aG5JbnN0YW50PSIyMDIyLTA5LTAxVDE5OjMwOjQyLjY4MFoiIFNlc3Npb25JbmRleD0iQ2l0cml4U3lzLVNwbHVua0Nsb3VkLjMxNDEyNi40OTM2QTk1Mi0yODRGLTRFNkQtODU4Mi05QTNGOTZENzVBMUMiPjxzYW1sMjpBdXRobkNvbnRleHQ%2BPHNhbWwyOkF1dGhuQ29udGV4dENsYXNzUmVmPnVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphYzpjbGFzc2VzOlBhc3N3b3JkUHJvdGVjdGVkVHJhbnNwb3J0PC9zYW1sMjpBdXRobkNvbnRleHRDbGFzc1JlZj48L3NhbWwyOkF1dGhuQ29udGV4dD48L3NhbWwyOkF1dGhuU3RhdGVtZW50PjxzYW1sMjpBdHRyaWJ1dGVTdGF0ZW1lbnQgeG1sbnM6c2FtbDI9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphc3NlcnRpb24iPjxzYW1sMjpBdHRyaWJ1dGUgTmFtZT0icmVhbE5hbWUiIE5hbWVGb3JtYXQ9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphdHRybmFtZS1mb3JtYXQ6dW5zcGVjaWZpZWQiPjxzYW1sMjpBdHRyaWJ1dGVWYWx1ZSB4bWxuczp4cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiIHhzaTp0eXBlPSJ4czpzdHJpbmciPmRhbmllbGlzQGNpdHJpdGUubmV0PC9zYW1sMjpBdHRyaWJ1dGVWYWx1ZT48L3NhbWwyOkF0dHJpYnV0ZT48c2FtbDI6QXR0cmlidXRlIE5hbWU9Im1haWwiIE5hbWVGb3JtYXQ9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphdHRybmFtZS1mb3JtYXQ6dW5zcGVjaWZpZWQiPjxzYW1sMjpBdHRyaWJ1dGVWYWx1ZSB4bWxuczp4cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiIHhzaTp0eXBlPSJ4czpzdHJpbmciPmRhbmllbC5pc2FhY0BjaXRyaXguY29tPC9zYW1sMjpBdHRyaWJ1dGVWYWx1ZT48L3NhbWwyOkF0dHJpYnV0ZT48c2FtbDI6QXR0cmlidXRlIE5hbWU9InJvbGUiIE5hbWVGb3JtYXQ9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphdHRybmFtZS1mb3JtYXQ6dW5zcGVjaWZpZWQiPjxzYW1sMjpBdHRyaWJ1dGVWYWx1ZSB4bWxuczp4cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiIHhzaTp0eXBlPSJ4czpzdHJpbmciPnNwbHVua19jY191c2VyPC9zYW1sMjpBdHRyaWJ1dGVWYWx1ZT48c2FtbDI6QXR0cmlidXRlVmFsdWUgeG1sbnM6eHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB4c2k6dHlwZT0ieHM6c3RyaW5nIj5zcGx1bmtfbnNfdXNlcjwvc2FtbDI6QXR0cmlidXRlVmFsdWU%2BPHNhbWwyOkF0dHJpYnV0ZVZhbHVlIHhtbG5zOnhzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgeHNpOnR5cGU9InhzOnN0cmluZyI%2Bc3BsdW5rX2Nhc191c2VyPC9zYW1sMjpBdHRyaWJ1dGVWYWx1ZT48L3NhbWwyOkF0dHJpYnV0ZT48L3NhbWwyOkF0dHJpYnV0ZVN0YXRlbWVudD48L3NhbWwyOkFzc2VydGlvbj48L3NhbWwycDpSZXNwb25zZT4%3D' \
  --compressed

# Set-Cookie: splunkd_8443=9o9F1UVl_8OKB2kq7SEEEsPl3Ubdm7zS3vrN9QLqdc0UmXvZCIDZm5MfWUNaT30M58GAsyaVMnXq5e4q9VVjvZR4E0NSMA^r2BNPFaHYh49JkZTkiR539lsIIAZ8uQ48ujM2uloZBgSkWidJtdYSYfQCkThfKgnczlys7pFsDHoEOTaQ2RrIm61BUhrtmMWSe1x4tgQ59Pzji16cosvg7cgecKDcOF; Path=/; Secure; HttpOnly; Max-Age=14400; Expires=Thu, 01 Sep 2022 23:30:44 GMT
# Set-Cookie: splunkweb_csrf_token_8443=7047748658613653737; Path=/; Secure; Max-Age=157680000; Expires=Tue, 31 Aug 2027 19:30:44 GMT
# Set-Cookie: AWSELB=67092D7F040FD11F00E7B075920502DA1D506737C0F677F978081F88EFDBA1577AA7032DEB50900C1AEB9307B496FC0A5A16074EFB5DC8D7ECEDB0BC64D25377B43B39C57E6AEDAC038EF14928AF36BEE81FE70A64;PATH=/;MAX-AGE=14400;SECURE;HTTPONLY
# Strict-Transport-Security: max-age=31536000; includeSubDomains


curl 'https://citrixsys.splunkcloud.com/en-US/' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H 'Cache-Control: max-age=0' \
  -H 'Connection: keep-alive' \
  -H 'Cookie: ext_name=ojplmecpdpgccookcobabopnaifgidhf; token_key=13989010451037847990; experience_id=51a32c87-9806-88f4-0317-3348afc9f366; 0.0.0=AP-7SBC7L5BZ8ML-2; spg_session=51a32c87-9806-88f4-0317-3348afc9f366; splunk_csrf_token=13989010451037847990; apt.sid=AP-7SBC7L5BZ8ML-2-1662060059597-19328586; apt.uid=AP-7SBC7L5BZ8ML-2-1662060059598-15474724.0.2.03909a4c-056e-4c08-b565-6efe986e76a5; session_id_8443=b6a8a8884a5bf15349f66104c35d8635c3a9ee65; splunkd_8443=9o9F1UVl_8OKB2kq7SEEEsPl3Ubdm7zS3vrN9QLqdc0UmXvZCIDZm5MfWUNaT30M58GAsyaVMnXq5e4q9VVjvZR4E0NSMA^r2BNPFaHYh49JkZTkiR539lsIIAZ8uQ48ujM2uloZBgSkWidJtdYSYfQCkThfKgnczlys7pFsDHoEOTaQ2RrIm61BUhrtmMWSe1x4tgQ59Pzji16cosvg7cgecKDcOF; splunkweb_csrf_token_8443=7047748658613653737; AWSELB=67092D7F040FD11F00E7B075920502DA1D506737C0F677F978081F88EFDBA1577AA7032DEB50900C1AEB9307B496FC0A5A16074EFB5DC8D7ECEDB0BC64D25377B43B39C57E6AEDAC038EF14928AF36BEE81FE70A64' \
  -H 'Referer: https://access.mcas.ms/' \
  -H 'Sec-Fetch-Dest: document' \
  -H 'Sec-Fetch-Mode: navigate' \
  -H 'Sec-Fetch-Site: cross-site' \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  --compressed

# Set-Cookie: session_id_8443=d354bc4749324d8322b270fb36f6f9ae1969f70e; expires=Thu, 01 Sep 2022 23:30:44 GMT; HttpOnly; Max-Age=14400; Path=/; secure


