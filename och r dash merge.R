library(xlsx)

#read in data
JAN<- read.xlsx(file='C:/Users/HP/Desktop/OCH Dash/PCHH/HighUtilizers_JAN2017.xlsx', 
                 sheetIndex = 1)

FEB<- read.xlsx(file='C:/Users/HP/Desktop/OCH Dash/PCHH/HighUtilizers_FEB2017.xlsx', 
                sheetIndex = 1)


MAR<- read.xlsx(file='C:/Users/HP/Desktop/OCH Dash/PCHH/HighUtilizers_MARCH2017.xlsx', 
               sheetIndex = 1)

APR <-read.xlsx(file='C:/Users/HP/Desktop/OCH Dash/PCHH/HighUtilizers_APRIL2017.xlsx', 
                sheetIndex = 1)

MAY<-read.xlsx(file='C:/Users/HP/Desktop/OCH Dash/PCHH/HighUtilizers_MAY2017.xlsx', 
               sheetIndex = 1)

JUN<-read.xlsx(file='C:/Users/HP/Desktop/OCH Dash/PCHH/HighUtilizers_JUNE2017.xlsx', 
               sheetIndex = 1)
  
#JULY<-read.xlsx(file='C:/Users/HP/My Documents/Inferential 2/PCHH/HighUtilizers_JULY2017.xlsx', 
#                sheetIndex = 1)

#AUG<-read.xlsx(file='C:/Users/HP/My Documents/Inferential 2/PCHH/HighUtilizers_AUG2017.xlsx', 
#               sheetIndex = 1)

#SEP<-read.xlsx(file='C:/Users/HP/My Documents/Inferential 2/PCHH/HighUtilizers_SEP2017.xlsx', 
#               sheetIndex = 1)

#OCT<-read.xlsx(file='C:/Users/HP/My Documents/Inferential 2/PCHH/HighUtilizers_OCT2017.xlsx', 
#               sheetIndex = 1)


YEAR.2017<- rbind(JAN,FEB,MAR,APR,MAY,JUN)
summary(YEAR.2017)

#omit columns 13-26 just filled with NA)
YEAR.2017<-YEAR.2017[, -c(1:3, 13:26)]

summary(YEAR.2017)




#change factor levels to categorical

JAN$ServiceType 1=ER 2=Inpt
OrgName
DCN
MemberDOB
X..Events
Frequent.Recent


JAN$Type[JAN$ServiceType == 1] <- "ER"
JAN$Type[JAN$ServiceType == 2] <- "Inpatient"
JAN$Type <- as.factor(JAN$Type)



