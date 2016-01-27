################################ install packages if required
list.of.packages <- c("RCurl","foreign","xts")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)){
                install.packages(new.packages, repos='http://stat.ethz.ch/CRAN')
}
all.packages <- list.of.packages[(list.of.packages %in% installed.packages()[,"Package"])]
for(i in 1:length(list.of.packages)){
                library(list.of.packages[i],character.only = TRUE)            
}
rm(i,all.packages,list.of.packages)
################################ set time zone and language
Sys.setenv(TZ='GMT')
Sys.setlocale("LC_TIME", "en")

################################ load daily data from github
load(url("https://github.com/dominic-herzog/odds/blob/master/election/us_presidential/2012/data/us_presidential_election_2012_data_set_DAY.RData?raw=true"))
ls()