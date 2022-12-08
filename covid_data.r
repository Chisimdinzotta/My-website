setwd("/Users/macbook/Downloads/Data Project")
Covid_Data <- read.csv("Data.csv", stringsAsFactors = FALSE)
head(Covid_Data)
str(Covid_Data)

#Access the variables present in the dataframe
attach(Covid_Data)

#Session one

#DATA Exploration - Dependent variable

#Look at the distribution of dependent variable (Covid death rate)
#Scatterplot
plot(Total_Deaths, main = "Scatterplot")
#Boxplot
boxplot(Total_Deaths, xlab="Total Deaths", ylab="Count")
#check for missing values
apply(Covid_Data, MARGIN = 2, FUN = function(x)sum(is.na(x)))
# Plot 
library(rcompanion)
library(nortest)
plotNormalHistogram(Total_Deaths, main = "Histogram", xlab = "Total_Deaths", col = 3)

#Testing the statistical normality
# graphically
qqnorm(Total_Deaths, xlab = "Theoretical Quantiles: Total_Deaths" )
qqline(Total_Deaths, col = 3) 
# K-S test
ks.test(Total_Deaths, "pnorm", mean(Total_Deaths), sd(Total_Deaths))
# or... Shapiro-Wilk's test
shapiro.test(Total_Deaths)
#P value is < 0.05. We reject the null hypothesis. The data is not normalised

#Normlisation of the dependent variable
# Optionally use Tukey transform to find a transformation
Total_Deaths_t <- transformTukey(Total_Deaths)
plotNormalHistogram(Total_Deaths_t , main = "Histogram", xlab = "Total_Deaths", col = 3)


# Plot original and transformed values
plot(Total_Deaths, Total_Deaths_t, main = "Scatterplot", xlab = "Total_Deaths", ylab = "Total_Deaths_t")

# Test transformed dependent variable for normality
# graphically
qqnorm(Total_Deaths_t, xlab = "Theoretical Quantiles: Total_Deaths_t" )
qqline(Total_Deaths_t, col = 3) 

#Exploration of the independent variable

#Remove LA_name and LA_code
Covid_Data = subset(Covid_Data, select = -c(LA_code ,LA_name) )
head(Covid_Data)

# Boxplot all variables
boxplot(Covid_Data, col = "Bisque")


#Proportion per thousand
Covid_Data_s <- within(Covid_Data, pFemale <-(Female/ pop.Sex) * 1000)
Covid_Data_s <- within(Covid_Data, pMmale <-(Male/ pop.Sex) * 1000)
Covid_Data_s <- within(Covid_Data, pAge.0.to.24 <-(Age..0.to.24/ pop.Age) * 1000)
Covid_Data_s <- within(Covid_Data, pAge.25.to.44<-(Age..25.to.44/ pop.Age) * 1000)
Covid_Data_s <- within(Covid_Data, pAge.45.to.64 <-(Age..45.to.64/ pop.Age) * 1000)
Covid_Data_s <- within(Covid_Data, pAge.65.to.84 <-(Age..65.to.84/ pop.Age) * 1000)
Covid_Data_s <- within(Covid_Data, pAge.85.and.ove <-(Age..85.and.over/ pop.Age) * 1000)
Covid_Data_s <- within(Covid_Data, pWhite<-(White/ pop.Ethnic) * 1000)
Covid_Data_s <- within(Covid_Data, pAsian <-(Asian/ pop.Ethnic) * 1000)
Covid_Data_s <- within(Covid_Data, pBlack <-(Black/ pop.Ethnic) * 1000)
Covid_Data_s <- within(Covid_Data, pOther.Ethnic <-(Other.Ethnic/ pop.Ethnic) * 1000)
Covid_Data_s <- within(Covid_Data, pGood.Health <-(Good.Health/ pop.Health) * 1000)
Covid_Data_s <- within(Covid_Data, pFair.Health <-(Fair.Health/ pop.Health) * 1000)
Covid_Data_s <- within(Covid_Data, pBad.Health <-(Bad.Health/ pop.Health) * 1000)
Covid_Data_s <- within(Covid_Data, pHas.Religion <-(Has.Religion/ pop.Religion) * 1000)
Covid_Data_s <- within(Covid_Data, pNo.Religion <-(No.Religion/ pop.Religion) * 1000)

#while 

#Covid_Data <- within(Covid_Data, pMale <-(Male/ pop.Sex) * 1000)
head(Covid_Data_s)

#chisq_out <- chisq.test(mytable)
#pop_f <- apply(Female, Male, MARGIN = 2, FUN = function(female / (female + Male)) * 1000)
#)
#pop_f <- ((Data$female / (Data$female + Data$female)) * 1000)
#pop_f 




