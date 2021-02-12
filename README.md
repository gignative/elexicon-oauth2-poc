# OAuth2 Proxy POC

## OAuth2 Information

    oidc-issuer-url https://elexicon.eu.auth0.com/
    login-url       https://elexicon.eu.auth0.com/authorize
    redeem-url      https://elexicon.eu.auth0.com/oauth/token
    validate-url    https://elexicon.eu.auth0.com/userinfo

    Client ID       JLxjePHN6PCmD8YaBrYsOWjBBzF1stb5
    Client Secret   *************************************

    Currently allowed callback URLs   http://localhost:8080/oauth2/callback
    Currently allowed logout URLs     http://localhost:8080/oauth2/sign_in
                                      http://localhost:8080/oauth2/sign_out

## OAuth2 Test User

    Username: e-lexicon@gignative.com
    Password: *********

## Prerequisites

* Linux
* nginx installed and available via `sudo nginx`
* wget
* sha256sum

## Setup

    ./install_oauth2_proxy.sh
    ./start_oauth2_proxy.sh # first tab
    ./start_nginx.sh # second tab

Open http://localhost:8080 and sign in with `e-lexicon@gignative.com` user.