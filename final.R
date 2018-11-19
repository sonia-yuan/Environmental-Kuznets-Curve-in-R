data = read.csv("download (2).csv",header = T)
colnames(data)
datanew = data[c(2:68),c(2:19)]
nrow(datanew)
geoname = datanew$GeoName
geoname = rep(geoname,each = 17)
year = c(2000:2016)
year = rep(year,67)


dataftot= data.frame(geoname,year)
dataftot$incper<-NULL
row = list()
datad = datanew[,c(2:18)]

l<-c()
for(i in 1:nrow(datad)){
  for (j in 1:ncol(datad)){
     l = c(l,datad[i,j])
  }
}
for(i in 1:length(l)){
  dataftot$incper[i] = l[i]
}
write.csv(dataftot,"countyTotalPopincpc1.csv")
 dataftot<-dataftot[dataftot$year==2011|dataftot$year==2012|dataftot$year==2013|dataftot$year==2014|dataftot$year==2015|dataftot$year==2016,]
LRG <- read.delim("~/Desktop/college/econ441/final proj/Lehigh River at Glendon, PA.txt", header=FALSE)
LRG1<-LRG  
LRG1<-LRG1[complete.cases(LRG1),]
LRG1<-LRG1[,c("V3","V8")]
colnames(LRG1)<-c("year","DO")

