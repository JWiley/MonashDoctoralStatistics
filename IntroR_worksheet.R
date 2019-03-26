#### 1. Basic R Use (Demonstration) ####

## use R as a calculator
3 + 4 # addition

2 * 6 # multiplication

4 / 2 # division

2^3 # powers

## create a vector
c(1, 5, 4)

## asign results to an object
## note that after it is assigned, it shows up in RStudio in the "Environment"
x <- c(1, 3, 5)

## view an existing object
x

## round data (helpful for reporting)
## the first argument is the number to round
## the second argument is how many digits to use for rounding
round(1.214294254, digits = 2)

#### 2. Descriptive Statistics (Activity) ####

## calculate the mean
## note that we reuse the previously assigned variable, x
mean(x)

## calculate the median
median(x)

## calculate the standard deviation
sd(x)

## minimum
min(x)

## maximum
max(x)

## if there are missing values, R will not calculate
## to see this, lets first create an object with some missing data
## we will call it "y"
## NA stands for Not Available, i.e., missing
y <- c(1, 3, NA, 7)

## calculate mean on y
mean(y)

## to all the descriptives, we need to tell R
## to remove missing values first
## (na for not available; rm for remove)
## by adding an argument, na.rm = TRUE
mean(y, na.rm = TRUE)

#### 2b. You Try It ####

## find the mean of these numbers: 5, 3, 2, 9, 1

## find the standard deviation of the variable "y"


#### 3. Using a Dataset (Demonstration) ####

## R has a built in dataset called "mtcars"
## this dataset has variables about 32 different cars

## view the dataset
View(mtcars)

## one the variables in the dataset is how many
## miles per gallon of petrol each car gets
## this variable is called "mpg"
## to access the variable from within the mtcars dataset
## we use the "$" operator
## the code below accesses and prints all the observations
## from the mpg variable
mtcars$mpg

## note what happens if the case is wrong
## because a variable called "Mpg" does not exist
## R return NULL indicating no data
mtcars$Mpg

## calculate descriptive statistics
mean(mtcars$mpg)
sd(mtcars$mpg)

## it is also possible to round an entire set of numbers
round(mtcars$mpg, digits = 0)

## summary of a whole dataset
summary(mtcars)


#### 4. Loading Data (Demonstration) ####

## to start with, we will load a package for data management
## loading a package is like opening an app
## and you need to repeat this process each time you start up R
## note that if this does not work, try to install it first
## by uncommenting the install packages code
# install.packages("data.table", dependencies = TRUE)
library(data.table)

## read in a sample data set from the internet
d <- fread("https://raw.githubusercontent.com/JWiley/MonashHonoursStatistics/master/IntroR_sample.csv")


## get a summary of the data
summary(d)

## load package to read Excel files (.xls or .xlsx)
## if not installed please uncomment and run code below
# install.packages("readxl", dependencies = TRUE)
library(readxl)

## make sure you saved this Excel data to your R project folder
## names of all the Excel sheets
excel_sheets("actigraph_scored_31.xlsx")

## read in the "Sleep" sheet
d.acti <- read_excel("actigraph_scored_31.xlsx", sheet = "Sleep")

## view the variable names in the dataset
names(d.acti)

## calculate the mean sleep duration (total sleep time; TST)
mean(d.acti$TST)


#### 4b. You Try It ####

## view the Sleep Efficiency (se) variable in d.acti
## what is the second value?

## what are the variable names in the "Summary" sheet?
## the first variable is "ID"


#### 5. Logical Operators (activity) ####

## "==" : logical test if Depressed is equal to 1
d$Depressed == 1

## ">" : logical test whether zStress is greater than 0
d$zStress > 0

## "|" : logical "or"; test whether either condition is TRUE
## depressed or high stress
d$Depressed == 1 | d$zStress > 1

## "&" : logical "and"; test whether both conditions are TRUE
## depressed and low stress
d$Depressed == 1 & d$zStress < 1

## we can use square brackets, [], to subset a variable or dataset
## we can subset by number or by logical value.
## here are all the values for zStress
d$zStress

## here is just the first and third value
d$zStress[c(1, 3)]

## here are just the values of zStress where Depressed == 1
d$zStress[d$Depressed == 1]

## here are just the values of zStress where zStress > 1
d$zStress[d$zStress > 1]


#### 6. Basic Statistics (activity) ####

## descriptive statistics
mean(mtcars$mpg)
median(mtcars$mpg)
min(mtcars$mpg)
max(mtcars$mpg)
sd(mtcars$mpg)
var(mtcars$mpg)
quantile(mtcars$mpg, probs = c(.25, .5, .75))
IQR(mtcars$mpg) ## interquartile range (difference between 75th and 256h percentiles)

## independent samples t-test comparing mpg by vs (0 / 1)
t.test(mpg ~ vs, data = mtcars)

## independent samples t-test assuming equal variance
t.test(mpg ~ vs, data = mtcars, var.equal = TRUE))

## non parametric tests
wilcox.test(mpg ~ vs, data = mtcars)

## chi square test of independence for two categorical variables
chisq.test(mtcars$vs, mtcars$am)

## correlations
cor(mtcars$mpg, mtcars$hp) ## default is pearson

## if there are missing data, use pairwise complete
cor(mtcars$mpg, mtcars$hp, use = "pairwise.complete.obs")

## kendall and spearman correlations
cor(mtcars$mpg, mtcars$hp, method = "kendall")
cor(mtcars$mpg, mtcars$hp, method = "spearman")

## correlation test (i.e., add p-values)
## has all the same options as above
cor.test(mtcars$mpg, mtcars$hp)

## kolmorgorov-smirnov test

## do these two variables come from the same distribution? (no!)
ks.test(mtcars$mpg, mtcars$hp)

## does variable come from a normal distribution with mean = 3, sd = 5?
ks.test(mtcars$mpg, "pnorm", mean = 3, sd = 5)

## does mpg come from a normal distribution with mean and sd equal
## to that for mpg?
ks.test(mtcars$mpg, "pnorm", mean = mean(mtcars$mpg), sd = sd(mtcars$mpg))


## linear regression (with summary stats)
summary(lm(mpg ~ hp, data = mtcars))

## multiple regression
summary(lm(mpg ~ hp + vs, data = mtcars))

## multiple regression with main effects for hp, vs AND their interaction
## in R the interaction is labelled hp:vs and is automatically created
## along with main effects for two variables when using "*" instead of "+"
summary(lm(mpg ~ hp * vs, data = mtcars))
