## load rtweet
library(rtweet)

## store api keys
api_key <- "meep"
api_secret_key <- "meep"

## authenticate via web browser
token <- create_token(
  app = "primes",
  consumer_key = api_key,
  consumer_secret = api_secret_key)