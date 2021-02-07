## load plotting and manipulation packages
library(ggplot2, dplyr)

## simple summary statistics
summary.data.frame(df)

## plot simple histograms to get overview of data
qplot(df$favorite_count, geom="histogram")
qplot(df$retweet_count, geom="histogram")

## note some outliers skewing the data, we filter
fav_count_no_outliers <- dplyr::filter(df, favorite_count <= 100)

## plot nicer histograms that give better overview of data
qplot(fav_count_no_outliers$favorite_count, geom="histogram")
qplot(fav_count_no_outliers$retweet_count, geom="histogram")

## plot and save nice histograms
pdf(file="favorite_count.pdf")
ggplot(data = fav_count_no_outliers, aes(favorite_count)) + 
  geom_histogram(breaks = seq(0,100, by=5), 
                 col="black", aes(fill=..count..), alpha=0.2) + 
  scale_fill_gradient("Freq.", low="grey", high="purple")+
  labs(title="Truncated histogram for favorite count", x = "Favorite count", y="Frequency")
dev.off()

pdf(file="retweet_count.pdf")
ggplot(data = fav_count_no_outliers, aes(retweet_count)) + 
  geom_histogram(breaks = seq(0,20), 
                 col="black", aes(fill=..count..), alpha=0.4) + 
  scale_fill_gradient("Freq.", low="slategray2", high="steelblue4")+
  labs(title="Truncated histogram for retweet count", x = "Favorite count", y="Frequency")
dev.off()

## studying the outliers
sorted_df <- arrange(df, desc(favorite_count))
head(sorted_df,20)

## note that the outliers have a lot of repeated digits