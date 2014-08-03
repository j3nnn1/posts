

url='http://samarium.wikimedia.org/campaign-vs-amount.csv';
wiki = read.delim(url,sep=",");
plot(wiki);


wiki = read.table('campaign-vs-amount.csv', sep=',', header=T)
head(wiki)

wiki$stop_date = strptime(wiki$stop_date, format="%Y-%m-%d %H:%M:%S")
wiki$medium = as.factor(wiki$medium)
wiki$campaign = as.factor(wiki$campaign)
wiki$count = as.numeric(wiki$count)
wiki$start_date = strptime(wiki$start_date, format="%Y-%m-%d %H:%M:%S")
 hist(wiki$sum)
 hist(wiki$avg)
 hist(wiki$count)
 hist(wiki$usdmax)




