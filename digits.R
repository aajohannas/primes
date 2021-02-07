## loading dplyr

library(dplyr)

## add a column counting the number of unique digits in each prime

df <- mutate(df,unique_digits = unlist(lapply(lapply(strsplit(text, ""),unique),length)))

## draw box plot

pdf(file="boxplot.pdf")
ggplot(data = df, 
       aes(x=factor(unique_digits), y=favorite_count, fill=factor(unique_digits))) + 
  geom_boxplot() + scale_fill_brewer(palette = "BuPu")+
  ggtitle("Likes by number of unique digits")+
  xlab("Unique digits")+ylab("Favorite count")+
  coord_flip()+theme(legend.title = element_blank())
dev.off()

## remove the outliers and plot again

fav_count_no_outliers <- dplyr::filter(df, favorite_count <= 100)

pdf(file="boxplot_no_outliers.pdf")
ggplot(data = fav_count_no_outliers, 
       aes(x=factor(unique_digits), y=favorite_count, fill=factor(unique_digits))) + 
  geom_boxplot() + scale_fill_brewer(palette = "BuPu")+
  ggtitle("Likes by number of unique digits (without outliers)")+
  xlab("Unique digits")+ylab("Favorite count")+
  coord_flip()+theme(legend.title = element_blank())
dev.off()