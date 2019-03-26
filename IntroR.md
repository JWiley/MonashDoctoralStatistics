# [Home](README.md)

# 1. Install `R`

The first step for this unit is getting `R` installed and setup on
your computer. `R` is primarily a language. To have a nicer way to
interact with and use `R` we will use RStudio. RStudio is known as an
*I*ntegrated *D*evelopment *E*nvironment or IDE. It is a program that
helps to keep your code, output, graphs, and files all together in one
place. *Please follow these steps on your own laptop/computer* so that
you can work on the unit and later in your honours, on your thesis,
from anywhere and do not depend on lab computers.

*Note, with many of the instructions, especially on a Mac, a lot of
output code will be generated. You do not need to be able to read or
understand this and it is normal.*

## Windows OS

1.  Follow [this guide](https://www.datacamp.com/community/tutorials/installing-R-windows-mac-ubuntu)

2.  Once you think you've followed all the installation steps, move on
    to the next section to Try `R`.

## Mac OS

1.  Make sure that you are running a current (ideally latest) version
    of Mac OS (at time of writing: 10.14, Mojave). 

2.  Using the app store, install and open Xcode. If you need a guide,
    see [this video](https://www.youtube.com/watch?v=m9m6HozVjo8)
	
3.  Install tools for Mac OS `R` needs to build packages, by
    downloading the package installer
    [here](https://github.com/rmacoslib/r-macos-rtools)
	
4.  Follow [this guide](https://www.datacamp.com/community/tutorials/installing-R-windows-mac-ubuntu)
    *Note that at the terminal, if you are asked to enter a password,
    type the password you use to login to your Mac and press
    enter/return. When typing your password in the terminal, no
    characters will appear, but it is still being entered.*
	
5.  Install `openssl` which will allow `R` to securely download files
    and packages from the internet.  Do this by opening the terminal
    (you can search for "terminal" or look in the launchpad) and type
    this code once the terminal opens and press enter: 
	`brew install openssl`

6.  Install `libgit2` which is needed for one of our graphing
    packages. Do this by opening the terminal
    (you can search for "terminal" or look in the launchpad) and type
    this code once the terminal opens and press enter:
	`brew install libgit2`
	
7.  Some graphics require a graphic interface and window system called
    X11. To install this, go online [here](https://www.xquartz.org/), 
	download and install the package.

8.  Some people are reporting issues installing and finding R at this
    stage. If this is happening to you, after completing all the
    previous steps, you can try installing R from [here](https://cran.csiro.au/).

9.  Once you think you've followed all the installation steps, move on
    to the next section to Try `R`.

# 2. Try `R`

To make sure that `R` and RStudio are installed and working correctly,
follow these steps:

1.  Find and open RStudio on your computer.  *On Windows OS this
    should be under all of your programs/applications (on Windows 10
    open the start menu and search for RStudio).  On Mac OS you can
    try spotlight search, but if it installed but does not show on
    spotlight search, try looking in the launchpad.* Once you have
    RStudio opened, there should be several "windows".
	
2.  Go to the window named "Console" and click at the prompt. The
    prompt is just this symbol: ">".
	
3.  At the console prompt, type this code and then press "enter"/"return":

```r 

3 + 1

```

If everything worked, `R` should return the answer, "[1] 4". 
_Note: the [1] just means that the answer, 4, is in position 1._
If not, double check the installation steps. If you are stuck, post on
the Moodle Discussion Forum promptly so we can help you figure things
out. 

Assuming everything is working, try to run this code at the console to
install a few packages we will be using this semester. 
`R` may generate a lot of output and strange code. Most of that is
OK. However, you should keep notes on any **Error** messages (just copy
and paste from the console) and raise these on the class discussion
boards if you are stuck. Note that you will not be using any of these
right now. Just try to run it so everything is installed and ready to
go. 

Please Post problems and errors to the discussion forum also will help
us troubleshoot so that in later weeks when we present analyses, you
have a fully functioning `R` on your system.

_Note: if you are having trouble with permissions this blog 
[post may
help](https://www.r-bloggers.com/escaping-the-macos-10-14-mojave-filesystem-sandbox-with-r-rstudio/)._

```r 

## some general language features, used in other packages
install.packages("rlang", dependencies = TRUE)

## reshape data (for longitudinal datasets)
install.packages("reshape2", dependencies = TRUE) 

## general data management
install.packages("data.table", dependencies = TRUE) 

## work with longitudinal data
install.packages("zoo", dependencies = TRUE) 

## work with date/time data
install.packages("chron", dependencies = TRUE) 

## read text files into R
install.packages("readr", dependencies = TRUE) 

## read Excel files into R
install.packages("readxl", dependencies = TRUE)

## read SPSS, STATA, and SAS files into R
install.packages("haven", dependencies = TRUE) 

## mixed effects models
install.packages("lme4", dependencies = TRUE) 

## beautiful graphs in R
install.packages("ggplot2", dependencies = TRUE) 

## create panels of plots in R
install.packages("cowplot", dependencies = TRUE) 

## beautiful colours for plots in R
install.packages("viridis", dependencies = TRUE) 

## visreg app helps visualize regression models easily
install.packages("visreg", dependencies = TRUE)

## multiple imputation
install.packages("mice", dependencies = TRUE) 


## load the packages (basically open/run the apps)
library(reshape2)
library(data.table)
library(zoo)
library(chron)
library(readr)
library(readxl)
library(haven)
library(lme4)
library(ggplot2)
library(cowplot)
library(viridis)
library(visreg)
library(mice)

```

The package installation may generate a lot of output. Finally loading
the packages (the `library()` code) will not do anything, although you
may get some notes or messages. If you do not receive any errors or
messages like 
"Error in library(readr) : there is no package called 'readr'"
That is considered a successful outcome of this step.

_Note that generally any text entered at the
console is assumed to be a command to `R`. The exception is that text
following a hashtag, #, is treated as a comment, not a command. This
is a helpful way to document code, so you know what the purpose of a
particular piece of code is._

# 3. Learn about RStudio

To find out a bit more about RStudio, you can watch this <5 minute
[video](https://www.youtube.com/watch?v=V_NoBcxpYC8).

If you want something for future reference on RStudio,
try this 
[cheat sheet](https://github.com/rstudio/cheatsheets/raw/master/rstudio-ide.pdf).

# 4. Learn about `R`

To begin learning `R` we are going to be using the online platform,
DataCamp. Follow the instructions on Moodle for getting your account
setup. Then head over to [DataCamp](https://www.datacamp.com/), sign
in with your Monash account, and go to "My Class". 
The "due dates" in DataCamp are not part of your grades, but they are
*strongly* recommended so that you can take best advantage of the rest
of the unit.

In particular, please
try your best to complete the course *Introduction to R* this week. After
lecture 1, there is another chunk of DataCamp assignments on
importing data into `R`.

# 5. Worksheet

In preparation for the first lecture, download these two files: 

- [Intro R Worksheet](IntroR_worksheet.R) and
- [Example Excel Data](actigraph_scored_31.xlsx)

to your laptop into a folder for the unit. Try opening RStudio and
then going to 
`File -> Open File -> and navigate to IntroR_worksheet.R` 
You should be able to open it and see the code
in RStudio. No need to go through it yet. We will do that in class.

# 6. Summary and Checklist

This module covers installing and setting up `R` and RStudio. You have
a functioning version of `R` on your own computer. Before the first
lecture, make sure you've done everything by going through this
checklist.

- [ ] `R` is installed
- [ ] RStudio is installed and you can open and use it to add numbers
- [ ] Packages have been installed and/or you have posted
  problems/errors to the discussion board
- [ ] You have watched/read the basics about RStudio
- [ ] You are registered and can access DataCamp and/or have posted to
  the discussion board so we can make sure you have access to DataCamp
- [ ] You have completed the "Introduction to R" section on DataCamp
- [ ] You bring your laptop and have the worksheet downloaded to your
  laptop in preparation for Lecture.
