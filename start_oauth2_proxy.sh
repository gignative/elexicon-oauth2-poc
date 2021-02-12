echo running oauth2-proxy
bin/oauth2-proxy \
  --banner "Login via Auth0 E-Lexicon" \
  --http-address=0.0.0.0:4180 \
  --upstream=http://127.0.0.1:8081 \
  --cookie-secret=8wwSFtY1YjlAhVwtx5AEcinaIGzuflCA \
  --cookie-expire="1h0m0s" \
  --cookie-secure="false" \
  --client-id=JLxjePHN6PCmD8YaBrYsOWjBBzF1stb5 \
  --client-secret=soy-2RCMyWS7GUDw6b1lSB7qu7NNXxGXBByEP83Rh9zmo-WEsU6linXG_EqGbjvK \
  --provider=oidc \
  --pass-access-token \
  --redirect-url http://localhost:8080/oauth2/callback \
  --oidc-issuer-url=https://elexicon.eu.auth0.com/ \
  --login-url=https://elexicon.eu.auth0.com/authorize \
  --redeem-url=https://elexicon.eu.auth0.com/oauth/token \
  --validate-url=https://elexicon.eu.auth0.com/userinfo \
  "--email-domain=*"
