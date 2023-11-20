# MS4024 Data Sets

%==============================================================================%
\begin{frame}
\frametitle{Inbuilt Data Sets}
\Large

# Airmiles
Cats
Machines
Orthodont
Sleep
Swiss
ToothGrowth
USArrests
WorldPhones
 
%==============================================================================%
\begin{frame}
\frametitle{Inbuilt Data Sets}
\Large
Airmiles
diff.am = diff(airmiles)
hist(diff.am)
shapiro.test(diff.am)
 
 %==============================================================================%
\begin{frame}
\frametitle{Inbuilt Data Sets}
\Large
Cats
library(MASS)
cats.F=cats[1:47,]
cats.M=cats[48:144,]
 
t.test(cats.F$Hwt,cats.M$Hwt)
 boxplot(Hwt~Sex,data=cats)
 
Machines
 
library(nlme)
names(Machines)
 
summary(Machines)
boxplot(Machines$score ~ Machines$Worker)
 
 
# There are six workers in total.
# Lets simplify matters by supposing that Worker 1 and Worker 2 is the are part of same team– Team A.
# Do this for the other workers – Make a Team B and Team C
 
#subset the data accordingly
#We need these vectors to subset the data properly
TA = c(1:6,19:24,37:42)
TB = c(7:12,25:30,43:48)
TC = c(13:18,31:36,49:54)
TeamA =Machines[TA,]
TeamB =Machines[TB,]
TeamC =Machines[TC,]
 
#Do a t.test
t.test(TeamA$score,TeamB$score)
 
 
Orthodont
Library(nlme)
#Split the data set into two groups  Male and Female
#perform t-tests on both groups
 
OM=Orthodont[1:64,]
OF=Orthodont[65:108,
 
Sleep
# Divide the data set into two S1 and S2
# perform a two sample test of means
# t.test(S1$var,S2$var)
 
 
Swiss
# Choose a dependent variable
 
 
ToothGrowth
 
TG1=ToothGrowth[1:30,]
TG2=ToothGrowth[31:60,]
 
# Run Simple Linear Regression in both cases
 
            # len as DV
            # dose as IV
            # compare and contrast both fits
            # check the influence of an observation.
 
USArrests
 
#Shorten the name
UA=USArrests
 
summary(UA)
 
cor.test(UA$Rape,UA$Murder)
 
plot(UA$Assault,UA$Murder)
 
#We pick Murder as dependent variable.
#We choose Assault as a possible Independent variable
 
fit1=lm(UA$Murder ~UA$Assault)
abline(coef(fit1))
 
#Pick an Outlier and check its influence
 
WorldPhones
 
yr=c(51,56:60)
 
wp.na=WorldPhones[,2]
 
plot(yr, wp.na)
 
 
diff.na=diff(wp.na)
diff.na[1]=diff.na[1]/5
diff.na=c(diff.na,rep(diff.na[1],4))
t.test(diff.na,mu=2000)
 
           
