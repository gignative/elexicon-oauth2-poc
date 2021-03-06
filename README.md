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

## License

MIT License

Copyright (c) 2021 Gignative

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.