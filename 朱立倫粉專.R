install.packages("Rfacebook")
library(Rfacebook)
setwd("/Users/apple/Documents/修課/大四/語言分析與資料科學/期末project/")
NOtoken <- "CAACEdEose0cBANScSfZAXsuBiDTB3p1hLRg6lcNCiZC1k3ZCmP9aX3ZAVc5irlNzBIRJx2NqYXAheW65u7tFJJwz6QO2F4Nrf6UJ30wFt5xu2ZCq3mGMAde6QV8x2a2oMmlKgD2iLqeFUSzcpegIN7ZA1BJktad679lp4nHHiKcYybU9FSCyV9p0lVylT2C0R0UuzRalhCkQZDZD"
ID1 <- "10150145806225128"
page.chu <- getPage(ID1, NOtoken, n = 10000, since = "2015/10/17", until = "2016/1/03", feed = FALSE)
read.csv("朱立倫粉專貼文0103.csv")
write.csv(page.chu, file = "朱立倫粉專貼文0103.csv")
post.chu.0103.1012 <- getPost(post = page.chu$id[1],n=808,token=NOtoken, comments = TRUE)
chu.0103.1012 <- as.data.frame(post.chu.0103.1012)
write.csv(chu.0103.1012, file = "朱立倫0103_1012.csv",fileEncoding = "UTF-8")


ID2 <- "46251501064"
page.tsai <- getPage(ID2, NOtoken, n = 10000, since = "2015/10/17", until = "2016/01/03", feed = FALSE)
write.csv(page.tsai, file = "蔡英文粉專貼文0103.csv")
page.tsai <- read.csv("蔡英文粉專貼文0103.csv")

library(data.table)

post.tsai.like1 <- getPost(post = page.tsai$id[175],n=100,token=NOtoken, comments = TRUE)
tsai.like1 <- as.data.frame(post.tsai.like1)
write.csv(tsai.like1, file = "蔡英文讚數1.csv")
post.tsai.like2 <- getPost(post = page.tsai$id[162],n=1000,token=NOtoken, comments = TRUE)
tsai.like2 <- as.data.frame(post.tsai.like2)
write.csv(tsai.like2, file = "蔡英文讚數2.csv")
post.tsai.like3 <- getPost(post = page.tsai$id[229],n=1000,token=NOtoken, comments = TRUE)
tsai.like3 <- as.data.frame(post.tsai.like3)
write.csv(tsai.like3, file = "蔡英文讚數3.csv")

post.tsai.comment1 <- getPost(post = page.tsai$id[162],n=2000,token=NOtoken, comments = TRUE)
tsai.comment1 <- as.data.frame(post.tsai.comment1)
write.csv(tsai.comment1, file = "蔡英文留言1.csv")

post.tsai.comment2 <- getPost(post = page.tsai$id[143],n=2000,token=NOtoken, comments = TRUE)
tsai.comment2 <- as.data.frame(post.tsai.comment2)
write.csv(tsai.comment2, file = "蔡英文留言2.csv")

post.tsai.comment3 <- getPost(post = page.tsai$id[160],n=2000,token=NOtoken, comments = TRUE)
tsai.comment3 <- as.data.frame(post.tsai.comment3)
write.csv(tsai.comment3, file = "蔡英文留言3.csv")

post.tsai.share1 <- getPost(post = page.tsai$id[6],n=1000,token=NOtoken, comments = TRUE)
tsai.share1 <- as.data.frame(post.tsai.share1)
write.csv(tsai.share1, file = "蔡英文分享1.csv")

post.tsai.share2 <- getPost(post = page.tsai$id[160],n=1000,token=NOtoken, comments = TRUE)
tsai.share2 <- as.data.frame(post.tsai.share2)
write.csv(tsai.share2, file = "蔡英文分享2.csv")

post.tsai.share3 <- getPost(post = page.tsai$id[69],n=1000,token=NOtoken, comments = TRUE)
tsai.share3 <- as.data.frame(post.tsai.share3)
write.csv(tsai.share3, file = "蔡英文分享3.csv")

ID3 <- "491399324358361"
page.song <- getPage(ID3, NOtoken, n = 10000, since = "2015/10/17", until = "2016/01/03", feed = FALSE)
write.csv(page.song, file = "宋楚瑜找朋友粉專貼文0103.csv")
page.song<- read.csv("宋楚瑜找朋友粉專貼文0103.csv",header = TRUE)
cor(page.song[,9],page.song[,10])
cor(page.song[,9],page.song[,11])
cor(page.song[,10],page.song[,11])

post.song <- getPost(post = page.all$id[1],n=10000,token=NOtoken, comments = TRUE)

ID4 <- "love4tw"
page.songold <- getPage(ID4, NOtoken, n = 10000, since = "2015/10/17", until = "2016/01/03", feed = FALSE)
write.csv(page.songold, file = "宋楚瑜本人粉專貼文0103.csv")
songold<- read.csv("宋楚瑜本人粉專貼文0103.csv",header = TRUE)
post.song <- getPost(post = page.all$id[1],n=10000,token=NOtoken, comments = TRUE)
cor(songold[,9],songold[,10])
cor(songold[,9],songold[,11])
cor(songold[,10],songold[,11])


tab01 <- as.data.frame(post.chu)
comment1 <- post[[3]][3]

grepl("健保", page.all$message)
page.all[grepl("健保", page.all$message), 3]
getPost(post.id[1], NOtoken, n=50, comments = TRUE)
post.id[2]