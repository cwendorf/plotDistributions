
### Tukey Distribution

qtukey(.95,3,10)
ptukey(3.88,3,10)

curve(ptukey(x, nm = 6, df = 5), from = -1, to = 8, n = 101)

QTable <- expand.grid(alpha=c(0.01,0.05),
                      groups=seq(2,10,1),
                      df=seq(2,120,1))
QTable$QVal=qtukey(1-QTable$alpha,QTable$groups,df=QTable$df)
head(QTable)

(ptt <- ptukey(0:10, 2, df =  5))
(qtt <- qtukey(.95, 2, df =  2:11))
summary(abs(.95 - ptukey(qtt, 2, df = 2:11)))

ptukey(0:10, 2, df =  5)
qtukey(.95, 2, df =  2:11)

qtukey(p = 0.95, nmeans = 2:10, df = 5)
qtukey(p = 0.99, nmeans = 2:10, df = 5)
qtukey(p = 0.95, nmeans = 2:10, df = 6)

QTable<-function(dfrange=10,nurange=20,alpha=0.05,digs=3){

  ROWS<-dfrange
  COLS<-nurange
  tabl<-matrix(nrow=ROWS,ncol=COLS)

  for(a in 2:COLS){
    tabl[1,a]=a
  }
  for(b in 2:ROWS){
    tabl[b,1]=b
  }

  for(i in 2:ROWS){
    for(j in 2:COLS){
      tabl[i,j]<-qtukey(alpha,j,i,nranges=1,lower.tail=FALSE)
      #R has a wrong description for the parameter 'nmeans',
      #To get a correct result, always set 'nranges'=1, from the description       #of R:
      #i=n-nu;j=nu->n=i+j;nu=j->number of groups nu=j;
      #Each group has n/nu elements, which is (i+j)/j
      #The above interpretation is wrong, the parameter 'nmeans' 
      #should be regarded as number of groups when 'nranges'=1
      tabl[i,j]<-round(tabl[i,j],digs)
    }
  }
  tmp<-as.data.frame(tabl)
  colnames(tmp)<-as.character(tmp[1,])
  tmp<-tmp[-1,]
  rownames(tmp)<-as.character(tmp[,1])
  tmp<-tmp[,-1]
  message("significant level=",alpha)
  message("nu=1:",nurange,", df=1:",dfrange)
  message("Rows are the value sequence of df;Columns are the nu sequence.")
  print(tmp)
}
QTable(dfrange=20,nurange=8,alpha=0.01)
