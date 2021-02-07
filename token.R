## load rtweet
library(rtweet)

## store api keys
api_key <- "MaITw49VeVc9Ig1Y0Dnubhf3u"
api_secret_key <- "v4Rrw0IY1svp2eGYJPdRkkQGTlMAv4oP6ubsCeZmV0NGsGPK9M"

## authenticate via web browser
token <- create_token(
  app = "primes",
  consumer_key = api_key,
  consumer_secret = api_secret_key)