#LRG
geoname = "LRG"
year = c(2010:2017)
geoname = rep(geoname,each = 8)
length(geoname)
dataf= data.frame(geoname,year)
nrow(dataf)
index = 20110000
yearin = 2010
for(i in 1:length(year)){
  dataf$DO[dataf$year == yearin ]<-mean(LRG1$DO[LRG1$year<index & LRG1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}
LRE <- read.delim("~/Desktop/college/econ441/final proj/Lehigh River at Easton, PA .txt", header=FALSE)
#LRE
LRE1<-LRE  
LRE1<-LRE1[complete.cases(LRE1),]
LRE1<-LRE1[,c("V3","V8")]
colnames(LRE1)<-c("year","DO")
geoname = "LRE"
year = c(2001:2009)
geoname = rep(geoname,each = 9)

dataf1= data.frame(geoname,year)

index = 20020000
yearin = 2001
for(i in 1:length(year)){
  dataf1$DO[dataf1$year == yearin ]<-mean(LRE1$DO[LRE1$year<index & LRE1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#DRT
DRT <- read.delim("~/Desktop/college/econ441/final proj/Delaware River below Tohickon CR at Point Pleasent.txt", header=FALSE)

DRT1<-DRT  
DRT1<-DRT1[complete.cases(DRT1),]
DRT1<-DRT1[,c("V3","V8")]
colnames(DRT1)<-c("year","DO")
geoname = "DRT"
year = c(2001:2014)
geoname = rep(geoname,each = 14)

dataf2= data.frame(geoname,year)

index = 20020000
yearin = 2001
for(i in 1:length(year)){
  dataf2$DO[dataf2$year == yearin ]<-mean(DRT1$DO[DRT1$year<index & DRT1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}
#DRB
DRB <- read.delim("~/Desktop/college/econ441/final proj/Delaware River at Ben Franklin Bridge at philadelphia.txt", header=FALSE)
DRB1<-DRB  
DRB1<-DRB1[complete.cases(DRB1),]
DRB1<-DRB1[,c("V3","V8")]
colnames(DRB1)<-c("year","DO")
geoname = "DRB"
year = c(2001:2017)
geoname = rep(geoname,each = 17)

DATAF3= data.frame(geoname,year)

index = 20020000
yearin = 2001
for(i in 1:length(year)){
  DATAF3$DO[DATAF3$year == yearin ]<-mean(DRB1$DO[DRB1$year<index & DRB1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#SRVD
SRVD <- read.delim("~/Desktop/college/econ441/final proj/schuylkill R at Vincent Dam at Linfield .txt", header=FALSE)

SRVD1<-SRVD  
SRVD1<-SRVD1[complete.cases(SRVD1),]
SRVD1<-SRVD1[,c("V3","V8")]
colnames(SRVD1)<-c("year","DO")
geoname = "SRVD"
year = c(2001:2017)
geoname = rep(geoname,each = 17)

dataf4= data.frame(geoname,year)

index = 20020000
yearin = 2001
for(i in 1:length(year)){
  dataf4$DO[dataf4$year == yearin ]<-mean(SRVD1$DO[SRVD1$year<index & SRVD1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}
#SRN
SRN <- read.delim("~/Desktop/college/econ441/final proj/Schuylkill R at Norristown.txt", header=FALSE)
SRN1<-SRN  
SRN1<-SRN1[complete.cases(SRN1),]
SRN1<-SRN1[,c("V3","V8")]
colnames(SRN1)<-c("year","DO")
geoname = "SRN"
year = c(2012:2017)
geoname = rep(geoname,each = 6)

dataf5= data.frame(geoname,year)

index = 20130000
yearin = 2012
for(i in 1:length(year)){
  dataf5$DO[dataf5$year == yearin ]<-mean(SRN1$DO[SRN1$year<index & SRN1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#DRC
DRC <- read.delim("~/Desktop/college/econ441/final proj/Delaware River at Chester.txt", header=FALSE)
DRC1<-DRC  
DRC1<-DRC1[complete.cases(DRC1),]
DRC1<-DRC1[,c("V3","V8")]
colnames(DRC1)<-c("year","DO")
geoname = "DRC"
year = c(2001:2017)
geoname = rep(geoname,each = 17)

dataf6= data.frame(geoname,year)

index = 20020000
yearin = 2001
for(i in 1:length(year)){
  dataf6$DO[dataf6$year == yearin ]<-mean(DRC1$DO[DRC1$year<index & DRC1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}
#WBBC
WBBC <- read.delim("~/Desktop/college/econ441/final proj/West Branch Brandywine Creek at Modena.txt", header=FALSE)
WBBC1<-WBBC  
WBBC1<-WBBC1[WBBC1$V9 == "A" | WBBC1$V9 == "P",]
WBBC1<-WBBC1[,c("V3","V8")]
WBBC1<-WBBC1[WBBC1$V8 !="Ssn",]


colnames(WBBC1)<-c("year","DO")

year = c(2001:2017)
geoname = "WBBC"
geoname = rep(geoname,each = 17)

dataf7= data.frame(geoname,year)

index = 20020000
yearin = 2001
for(i in 1:length(year)){
  dataf7$DO[dataf7$year == yearin ]<-mean(WBBC1$DO[WBBC1$year<index & WBBC1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#EBBC
EBBC <- read.delim("~/Desktop/college/econ441/final proj/East Branch Brandywine Creek below Downingtown.txt", header=FALSE)
EBBC1<-EBBC  
EBBC1<-EBBC1[EBBC1$V9 == "A" | EBBC1$V9 == "P",]
EBBC1<-EBBC1[,c("V3","V8")]
EBBC1<-EBBC1[EBBC1$V8 !="Ssn",]


colnames(EBBC1)<-c("year","DO")

year = c(2001:2017)
geoname = "EBBC"
geoname = rep(geoname,each = 17)

dataf8= data.frame(geoname,year)

index = 20020000
yearin = 2001
for(i in 1:length(year)){
  dataf8$DO[dataf8$year == yearin ]<-mean(EBBC1$DO[EBBC1$year<index & EBBC1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#BCC
BCC <- read.delim("~/Desktop/college/econ441/final proj/Brandywine Creek at Chadds.txt", header=FALSE)
BCC1<-BCC  
BCC1<-BCC1[BCC1$V9 == "A" | BCC1$V9 == "P",]
BCC1<-BCC1[,c("V3","V8")]
BCC1<-BCC1[BCC1$V8 !="Ssn",]


colnames(BCC1)<-c("year","DO")

year = c(2001:2017)
geoname = "BCC"
geoname = rep(geoname,each = 17)

dataf9= data.frame(geoname,year)

index = 20020000
yearin = 2001
for(i in 1:length(year)){
  dataf9$DO[dataf9$year == yearin ]<-mean(BCC1$DO[BCC1$year<index & BCC1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}
 
#KCCF
KCCF <- read.delim("~/Desktop/college/econ441/final proj/Kettle Creek at Cross Fork.txt", header=FALSE)
KCCF1<-KCCF  
KCCF1<-KCCF1[KCCF1$V9 == "A" | KCCF1$V9 == "P",]
KCCF1<-KCCF1[,c("V3","V8")]
KCCF1<-KCCF1[KCCF1$V8 !="Ssn",]

KCCF1$V8<-as.numeric(KCCF1$V8)
colnames(KCCF1)<-c("year","DO")

year = c(2011:2017)
geoname = "KCCF"
geoname = rep(geoname,each = 7)

dataf10= data.frame(geoname,year)

index = 20120000
yearin = 2011
for(i in 1:length(year)){
  dataf10$DO[dataf10$year == yearin ]<-mean(KCCF1$DO[KCCF1$year<index & KCCF1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

# PCPCW
PCPCW <- read.delim("~/Desktop/college/econ441/final proj/Pine Creek Pine Creek near Waterville.txt", header=FALSE)
PCPCW1<-PCPCW  
PCPCW1<-PCPCW1[PCPCW1$V9 == "A" | PCPCW1$V9 == "P",]
PCPCW1<-PCPCW1[,c("V3","V8")]
PCPCW1<-PCPCW1[PCPCW1$V8 !="Ssn",]

PCPCW1$V8<-as.numeric(PCPCW1$V8)
colnames(PCPCW1)<-c("year","DO")

year = c(2011:2017)
geoname = "PCPCW"
geoname = rep(geoname,each = 7)

dataf11= data.frame(geoname,year)

index = 20120000
yearin = 2011
for(i in 1:length(year)){
  dataf11$DO[dataf11$year == yearin ]<-mean(PCPCW1$DO[PCPCW1$year<index & PCPCW1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

# JRN
JRN <- read.delim("~/Desktop/college/econ441/final proj/Juniata River at Newport .txt", header=FALSE)
JRN1<-JRN  
JRN1<-JRN1[JRN1$V9 == "A" | JRN1$V9 == "P",]
JRN1<-JRN1[,c("V3","V8")]
JRN1<-JRN1[JRN1$V8 !="Ssn",]

JRN1$V8<-as.numeric(JRN1$V8)
colnames(JRN1)<-c("year","DO")

year = c(2008:2015)
geoname = "JRN"
geoname = rep(geoname,each = 8)

dataf12= data.frame(geoname,year)

index = 20090000
yearin = 2008
for(i in 1:length(year)){
  dataf12$DO[dataf12$year == yearin ]<-mean(JRN1$DO[JRN1$year<index & JRN1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}


# ARPA
ARPA <- read.delim("~/Desktop/college/econ441/final proj/Allegheny River at Prot Allegany.txt", header=FALSE)
ARPA1<-ARPA  
ARPA1<-ARPA1[ARPA1$V9 == "A" | ARPA1$V9 == "P",]
ARPA1<-ARPA1[,c("V3","V8")]
ARPA1<-ARPA1[ARPA1$V8 !="Ssn",]


colnames(ARPA1)<-c("year","DO")

year = c(2011:2017)
geoname = "ARPA"
geoname = rep(geoname,each = 7)

dataf13= data.frame(geoname,year)

index = 20120000
yearin = 2011
for(i in 1:length(year)){
  dataf13$DO[dataf13$year == yearin ]<-mean(ARPA1$DO[ARPA1$year<index & ARPA1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#ARF
ARF <- read.delim("~/Desktop/college/econ441/final proj/Allegheny River at Franklin.txt", header=FALSE)
ARF1<-ARF  
ARF1<-ARF1[ARF1$V9 == "A" | ARF1$V9 == "P",]
ARF1<-ARF1[,c("V3","V8")]
ARF1<-ARF1[ARF1$V8 !="Ssn",]


colnames(ARF1)<-c("year","DO")

year = c(2011:2017)
geoname = "ARF"
geoname = rep(geoname,each = 7)

dataf14= data.frame(geoname,year)

index = 20120000
yearin = 2011
for(i in 1:length(year)){
  dataf14$DO[dataf14$year == yearin ]<-mean(ARF1$DO[ARF1$year<index & ARF1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}


#MCP
MCP <- read.delim("~/Desktop/college/econ441/final proj/Mahoning Creek at Punxsutawney.txt", header=FALSE)
MCP1<-MCP  
MCP1<-MCP1[MCP1$V9 == "A" | MCP1$V9 == "P",]
MCP1<-MCP1[,c("V3","V8")]
MCP1<-MCP1[MCP1$V8 !="Ssn",]

colnames(MCP1)<-c("year","DO")

year = c(2011:2017)
geoname = "MCP"
geoname = rep(geoname,each = 7)

dataf15= data.frame(geoname,year)

index = 20120000
yearin = 2011
for(i in 1:length(year)){
  dataf15$DO[dataf15$year == yearin ]<-mean(MCP1$DO[MCP1$year<index & MCP1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#MCMC
MCMC <- read.delim("~/Desktop/college/econ441/final proj/Mahoning Creek at Mahoning Creek Dam.txt", header=FALSE)
MCMC1<-MCMC  
MCMC1<-MCMC1[MCMC1$V9 == "A" | MCMC1$V9 == "P",]
MCMC1<-MCMC1[,c("V3","V8")]
MCMC1<-MCMC1[MCMC1$V8 !="Ssn",]

colnames(MCMC1)<-c("year","DO")

year = c(2008:2017)
geoname = "MCMC"
geoname = rep(geoname,each = 10)

dataf16= data.frame(geoname,year)

index = 20090000
yearin = 2008
for(i in 1:length(year)){
  dataf16$DO[dataf16$year == yearin ]<-mean(MCMC1$DO[MCMC1$year<index & MCMC1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#ARLD
ARLD <- read.delim("~/Desktop/college/econ441/final proj/Allegheny River at Lock & Dam 6 at Clinton.txt", header=FALSE)
ARLD1<-ARLD  
ARLD1<-ARLD1[ARLD1$V9 == "A" | ARLD1$V9 == "P",]
ARLD1<-ARLD1[,c("V3","V8")]
ARLD1<-ARLD1[ARLD1$V8 !="Ssn",]

colnames(ARLD1)<-c("year","DO")

year = c(2010:2017)
geoname = "ARLD"
geoname = rep(geoname,each = 8)

dataf17= data.frame(geoname,year)

index = 20110000
yearin = 2010
for(i in 1:length(year)){
  dataf17$DO[dataf17$year == yearin ]<-mean(ARLD1$DO[ARLD1$year<index & ARLD1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#ARBLD
ARBLD <- read.delim("~/Desktop/college/econ441/final proj/Allegheny River below Lock & Dam 6 at Clinton.txt", header=FALSE)
ARBLD1<-ARBLD  
ARBLD1<-ARBLD1[ARBLD1$V9 == "A" | ARBLD1$V9 == "P",]
ARBLD1<-ARBLD1[,c("V3","V8")]
ARBLD1<-ARBLD1[ARBLD1$V8 !="Ssn",]

colnames(ARBLD1)<-c("year","DO")

year = c(2010:2017)
geoname = "ARBLD"
geoname = rep(geoname,each = 8)

dataf18= data.frame(geoname,year)

index = 20110000
yearin = 2010
for(i in 1:length(year)){
  dataf18$DO[dataf18$year == yearin ]<-mean(ARBLD1$DO[ARBLD1$year<index & ARBLD1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#ARLF
ARLF <- read.delim("~/Desktop/college/econ441/final proj/Allegheny River at Lock & Dam 5 near Freeport.txt", header=FALSE)
ARLF1<-ARLF  
ARLF1<-ARLF1[ARLF1$V9 == "A" | ARLF1$V9 == "P",]
ARLF1<-ARLF1[,c("V3","V8")]
ARLF1<-ARLF1[ARLF1$V8 !="Ssn",]

colnames(ARLF1)<-c("year","DO")

year = c(2010:2017)
geoname = "ARLF"
geoname = rep(geoname,each = 8)

dataf19= data.frame(geoname,year)

index = 20110000
yearin = 2010
for(i in 1:length(year)){
  dataf19$DO[dataf19$year == yearin ]<-mean(ARLF1$DO[ARLF1$year<index & ARLF1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#ARBD
ARBD <- read.delim("~/Desktop/college/econ441/final proj/Allegheny River bl Lock & Dam 5 near Freeport.txt", header=FALSE)
ARBD1<-ARBD  
ARBD1<-ARBD1[ARBD1$V9 == "A" | ARBD1$V9 == "P",]
ARBD1<-ARBD1[,c("V3","V8")]
ARBD1<-ARBD1[ARBD1$V8 !="Ssn",]

colnames(ARBD1)<-c("year","DO")

year = c(2010:2017)
geoname = "ARBD"
geoname = rep(geoname,each = 8)

dataf20= data.frame(geoname,year)

index = 20110000
yearin = 2010
for(i in 1:length(year)){
  dataf20$DO[dataf20$year == yearin ]<-mean(ARBD1$DO[ARBD1$year<index & ARBD1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#ARCWBY
ARCWBY <- read.delim("~/Desktop/college/econ441/final proj/Allegheny R at CW Bill Young L&D at Acmetonia.txt", header=FALSE)
ARCWBY1<-ARCWBY  
ARCWBY1<-ARCWBY1[ARCWBY1$V9 == "A" | ARCWBY1$V9 == "P",]
ARCWBY1<-ARCWBY1[,c("V3","V8")]
ARCWBY1<-ARCWBY1[ARCWBY1$V8 !="Ssn",]

colnames(ARCWBY1)<-c("year","DO")

year = c(2004:2017)
geoname = "ARCWBY"
geoname = rep(geoname,each = 14)

dataf21= data.frame(geoname,year)

index = 20050000
yearin = 2004
for(i in 1:length(year)){
  dataf21$DO[dataf21$year == yearin ]<-mean(ARCWBY1$DO[ARCWBY1$year<index & ARCWBY1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#SFTCJ
SFTCJ <- read.delim("~/Desktop/college/econ441/final proj/South Fork Tenmile Creek at Jefferson.txt", header=FALSE)

SFTCJ1<-SFTCJ  
SFTCJ1<-SFTCJ1[SFTCJ1$V9 == "A" | SFTCJ1$V9 == "P",]
SFTCJ1<-SFTCJ1[,c("V3","V8")]
SFTCJ1<-SFTCJ1[SFTCJ1$V8 !="Ssn",]

colnames(SFTCJ1)<-c("year","DO")

year = c(2011:2017)
geoname = "SFTCJ"
geoname = rep(geoname,each = 7)

dataf22= data.frame(geoname,year)

index = 20120000
yearin = 2011
for(i in 1:length(year)){
  dataf22$DO[dataf22$year == yearin ]<-mean(SFTCJ1$DO[SFTCJ1$year<index & SFTCJ1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#MRE
MRE <- read.delim("~/Desktop/college/econ441/final proj/Monongahela River at Elizabeth.txt", header=FALSE)
MRE1<-MRE  
MRE1<-MRE1[MRE1$V9 == "A" | MRE1$V9 == "P",]
MRE1<-MRE1[,c("V3","V8")]
MRE1<-MRE1[MRE1$V8 !="Ssn",]

colnames(MRE1)<-c("year","DO")

year = c(2005:2017)
geoname = "MRE"
geoname = rep(geoname,each = 13)

dataf23= data.frame(geoname,year)

index = 20060000
yearin = 2005
for(i in 1:length(year)){
  dataf23$DO[dataf23$year == yearin ]<-mean(MRE1$DO[MRE1$year<index & MRE1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#YRDOT
YRDOT <- read.delim("~/Desktop/college/econ441/final proj/Youghiogheny R at dam outlet tunnel nr Confluence.txt", header=FALSE)
YRDOT1<-YRDOT  
YRDOT1<-YRDOT1[YRDOT1$V9 == "A" | YRDOT1$V9 == "P",]
YRDOT1<-YRDOT1[,c("V3","V8")]
YRDOT1<-YRDOT1[YRDOT1$V8 !="Ssn",]

colnames(YRDOT1)<-c("year","DO")

year = c(2011:2017)
geoname = "YRDOT"
geoname = rep(geoname,each = 7)

dataf24= data.frame(geoname,year)

index = 20120000
yearin = 2011
for(i in 1:length(year)){
  dataf24$DO[dataf24$year == yearin ]<-mean(YRDOT1$DO[YRDOT1$year<index & YRDOT1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#YRBC
YRBC <- read.delim("~/Desktop/college/econ441/final proj/Youghiogheny River below Confluence.txt", header=FALSE)
YRBC1<-YRBC  
YRBC1<-YRBC1[YRBC1$V9 == "A" | YRBC1$V9 == "P",]
YRBC1<-YRBC1[,c("V3","V8")]
YRBC1<-YRBC1[YRBC1$V8 !="Ssn",]

colnames(YRBC1)<-c("year","DO")

year = c(2004:2017)
geoname = "YRBC"
geoname = rep(geoname,each = 14)

dataf25= data.frame(geoname,year)

index = 20050000
yearin = 2004
for(i in 1:length(year)){
  dataf25$DO[dataf25$year == yearin ]<-mean(YRBC1$DO[YRBC1$year<index & YRBC1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#YRAS
YRAS <- read.delim("~/Desktop/college/econ441/final proj/Youghiogheny River at Sutersville.txt", header=FALSE)
YRAS1<-YRAS  
YRAS1<-YRAS1[YRAS1$V9 == "A" | YRAS1$V9 == "P",]
YRAS1<-YRAS1[,c("V3","V8")]
YRAS1<-YRAS1[YRAS1$V8 !="Ssn",]

colnames(YRAS1)<-c("year","DO")

year = c(2005:2017)
geoname = "YRAS"
geoname = rep(geoname,each = 13)

dataf26= data.frame(geoname,year)

index = 20060000
yearin = 2005
for(i in 1:length(year)){
  dataf26$DO[dataf26$year == yearin ]<-mean(YRAS1$DO[YRAS1$year<index & YRAS1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#BRW
BRW <- read.delim("~/Desktop/college/econ441/final proj/Beaver River at Wampum.txt", header=FALSE)
BRW1<-BRW  
BRW1<-BRW1[BRW1$V9 == "A" | BRW1$V9 == "P",]
BRW1<-BRW1[,c("V3","V8")]
BRW1<-BRW1[BRW1$V8 !="Ssn",]

colnames(BRW1)<-c("year","DO")

year = c(2011:2017)
geoname = "BRW"
geoname = rep(geoname,each = 7)

dataf27= data.frame(geoname,year)

index = 20120000
yearin = 2011
for(i in 1:length(year)){
  dataf27$DO[dataf27$year == yearin ]<-mean(BRW1$DO[BRW1$year<index & BRW1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#CCZ
CCZ <- read.delim("~/Desktop/college/econ441/final proj/Connoquenessing Creek near Zelienople.txt", header=FALSE)
CCZ1<-CCZ  
CCZ1<-CCZ1[CCZ1$V9 == "A" | CCZ1$V9 == "P",]
CCZ1<-CCZ1[,c("V3","V8")]
CCZ1<-CCZ1[CCZ1$V8 !="Ssn",]

colnames(CCZ1)<-c("year","DO")

year = c(2011:2017)
geoname = "CCZ"
geoname = rep(geoname,each = 7)

dataf28= data.frame(geoname,year)

index = 20120000
yearin = 2011
for(i in 1:length(year)){
  dataf28$DO[dataf28$year == yearin ]<-mean(CCZ1$DO[CCZ1$year<index & CCZ1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#ORMDL
ORMDL <- read.delim("~/Desktop/college/econ441/final proj/Ohio R ab Montgomery Dam & Locks at Ohioview.txt", header=FALSE)
ORMDL1<-ORMDL  
ORMDL1<-ORMDL1[ORMDL1$V9 == "A" | ORMDL1$V9 == "P",]
ORMDL1<-ORMDL1[,c("V3","V8")]
ORMDL1<-ORMDL1[ORMDL1$V8 !="Ssn"& ORMDL1$V3>20050000,]

colnames(ORMDL1)<-c("year","DO")

year = c(2005:2017)
geoname = "ORMDL"
geoname = rep(geoname,each = 13)

dataf29= data.frame(geoname,year)

index = 20060000
yearin = 2005
for(i in 1:length(year)){
  dataf29$DO[dataf29$year == yearin ]<-mean(ORMDL1$DO[ORMDL1$year<index & ORMDL1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#WCUPE
WCUPE <- read.delim("~/Desktop/college/econ441/final proj/Walnut Creek Upstream Pool, near Erie.txt", header=FALSE)
WCUPE1<-WCUPE  
WCUPE1<-WCUPE1[WCUPE1$V9 == "A" | WCUPE1$V9 == "P",]
WCUPE1<-WCUPE1[,c("V3","V8")]
WCUPE1<-WCUPE1[WCUPE1$V8 !="Ssn",]

colnames(WCUPE1)<-c("year","DO")

year = c(2010:2017)
geoname = "WCUPE"
geoname = rep(geoname,each = 8)

dataf30= data.frame(geoname,year)

index = 20110000
yearin = 2010
for(i in 1:length(year)){
  dataf30$DO[dataf30$year == yearin ]<-mean(WCUPE1$DO[WCUPE1$year<index & WCUPE1$year>(index-10000)])
  yearin = yearin + 1
  index = index + 10000
}

#pop county
population <- read_excel("population.xls")
pop_county<-pop_county[complete.cases(pop_county),]
pop_county<-pop_county[pop_county$GeoName != "Pennsylvania",]
dataftot<-dataftot[dataftot$geoname!= "Pennsylvania",]
dataftot1<-dataftot[dataftot$year == 2011 | dataftot$year == 2012 |dataftot$year == 2013 |dataftot$year == 2014 |dataftot$year == 2015 |dataftot$year == 2016  ,]
colnames(pop_county)
pop_county[,c()]

# library(ggplot2)
# ggplot(data = dataftot,aes(x =year,y=incper,colour = geoname))+geom_line()
# 
datanewnew<-rbind(dataf,dataf1,dataf2,DATAF3,dataf4,dataf5,dataf6,dataf7,dataf8,dataf9,dataf10,dataf11,dataf12,dataf13,dataf14,dataf15,dataf16,dataf17,dataf18,dataf19,dataf20,dataf21,dataf22,dataf23,dataf24,dataf25,dataf26,dataf27,dataf28,dataf29,dataf30)
datanewnew<-datanewnew[datanewnew$year>2010 & datanewnew$year<2017,]
nrow(datanewnew[datanewnew$geoname=="LRG",] )
GEONAME<-levels(datanewnew$geoname)
# 
datanew2 = data.frame()
for(i in 1:length(GEONAME)){
  if(nrow(datanewnew[datanewnew$geoname == GEONAME[i],])>=6){
    datanew2= rbind(datanew2,datanewnew[datanewnew$geoname == GEONAME[i],])
  }
}

datanew2$geoname<-droplevels(datanew2$geoname)




l<-c()
dataftot2<-dataftot1[2:7]

for(i in 1:nrow(dataftot2)){
  for (j in 1:ncol(dataftot2)){
    l = c(l,dataftot2[i,j])
  }
}
length(l)
nrow(dataftot)
for(i in 1:length(l)){
  dataftot$poptot[i] = l[i]
}


dataftot$poptot<- as.numeric(dataftot$poptot)
write.csv(dataftot,"countyTotalPopincpc.csv")
write.csv(datanew2,"locpollutant.csv")
datanew2$county<-"a"
datanew2$INCPC<-"a"
datanew2$popdens<-"a"
datanew2[datanew2$geoname=="LRG",]$county<-"Northampton, PA"
datanew2[datanew2$geoname=="DRB",]$county<-"Philadelphia, PA"
datanew2[datanew2$geoname=="SRVD",]$county<-"Montgomery, PA"
datanew2[datanew2$geoname=="DRC",]$county<-"Delaware, PA"
datanew2[datanew2$geoname=="WBBC",]$county<-"Chester, PA"
datanew2[datanew2$geoname=="EBBC",]$county<-"Chester, PA"
datanew2[datanew2$geoname=="BCC",]$county<-"Delaware, PA"
datanew2[datanew2$geoname=="KCCF",]$county<-"Clinton, PA"
datanew2[datanew2$geoname=="PCPCW",]$county<-"Lycoming, PA"
datanew2[datanew2$geoname=="ARPA",]$county<-"McKean, PA"
datanew2[datanew2$geoname=="ARF",]$county<-"Venango, PA"
datanew2[datanew2$geoname=="MCP",]$county<-"Jefferson, PA"
datanew2[datanew2$geoname=="MCMC",]$county<-"Armstrong, PA"
datanew2[datanew2$geoname=="ARLD",]$county<-"Armstrong, PA"
datanew2[datanew2$geoname=="ARBLD",]$county<-"Armstrong, PA"
datanew2[datanew2$geoname=="ARBD",]$county<-"Armstrong, PA"
datanew2[datanew2$geoname=="ARLF",]$county<-"Armstrong, PA"
datanew2[datanew2$geoname=="ARCWBY",]$county<-"Westmoreland, PA"
datanew2[datanew2$geoname=="SFTCJ",]$county<-"Greene, PA"
datanew2[datanew2$geoname=="MRE",]$county<-"Allegheny, PA"
datanew2[datanew2$geoname=="YRDOT",]$county<-"Somerset, PA"
datanew2[datanew2$geoname=="YRBC",]$county<-"Fayette, PA"
datanew2[datanew2$geoname=="YRAS",]$county<-"Allegheny, PA"
datanew2[datanew2$geoname=="BRW",]$county<-"Lawrence, PA"
datanew2[datanew2$geoname=="CCZ",]$county<-"Beaver, PA"
datanew2[datanew2$geoname=="ORMDL",]$county<-"Beaver, PA"
datanew2[datanew2$geoname=="WCUPE",]$county<-"Erie, PA"
datatry<-dataftot
newdattry<-merge(dataftot,datarea,by.x = c("geoname"),by.y=c("GeoName"))
write.csv(newdattry,"countyTotalPopincpc.csv")
newdattry<-read.csv("countyTotalPopincpc.csv")
newdattry<-newdattry[,-c(1,5,6)]

datax<-newdattry
datay<-datanew2[c(1,2,3,4)]
colnames(datax)<-c("county" ,"year"   , "incper" ,"popdens")

datay$county<-as.factor(datay$county)


tempdataz<-merge(datax,datay,by.x=c("county","year") ,by.y= c("county","year") )
tempdataz<-tempdataz[c(5,1,2,3,4,6)]
tempdataz<-tempdataz[order(tempdataz$geoname),]
write.csv(tempdataz,"finaldataset1.csv")
summary(tempdataz)

sd(tempdataz$DO)
tempdataz<-read.csv("finaldataset1.csv")
write.csv(tempdataz,"finaldataset1.csv")
library(plm)
tempdataz$incper2<-tempdataz$incper^2
tempdataz$incper3<-tempdataz$incper^3

summary(lm(formula = DO~incper+incper2+popdens+geoname+as.factor(urbanrural),data=tempdataz))

cbp15 <- read.csv("~/Desktop/college/econ441/cbp15co.txt", header=FALSE)
cbp15<-cbp15[cbp15$V1=="42",]
colnames(cbp15)<-c("FIPSTATE","FIPSCTY","NAICS","EMPFLAG","EMP_NF","EMP","QP1_NF","QP1","AP_NF","AP","EST","N1_4","N5_9","N10_19","N20_49","N50_99","N100_249","N250_499","N500_999","N1000","N1000_1","N1000_2","N1000_3","N1000_4","CENSTATE","CENCTY")
levels(tempdataz$county)
# [1] "Allegheny, PA"    "Armstrong, PA"    "Beaver, PA"       "Chester, PA"      "Clinton, PA"     
# [6] "Delaware, PA"     "Erie, PA"         "Fayette, PA"      "Greene, PA"       "Jefferson, PA"   
# [11] "Lawrence, PA"     "Lycoming, PA"     "McKean, PA"       "Montgomery, PA"   "Northampton, PA" 
# [16] "Philadelphia, PA" "Somerset, PA"     "Venango, PA"      "Westmoreland, PA"
cbp15<-cbp15[cbp15$FIPSCTY=="003"|cbp15$FIPSCTY=="005"|cbp15$FIPSCTY=="007"|cbp15$FIPSCTY=="029"|cbp15$FIPSCTY=="035"|cbp15$FIPSCTY=="045"
              |cbp15$FIPSCTY=="049"|cbp15$FIPSCTY=="051"|cbp15$FIPSCTY=="059"|cbp15$FIPSCTY=="065"|
               cbp15$FIPSCTY=="073"|cbp15$FIPSCTY=="081"|cbp15$FIPSCTY=="083"|cbp15$FIPSCTY=="091"|cbp15$FIPSCTY=="095"|cbp15$FIPSCTY=="101"|
               cbp15$FIPSCTY=="111"|cbp15$FIPSCTY=="121"|cbp15$FIPSCTY=="129",]


#dance
cbp15[cbp15$NAICS =="71112/",]$NAICS
#bowling
cbp15[cbp15$NAICS =="71395/",]$NAICS
#(c) Music, amusement, recreation services.
"71113/" 
#(d) Public golf courses
cbp15[cbp15$NAICS =="71391/",]
#(e) Membership sports and recreation clubs 
cbp15[cbp15$NAICS =="61162/",] 

#Business associations   
cbp15[cbp15$NAICS =="81391/",] 
#(b) Professional organization   
cbp15[cbp15$NAICS =="81392/",] 
#(c) Labor organization   
cbp15[cbp15$NAICS =="81393/",] 
#(d) Civic and social organization    
cbp15[cbp15$NAICS =="8134//",] 
#(e) Political organization   
cbp15[cbp15$NAICS =="81394/",] 
#(f) Religious organization 
cbp15[cbp15$NAICS =="8131//",]

levels(tempdataz$county)
sc15<-cbp15[cbp15$NAICS =="8131//"|cbp15$NAICS =="81394/"|cbp15$NAICS =="8134//"|cbp15$NAICS =="81393/"|
              cbp15$NAICS =="81392/"|cbp15$NAICS =="81391/"|cbp15$NAICS =="61162/"|cbp15$NAICS =="71391/"|cbp15$NAICS =="71395/"|
              cbp15$NAICS =="71112/"|cbp15$NAICS =="71113/",]
county<-c("Allegheny, PA","Armstrong, PA","Beaver, PA","Chester, PA","Clinton, PA" ,"Delaware, PA",
          "Erie, PA" ,  "Fayette, PA" ,"Greene, PA" , "Jefferson, PA" , "Lawrence, PA","Lycoming, PA" ,
          "McKean, PA" , "Montgomery, PA",   "Northampton, PA" ,
          "Philadelphia, PA", "Somerset, PA"  ,   "Venango, PA"   ,   "Westmoreland, PA")
number<-c("003","005","007","029","035","045","049","051","059","065","073",
          "081","083","091","095","101","111","121","129")
sc151<-data.frame(county,number)

sc151$dance<-rep(0,nrow(sc151))
sc151$bowling<-rep(0,nrow(sc151))
sc151$mar<-rep(0,nrow(sc151))
sc151$golf<-rep(0,nrow(sc151))
sc151$sport<-rep(0,nrow(sc151))
sc151$business<-rep(0,nrow(sc151))
sc151$prof<-rep(0,nrow(sc151))
sc151$labor<-rep(0,nrow(sc151))
sc151$civic<-rep(0,nrow(sc151))
sc151$polit<-rep(0,nrow(sc151))
sc151$relig<-rep(0,nrow(sc151))
sc15$FIPSCTY<-factor(sc15$FIPSCTY,levels = levels(sc151$number))

for(i in 1:nrow(sc15)){
  if(sc15$NAICS[i]=="71112/"){
    sc151[sc151$number==sc15$FIPSCTY[i],]$dance <- as.numeric(as.character(sc15$EST[i]))
  }
  if(sc15$NAICS[i]=="71395/"){
    sc151[sc151$number==sc15$FIPSCTY[i],]$bowling <-  as.numeric(as.character(sc15$EST[i]))
  }
  if(sc15$NAICS[i]=="71113/"){
    sc151[sc151$number==sc15$FIPSCTY[i],]$mar <-  as.numeric(as.character(sc15$EST[i]))
  }
  if(sc15$NAICS[i]=="71391/"){
    sc151[sc151$number==sc15$FIPSCTY[i],]$golf <-  as.numeric(as.character(sc15$EST[i]))
  }
  if(sc15$NAICS[i]=="61162/"){
    sc151[sc151$number==sc15$FIPSCTY[i],]$sport <-  as.numeric(as.character(sc15$EST[i]))
  }
  if(sc15$NAICS[i]=="81391/"){
    sc151[sc151$number==sc15$FIPSCTY[i],]$business <-  as.numeric(as.character(sc15$EST[i]))
  }
  if(sc15$NAICS[i]=="81392/"){
    sc151[sc151$number==sc15$FIPSCTY[i],]$prof<-  as.numeric(as.character(sc15$EST[i]))
  }
  if(sc15$NAICS[i]=="81393/"){
    sc151[sc151$number==sc15$FIPSCTY[i],]$labor<-  as.numeric(as.character(sc15$EST[i]))
  }
  if(sc15$NAICS[i]=="8134//"){
    sc151[sc151$number==sc15$FIPSCTY[i],]$civic<-  as.numeric(as.character(sc15$EST[i]))
  }
  if(sc15$NAICS[i]=="81394/"){
    sc151[sc151$number==sc15$FIPSCTY[i],]$polit<-  as.numeric(as.character(sc15$EST[i]))
  }
  if(sc15$NAICS[i]=="8131//"){
    sc151[sc151$number==sc15$FIPSCTY[i],]$relig<-  as.numeric(as.character(sc15$EST[i]))
  }
}

poptotdat15<-data.frame(dataftot[dataftot$year==2015,]$geoname,dataftot[dataftot$year==2015,]$poptot/10000)
colnames(poptotdat15)<-c("county","poptot")
sci15try<-merge(poptotdat15,sc151,by.x = c("county"),by.y=c("county"))
sci15try[,c(4:ncol(sci15try))]<-sci15try[,c(4:ncol(sci15try))]/sci15try$poptot
sci15try$year<-2015

# temptry<-c(1:75281)
# temptryn<-data.frame(temptry)
# temptryn$new<-16.88-0.000448*temptryn$temptry+8.043*10^(-9)*temptryn$temptry^2-4.682*10^(-14)*temptryn$temptry^3
#plot(temptryn$temptry,temptryn$new)
# temptryn$new1<-10.17-0.000456*temptryn$temptry+6.743*10^(-10)*temptryn$temptry^2
# plot(temptryn$temptry,temptryn$new1)

#sc14

cbp14 <- read.csv("~/Desktop/college/econ441/cbp14co.txt", header=FALSE)
cbp14<-cbp14[cbp14$V1=="42",]
colnames(cbp14)<-c("FIPSTATE","FIPSCTY","NAICS","EMPFLAG","EMP_NF","EMP","QP1_NF","QP1","AP_NF","AP","EST","N1_4","N5_9","N10_19","N20_49","N50_99","N100_249","N250_499","N500_999","N1000","N1000_1","N1000_2","N1000_3","N1000_4","CENSTATE","CENCTY")
levels(tempdataz$county)
# [1] "Allegheny, PA"    "Armstrong, PA"    "Beaver, PA"       "Chester, PA"      "Clinton, PA"     
# [6] "Delaware, PA"     "Erie, PA"         "Fayette, PA"      "Greene, PA"       "Jefferson, PA"   
# [11] "Lawrence, PA"     "Lycoming, PA"     "McKean, PA"       "Montgomery, PA"   "Northampton, PA" 
# [16] "Philadelphia, PA" "Somerset, PA"     "Venango, PA"      "Westmoreland, PA"
cbp14<-cbp14[cbp14$FIPSCTY=="003"|cbp14$FIPSCTY=="005"|cbp14$FIPSCTY=="007"|cbp14$FIPSCTY=="029"|cbp14$FIPSCTY=="035"|cbp14$FIPSCTY=="045"
             |cbp14$FIPSCTY=="049"|cbp14$FIPSCTY=="051"|cbp14$FIPSCTY=="059"|cbp14$FIPSCTY=="065"|
               cbp14$FIPSCTY=="073"|cbp14$FIPSCTY=="081"|cbp14$FIPSCTY=="083"|cbp14$FIPSCTY=="091"|cbp14$FIPSCTY=="095"|cbp14$FIPSCTY=="101"|
               cbp14$FIPSCTY=="111"|cbp14$FIPSCTY=="121"|cbp14$FIPSCTY=="129",]




levels(tempdataz$county)
sc14<-cbp14[cbp14$NAICS =="8131//"|cbp14$NAICS =="81394/"|cbp14$NAICS =="8134//"|cbp14$NAICS =="81393/"|
              cbp14$NAICS =="81392/"|cbp14$NAICS =="81391/"|cbp14$NAICS =="61162/"|cbp14$NAICS =="71391/"|cbp14$NAICS =="71395/"|
              cbp14$NAICS =="71112/"|cbp14$NAICS =="71113/",]
county<-c("Allegheny, PA","Armstrong, PA","Beaver, PA","Chester, PA","Clinton, PA" ,"Delaware, PA",
          "Erie, PA" ,  "Fayette, PA" ,"Greene, PA" , "Jefferson, PA" , "Lawrence, PA","Lycoming, PA" ,
          "McKean, PA" , "Montgomery, PA",   "Northampton, PA" ,
          "Philadelphia, PA", "Somerset, PA"  ,   "Venango, PA"   ,   "Westmoreland, PA")
number<-c("003","005","007","029","035","045","049","051","059","065","073",
          "081","083","091","095","101","111","121","129")
sc141<-data.frame(county,number)

sc141$dance<-rep(0,nrow(sc141))
sc141$bowling<-rep(0,nrow(sc141))
sc141$mar<-rep(0,nrow(sc141))
sc141$golf<-rep(0,nrow(sc141))
sc141$sport<-rep(0,nrow(sc141))
sc141$business<-rep(0,nrow(sc141))
sc141$prof<-rep(0,nrow(sc141))
sc141$labor<-rep(0,nrow(sc141))
sc141$civic<-rep(0,nrow(sc141))
sc141$polit<-rep(0,nrow(sc141))
sc141$relig<-rep(0,nrow(sc141))
sc14$FIPSCTY<-factor(sc14$FIPSCTY,levels = levels(sc141$number))

for(i in 1:nrow(sc14)){
  if(sc14$NAICS[i]=="71112/"){
    sc141[sc141$number==sc14$FIPSCTY[i],]$dance <- as.numeric(as.character(sc14$EST[i]))
  }
  if(sc14$NAICS[i]=="71395/"){
    sc141[sc141$number==sc14$FIPSCTY[i],]$bowling <-  as.numeric(as.character(sc14$EST[i]))
  }
  if(sc14$NAICS[i]=="71113/"){
    sc141[sc141$number==sc14$FIPSCTY[i],]$mar <-  as.numeric(as.character(sc14$EST[i]))
  }
  if(sc14$NAICS[i]=="71391/"){
    sc141[sc141$number==sc14$FIPSCTY[i],]$golf <-  as.numeric(as.character(sc14$EST[i]))
  }
  if(sc14$NAICS[i]=="61162/"){
    sc141[sc141$number==sc14$FIPSCTY[i],]$sport <-  as.numeric(as.character(sc14$EST[i]))
  }
  if(sc14$NAICS[i]=="81391/"){
    sc141[sc141$number==sc14$FIPSCTY[i],]$business <-  as.numeric(as.character(sc14$EST[i]))
  }
  if(sc14$NAICS[i]=="81392/"){
    sc141[sc141$number==sc14$FIPSCTY[i],]$prof<-  as.numeric(as.character(sc14$EST[i]))
  }
  if(sc14$NAICS[i]=="81393/"){
    sc141[sc141$number==sc14$FIPSCTY[i],]$labor<-  as.numeric(as.character(sc14$EST[i]))
  }
  if(sc14$NAICS[i]=="8134//"){
    sc141[sc141$number==sc14$FIPSCTY[i],]$civic<-  as.numeric(as.character(sc14$EST[i]))
  }
  if(sc14$NAICS[i]=="81394/"){
    sc141[sc141$number==sc14$FIPSCTY[i],]$polit<-  as.numeric(as.character(sc14$EST[i]))
  }
  if(sc14$NAICS[i]=="8131//"){
    sc141[sc141$number==sc14$FIPSCTY[i],]$relig<-  as.numeric(as.character(sc14$EST[i]))
  }
}

poptotdat14<-data.frame(dataftot[dataftot$year==2014,]$geoname,dataftot[dataftot$year==2014,]$poptot/10000)
colnames(poptotdat14)<-c("county","poptot")
sci14try<-merge(poptotdat14,sc141,by.x = c("county"),by.y=c("county"))
sci14try[,c(4:ncol(sci14try))]<-sci14try[,c(4:ncol(sci14try))]/sci14try$poptot
sci14try$year<-2014

#sc13

cbp13 <- read.csv("~/Desktop/college/econ441/cbp13co.txt", header=FALSE)
cbp13<-cbp13[cbp13$V1=="42",]
colnames(cbp13)<-c("FIPSTATE","FIPSCTY","NAICS","EMPFLAG","EMP_NF","EMP","QP1_NF","QP1","AP_NF","AP","EST","N1_4","N5_9","N10_19","N20_49","N50_99","N100_249","N250_499","N500_999","N1000","N1000_1","N1000_2","N1000_3","N1000_4","CENSTATE","CENCTY")
cbp13<-cbp13[cbp13$FIPSCTY=="003"|cbp13$FIPSCTY=="005"|cbp13$FIPSCTY=="007"|cbp13$FIPSCTY=="029"|cbp13$FIPSCTY=="035"|cbp13$FIPSCTY=="045"
             |cbp13$FIPSCTY=="049"|cbp13$FIPSCTY=="051"|cbp13$FIPSCTY=="059"|cbp13$FIPSCTY=="065"|
               cbp13$FIPSCTY=="073"|cbp13$FIPSCTY=="081"|cbp13$FIPSCTY=="083"|cbp13$FIPSCTY=="091"|cbp13$FIPSCTY=="095"|cbp13$FIPSCTY=="101"|
               cbp13$FIPSCTY=="111"|cbp13$FIPSCTY=="121"|cbp13$FIPSCTY=="129",]


sc13<-cbp13[cbp13$NAICS =="8131//"|cbp13$NAICS =="81394/"|cbp13$NAICS =="8134//"|cbp13$NAICS =="81393/"|
              cbp13$NAICS =="81392/"|cbp13$NAICS =="81391/"|cbp13$NAICS =="61162/"|cbp13$NAICS =="71391/"|cbp13$NAICS =="71395/"|
              cbp13$NAICS =="71112/"|cbp13$NAICS =="71113/",]
county<-c("Allegheny, PA","Armstrong, PA","Beaver, PA","Chester, PA","Clinton, PA" ,"Delaware, PA",
          "Erie, PA" ,  "Fayette, PA" ,"Greene, PA" , "Jefferson, PA" , "Lawrence, PA","Lycoming, PA" ,
          "McKean, PA" , "Montgomery, PA",   "Northampton, PA" ,
          "Philadelphia, PA", "Somerset, PA"  ,   "Venango, PA"   ,   "Westmoreland, PA")
number<-c("003","005","007","029","035","045","049","051","059","065","073",
          "081","083","091","095","101","111","121","129")
sc131<-data.frame(county,number)

sc131$dance<-rep(0,nrow(sc131))
sc131$bowling<-rep(0,nrow(sc131))
sc131$mar<-rep(0,nrow(sc131))
sc131$golf<-rep(0,nrow(sc131))
sc131$sport<-rep(0,nrow(sc131))
sc131$business<-rep(0,nrow(sc131))
sc131$prof<-rep(0,nrow(sc131))
sc131$labor<-rep(0,nrow(sc131))
sc131$civic<-rep(0,nrow(sc131))
sc131$polit<-rep(0,nrow(sc131))
sc131$relig<-rep(0,nrow(sc131))
sc13$FIPSCTY<-factor(sc13$FIPSCTY,levels = levels(sc131$number))

for(i in 1:nrow(sc13)){
  if(sc13$NAICS[i]=="71112/"){
    sc131[sc131$number==sc13$FIPSCTY[i],]$dance <- as.numeric(as.character(sc13$EST[i]))
  }
  if(sc13$NAICS[i]=="71395/"){
    sc131[sc131$number==sc13$FIPSCTY[i],]$bowling <-  as.numeric(as.character(sc13$EST[i]))
  }
  if(sc13$NAICS[i]=="71113/"){
    sc131[sc131$number==sc13$FIPSCTY[i],]$mar <-  as.numeric(as.character(sc13$EST[i]))
  }
  if(sc13$NAICS[i]=="71391/"){
    sc131[sc131$number==sc13$FIPSCTY[i],]$golf <-  as.numeric(as.character(sc13$EST[i]))
  }
  if(sc13$NAICS[i]=="61162/"){
    sc131[sc131$number==sc13$FIPSCTY[i],]$sport <-  as.numeric(as.character(sc13$EST[i]))
  }
  if(sc13$NAICS[i]=="81391/"){
    sc131[sc131$number==sc13$FIPSCTY[i],]$business <-  as.numeric(as.character(sc13$EST[i]))
  }
  if(sc13$NAICS[i]=="81392/"){
    sc131[sc131$number==sc13$FIPSCTY[i],]$prof<-  as.numeric(as.character(sc13$EST[i]))
  }
  if(sc13$NAICS[i]=="81393/"){
    sc131[sc131$number==sc13$FIPSCTY[i],]$labor<-  as.numeric(as.character(sc13$EST[i]))
  }
  if(sc13$NAICS[i]=="8134//"){
    sc131[sc131$number==sc13$FIPSCTY[i],]$civic<-  as.numeric(as.character(sc13$EST[i]))
  }
  if(sc13$NAICS[i]=="81394/"){
    sc131[sc131$number==sc13$FIPSCTY[i],]$polit<-  as.numeric(as.character(sc13$EST[i]))
  }
  if(sc13$NAICS[i]=="8131//"){
    sc131[sc131$number==sc13$FIPSCTY[i],]$relig<-  as.numeric(as.character(sc13$EST[i]))
  }
}

poptotdat13<-data.frame(dataftot[dataftot$year==2013,]$geoname,dataftot[dataftot$year==2013,]$poptot/10000)
colnames(poptotdat13)<-c("county","poptot")
sci13try<-merge(poptotdat13,sc131,by.x = c("county"),by.y=c("county"))
sci13try[,c(4:ncol(sci13try))]<-sci13try[,c(4:ncol(sci13try))]/sci13try$poptot

#sc12

cbp12 <- read.csv("~/Desktop/college/econ441/cbp12co.txt", header=FALSE)
cbp12<-cbp12[cbp12$V1=="42",]
colnames(cbp12)<-c("FIPSTATE","FIPSCTY","NAICS","EMPFLAG","EMP_NF","EMP","QP1_NF","QP1","AP_NF","AP","EST","N1_4","N5_9","N10_19","N20_49","N50_99","N100_249","N250_499","N500_999","N1000","N1000_1","N1000_2","N1000_3","N1000_4","CENSTATE","CENCTY")
cbp12<-cbp12[cbp12$FIPSCTY=="003"|cbp12$FIPSCTY=="005"|cbp12$FIPSCTY=="007"|cbp12$FIPSCTY=="029"|cbp12$FIPSCTY=="035"|cbp12$FIPSCTY=="045"
             |cbp12$FIPSCTY=="049"|cbp12$FIPSCTY=="051"|cbp12$FIPSCTY=="059"|cbp12$FIPSCTY=="065"|
               cbp12$FIPSCTY=="073"|cbp12$FIPSCTY=="081"|cbp12$FIPSCTY=="083"|cbp12$FIPSCTY=="091"|cbp12$FIPSCTY=="095"|cbp12$FIPSCTY=="101"|
               cbp12$FIPSCTY=="111"|cbp12$FIPSCTY=="121"|cbp12$FIPSCTY=="129",]


sc12<-cbp12[cbp12$NAICS =="8131//"|cbp12$NAICS =="81394/"|cbp12$NAICS =="8134//"|cbp12$NAICS =="81393/"|
              cbp12$NAICS =="81392/"|cbp12$NAICS =="81391/"|cbp12$NAICS =="61162/"|cbp12$NAICS =="71391/"|cbp12$NAICS =="71395/"|
              cbp12$NAICS =="71112/"|cbp12$NAICS =="71113/",]
county<-c("Allegheny, PA","Armstrong, PA","Beaver, PA","Chester, PA","Clinton, PA" ,"Delaware, PA",
          "Erie, PA" ,  "Fayette, PA" ,"Greene, PA" , "Jefferson, PA" , "Lawrence, PA","Lycoming, PA" ,
          "McKean, PA" , "Montgomery, PA",   "Northampton, PA" ,
          "Philadelphia, PA", "Somerset, PA"  ,   "Venango, PA"   ,   "Westmoreland, PA")
number<-c("003","005","007","029","035","045","049","051","059","065","073",
          "081","083","091","095","101","111","121","129")
sc121<-data.frame(county,number)

sc121$dance<-rep(0,nrow(sc121))
sc121$bowling<-rep(0,nrow(sc121))
sc121$mar<-rep(0,nrow(sc121))
sc121$golf<-rep(0,nrow(sc121))
sc121$sport<-rep(0,nrow(sc121))
sc121$business<-rep(0,nrow(sc121))
sc121$prof<-rep(0,nrow(sc121))
sc121$labor<-rep(0,nrow(sc121))
sc121$civic<-rep(0,nrow(sc121))
sc121$polit<-rep(0,nrow(sc121))
sc121$relig<-rep(0,nrow(sc121))
sc12$FIPSCTY<-factor(sc12$FIPSCTY,levels = levels(sc121$number))

for(i in 1:nrow(sc12)){
  if(sc12$NAICS[i]=="71112/"){
    sc121[sc121$number==sc12$FIPSCTY[i],]$dance <- as.numeric(as.character(sc12$EST[i]))
  }
  if(sc12$NAICS[i]=="71395/"){
    sc121[sc121$number==sc12$FIPSCTY[i],]$bowling <-  as.numeric(as.character(sc12$EST[i]))
  }
  if(sc12$NAICS[i]=="71113/"){
    sc121[sc121$number==sc12$FIPSCTY[i],]$mar <-  as.numeric(as.character(sc12$EST[i]))
  }
  if(sc12$NAICS[i]=="71391/"){
    sc121[sc121$number==sc12$FIPSCTY[i],]$golf <-  as.numeric(as.character(sc12$EST[i]))
  }
  if(sc12$NAICS[i]=="61162/"){
    sc121[sc121$number==sc12$FIPSCTY[i],]$sport <-  as.numeric(as.character(sc12$EST[i]))
  }
  if(sc12$NAICS[i]=="81391/"){
    sc121[sc121$number==sc12$FIPSCTY[i],]$business <-  as.numeric(as.character(sc12$EST[i]))
  }
  if(sc12$NAICS[i]=="81392/"){
    sc121[sc121$number==sc12$FIPSCTY[i],]$prof<-  as.numeric(as.character(sc12$EST[i]))
  }
  if(sc12$NAICS[i]=="81393/"){
    sc121[sc121$number==sc12$FIPSCTY[i],]$labor<-  as.numeric(as.character(sc12$EST[i]))
  }
  if(sc12$NAICS[i]=="8134//"){
    sc121[sc121$number==sc12$FIPSCTY[i],]$civic<-  as.numeric(as.character(sc12$EST[i]))
  }
  if(sc12$NAICS[i]=="81394/"){
    sc121[sc121$number==sc12$FIPSCTY[i],]$polit<-  as.numeric(as.character(sc12$EST[i]))
  }
  if(sc12$NAICS[i]=="8131//"){
    sc121[sc121$number==sc12$FIPSCTY[i],]$relig<-  as.numeric(as.character(sc12$EST[i]))
  }
}

poptotdat12<-data.frame(dataftot[dataftot$year==2012,]$geoname,dataftot[dataftot$year==2012,]$poptot/10000)
colnames(poptotdat12)<-c("county","poptot")
sci12try<-merge(poptotdat12,sc121,by.x = c("county"),by.y=c("county"))
sci12try[,c(4:ncol(sci12try))]<-sci12try[,c(4:ncol(sci12try))]/sci12try$poptot

#sc11

cbp11 <- read.csv("~/Desktop/college/econ441/cbp11co.txt", header=FALSE)
cbp11<-cbp11[cbp11$V1=="42",]
colnames(cbp11)<-c("FIPSTATE","FIPSCTY","NAICS","EMPFLAG","EMP_NF","EMP","QP1_NF","QP1","AP_NF","AP","EST","N1_4","N5_9","N10_19","N20_49","N50_99","N100_249","N250_499","N500_999","N1000","N1000_1","N1000_2","N1000_3","N1000_4","CENSTATE","CENCTY")
cbp11<-cbp11[cbp11$FIPSCTY=="003"|cbp11$FIPSCTY=="005"|cbp11$FIPSCTY=="007"|cbp11$FIPSCTY=="029"|cbp11$FIPSCTY=="035"|cbp11$FIPSCTY=="045"
             |cbp11$FIPSCTY=="049"|cbp11$FIPSCTY=="051"|cbp11$FIPSCTY=="059"|cbp11$FIPSCTY=="065"|
               cbp11$FIPSCTY=="073"|cbp11$FIPSCTY=="081"|cbp11$FIPSCTY=="083"|cbp11$FIPSCTY=="091"|cbp11$FIPSCTY=="095"|cbp11$FIPSCTY=="101"|
               cbp11$FIPSCTY=="111"|cbp11$FIPSCTY=="121"|cbp11$FIPSCTY=="129",]


sc11<-cbp11[cbp11$NAICS =="8131//"|cbp11$NAICS =="81394/"|cbp11$NAICS =="8134//"|cbp11$NAICS =="81393/"|
              cbp11$NAICS =="81392/"|cbp11$NAICS =="81391/"|cbp11$NAICS =="61162/"|cbp11$NAICS =="71391/"|cbp11$NAICS =="71395/"|
              cbp11$NAICS =="71112/"|cbp11$NAICS =="71113/",]
county<-c("Allegheny, PA","Armstrong, PA","Beaver, PA","Chester, PA","Clinton, PA" ,"Delaware, PA",
          "Erie, PA" ,  "Fayette, PA" ,"Greene, PA" , "Jefferson, PA" , "Lawrence, PA","Lycoming, PA" ,
          "McKean, PA" , "Montgomery, PA",   "Northampton, PA" ,
          "Philadelphia, PA", "Somerset, PA"  ,   "Venango, PA"   ,   "Westmoreland, PA")
number<-c("003","005","007","029","035","045","049","051","059","065","073",
          "081","083","091","095","101","111","121","129")
sc111<-data.frame(county,number)

sc111$dance<-rep(0,nrow(sc111))
sc111$bowling<-rep(0,nrow(sc111))
sc111$mar<-rep(0,nrow(sc111))
sc111$golf<-rep(0,nrow(sc111))
sc111$sport<-rep(0,nrow(sc111))
sc111$business<-rep(0,nrow(sc111))
sc111$prof<-rep(0,nrow(sc111))
sc111$labor<-rep(0,nrow(sc111))
sc111$civic<-rep(0,nrow(sc111))
sc111$polit<-rep(0,nrow(sc111))
sc111$relig<-rep(0,nrow(sc111))
sc11$FIPSCTY<-factor(sc11$FIPSCTY,levels = levels(sc111$number))

for(i in 1:nrow(sc11)){
  if(sc11$NAICS[i]=="71112/"){
    sc111[sc111$number==sc11$FIPSCTY[i],]$dance <- as.numeric(as.character(sc11$EST[i]))
  }
  if(sc11$NAICS[i]=="71395/"){
    sc111[sc111$number==sc11$FIPSCTY[i],]$bowling <-  as.numeric(as.character(sc11$EST[i]))
  }
  if(sc11$NAICS[i]=="71113/"){
    sc111[sc111$number==sc11$FIPSCTY[i],]$mar <-  as.numeric(as.character(sc11$EST[i]))
  }
  if(sc11$NAICS[i]=="71391/"){
    sc111[sc111$number==sc11$FIPSCTY[i],]$golf <-  as.numeric(as.character(sc11$EST[i]))
  }
  if(sc11$NAICS[i]=="61162/"){
    sc111[sc111$number==sc11$FIPSCTY[i],]$sport <-  as.numeric(as.character(sc11$EST[i]))
  }
  if(sc11$NAICS[i]=="81391/"){
    sc111[sc111$number==sc11$FIPSCTY[i],]$business <-  as.numeric(as.character(sc11$EST[i]))
  }
  if(sc11$NAICS[i]=="81392/"){
    sc111[sc111$number==sc11$FIPSCTY[i],]$prof<-  as.numeric(as.character(sc11$EST[i]))
  }
  if(sc11$NAICS[i]=="81393/"){
    sc111[sc111$number==sc11$FIPSCTY[i],]$labor<-  as.numeric(as.character(sc11$EST[i]))
  }
  if(sc11$NAICS[i]=="8134//"){
    sc111[sc111$number==sc11$FIPSCTY[i],]$civic<-  as.numeric(as.character(sc11$EST[i]))
  }
  if(sc11$NAICS[i]=="81394/"){
    sc111[sc111$number==sc11$FIPSCTY[i],]$polit<-  as.numeric(as.character(sc11$EST[i]))
  }
  if(sc11$NAICS[i]=="8131//"){
    sc111[sc111$number==sc11$FIPSCTY[i],]$relig<-  as.numeric(as.character(sc11$EST[i]))
  }
}

poptotdat11<-data.frame(dataftot[dataftot$year==2011,]$geoname,dataftot[dataftot$year==2011,]$poptot/10000)
colnames(poptotdat11)<-c("county","poptot")
sci11try<-merge(poptotdat11,sc111,by.x = c("county"),by.y=c("county"))
sci11try[,c(4:ncol(sci11try))]<-sci11try[,c(4:ncol(sci11try))]/sci11try$poptot
sci11try$year<-2011
sci12try$year<-2012
sci13try$year<-2013


if(!require(devtools)) install.packages("devtools")
devtools::install_github("kassambara/factoextra")
library(factoextra)
pca15<-prcomp(sci15try[4:14],scale= T)
fviz_eig(pca15)
pca15$rotation
scitot<-rbind(sci11try,sci12try,sci13try,sci14try,sci15try)
pcatot<-prcomp(scitot[4:14],scale = T)
pcatot$rotation
summary(pcatot)
fviz_eig(pcatot)

sci15try$sci<--0.2317738*sci15try$dance+0.2345937*sci15try$bowling-0.1924869*sci15try$mar+0.3488909*sci15try$golf-0.3232822*sci15try$sport+0.1745966*sci15try$business-0.3057400*sci15try$prof+0.1258170*sci15try$labor+0.4594711*sci15try$civic-0.3054906*sci15try$polit+0.4286376*sci15try$relig
sci14try$sci<--0.2317738*sci14try$dance+0.2345937*sci14try$bowling-0.1924869*sci14try$mar+0.3488909*sci14try$golf-0.3232822*sci14try$sport+0.1745966*sci14try$business-0.3057400*sci14try$prof+0.1258170*sci14try$labor+0.4594711*sci14try$civic-0.3054906*sci14try$polit+0.4286376*sci14try$relig
sci13try$sci<--0.2317738*sci13try$dance+0.2345937*sci13try$bowling-0.1924869*sci13try$mar+0.3488909*sci13try$golf-0.3232822*sci13try$sport+0.1745966*sci13try$business-0.3057400*sci13try$prof+0.1258170*sci13try$labor+0.4594711*sci13try$civic-0.3054906*sci13try$polit+0.4286376*sci13try$relig
sci12try$sci<--0.2317738*sci12try$dance+0.2345937*sci12try$bowling-0.1924869*sci12try$mar+0.3488909*sci12try$golf-0.3232822*sci12try$sport+0.1745966*sci12try$business-0.3057400*sci12try$prof+0.1258170*sci12try$labor+0.4594711*sci12try$civic-0.3054906*sci12try$polit+0.4286376*sci12try$relig
sci11try$sci<--0.2317738*sci11try$dance+0.2345937*sci11try$bowling-0.1924869*sci11try$mar+0.3488909*sci11try$golf-0.3232822*sci11try$sport+0.1745966*sci11try$business-0.3057400*sci11try$prof+0.1258170*sci11try$labor+0.4594711*sci11try$civic-0.3054906*sci11try$polit+0.4286376*sci11try$relig
sci11try$sci<-sci11try$sci/8.826976
sci12try$sci<-sci12try$sci/8.737186
sci13try$sci<-sci13try$sci/8.841049
sci14try$sci<-sci14try$sci/8.768678
sci15try$sci<-sci15try$sci/8.915282
sci16try<-sci15try
sci16try$year<-2016

scitot<-rbind(sci11try,sci12try,sci13try,sci14try,sci15try,sci16try)
scitot<-data.frame(scitot$county,scitot$year,scitot$sci)
colnames(scitot)<-c("county","year","SCI")
newtempdataz<-merge(tempdataz,scitot,by.x=c("county","year") ,by.y= c("county","year"))
newtempdataz<-newtempdataz[c(4,1,2,3,5,6,7,8,9,10,11)]
newtempdataz<-newtempdataz[order(newtempdataz$geoname),]
newtempdataz$sci2 = newtempdataz$SCI^2
newtempdataz$sci3 = newtempdataz$SCI^3
library(plm)
cor(newtempdataz$incper,newtempdataz$SCI)


summary(plm(formula = DO~incper+incper2+popdens+as.factor(urbanrural),data=newtempdataz,model = "within",index = c("year","geoname")))
summary(plm(formula = DO~incper+incper2+incper3+popdens+as.factor(urbanrural),data=newtempdataz,model = "within",index = c("year","geoname")))

modelic<-plm(formula = DO~incper+incper2+popdens,data=newtempdataz,model = "within",index = c("year","geoname"))
modelic1<-plm(formula = DO~incper+incper2+popdens,data=newtempdataz,model = "random",index = c("year","geoname"))
phtest(modelic1,modelic)
summary(modelic)

summary(plm(formula = DO~incper+incper2+popdens+as.factor(urbanrural),data=newtempdataz,model = "random",index = c("year","geoname")))
summary(plm(formula = DO~incper+incper2+incper3+popdens+as.factor(urbanrural),data=newtempdataz,model = "random",index = c("year","geoname")))

summary(m1<-plm(formula = DO~incper+incper2+SCI+sci2+sci3+popdens+as.factor(urbanrural),data=newtempdataz,model = "within",index = c("year")))

summary(plm(formula = DO~SCI+sci2+popdens+as.factor(urbanrural),data=newtempdataz,model = "within",index = c("year","geoname")))
summary(plm(formula = DO~SCI+sci2+sci3+popdens+as.factor(urbanrural),data=newtempdataz,model = "within",index = c("year","geoname")))

summary(plm(formula = DO~SCI+sci2+popdens+as.factor(urbanrural),data=newtempdataz,model = "random",index = c("year","geoname")))
summary(plm(formula = DO~SCI+sci2+sci3+popdens+as.factor(urbanrural),data=newtempdataz,model = "random",index = c("year","geoname")))

summary(m2<-plm(formula = DO~incper+incper2+SCI+sci2+sci3+popdens+year+as.factor(urbanrural),data=newtempdataz,model = "random",index =c("year")))                                                                                                                                   
newtempdataz<-pdata.frame(newtempdataz,index = c("geoname","year"))
summary(m1<-plm(formula = DO~SCI+sci2+sci3+popdens+as.factor(urbanrural),data=newtempdataz,model = "within"))
summary(m1<-plm(formula = DO~incper+incper2+incper3+popdens+as.factor(urbanrural),data=newtempdataz,model = "within"))

phtest(m1,m2)
write.csv(newtempdataz,"alltotaldata.csv")

as.factor(newtempdataz$year)
sd(as.numeric(newtempdataz$year))
x1=c(32000:75300)
y = 1.2651e+01-1.6610e-04*x+1.7747e-09*x^2
plot(x,y)
y = -2.9935e-04*x+2.7846e-09*x^2

summary(newtempdataz$SCI)




library(ggplot2)

ggplot(newtempdataz,aes(x = incper,y = SCI,color = geoname))+geom_line()
ggplot(newtempdataz,aes(x=year,y = SCI,color = geoname))+geom_line()
a<-levels(newtempdataz$geoname)
b<-c()
for(i in 1:length(a)){
  b = c(b,cor(newtempdataz[newtempdataz$geoname==a[i],]$incper,newtempdataz[newtempdataz$geoname==a[i],]$SCI))
}
b
x1=c(32000:75300)
x=seq(0.2390,1.000,by=0.0001)
y=1.3167e+01-1.8705e+01*x+2.8792e+01*x^2-1.4815e+01*x^3
y1=21.23099-2.2527e+01*x+3.5631e+01*x^2-1.8758e+01*x^3-6.1502e-04*mean(newtempdataz$popdens)-2.9935e-04*mean(x1)+2.7846e-09*mean(x1)^2

plot(x,y1,col = "red", xlab = "social capital index", ylab = "DO")
lines(x,y2,col = "green")
df = data.frame(x,y1,y2)
g<-ggplot(df,aes(x))+geom_line(aes(y=y1),colour = "red")
g<-g +geom_line(aes(y=y2),colour = "green")+xlab("social capital index")+ylab("DO")
g
y2 = 20.3382-22.18974*x+35.63815*x^2-18.90758*x^3-0.0002727*mean(x1)+2.57e-09*mean(x1)^2-0.0006053*mean(newtempdataz$popdens)
plot(x1,y,xlab = "income per capita", ylab = "DO")

y1=21.23099-2.2527e+01*mean(x)+3.5631e+01*mean(x)^2-1.8758e+01*mean(x)^3-6.1502e-04*mean(newtempdataz$popdens)-2.9935e-04*x1+2.7846e-09*x1^2

y2 = 20.3382-22.18974*mean(x)+35.63815*mean(x)^2-18.90758*mean(x)^3-0.0002727*x1+2.57e-09*x1^2-0.0006053*mean(newtempdataz$popdens)

df = data.frame(x1,y1,y2)
g<-ggplot(df,aes(x1))+geom_line(aes(y=y1),colour = "red")
g<-g +geom_line(aes(y=y2),colour = "green")+xlab("income per capita")+ylab("DO")
g
library(feature)