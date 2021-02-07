## load rtweet
library(rtweet)

## get most recent 3200 tweets as of 04-02-2021, 13.40 CET

primesDF <- get_timeline("_primes_", n=3200)

## save as CSV file

dummy <- apply(primesDF,2,as.character)
write.csv(dummy, "allData.csv")

## write interesting columns of data frame into a separate CSV file

df <- primesDF[,c("text", "favorite_count", "retweet_count")]
write.csv(df, "primesDF.csv")