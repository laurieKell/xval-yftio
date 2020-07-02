attach("CPUE_1_input.object")


data =CPUE_1_INPUT_OBJECT[['data']];



#######################
# The effect of regional scaling
#######################


work=data[data$yr >=1972,]
plot(work[work$AssessmentAreaName=='1b','yq'], work[work$AssessmentAreaName=='1b','pr_7994_m8'],type='n',ylim=c(0,max(work$pr_7994_m8,na.rm=T)),xlab='Year',ylab='Standardised index')
lines(work[work$AssessmentAreaName=='1b','yq'],work[work$AssessmentAreaName=='1b','pr_7994_m8'],lwd=3,col='black')
lines(work[work$AssessmentAreaName=='2','yq'], work[work$AssessmentAreaName=='2','pr_7994_m8'],lwd=3,col='red')
lines(work[work$AssessmentAreaName=='3','yq'], work[work$AssessmentAreaName=='3','pr_7994_m8'],lwd=2,col='green')
lines(work[work$AssessmentAreaName=='4','yq'], work[work$AssessmentAreaName=='4','pr_7994_m8'],lwd=2,col='blue')
legend('topright',legend=c('Region 1','Region 2','Region 3','Region 4'),cex=1.2,lwd=c(3,3,2,2),col=c('black','red','green','blue'))



