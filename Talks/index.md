Using Interactive Dashboards for Public Communication
========================================================
author: Kevin O'Brien
date: 
autosize: true

Using Interactive Dashboards for Public Communication
========================================================

* R Programming Language
* Open-Source Programming Language for Data Science

### Main Tools

- Flexdashboard
- Shiny

### Remark
I amended the format of the presentation to accommodate the live-streaming & recording audience, viewing on Youtube.



Future Forests (Appsilon)
========================================================

***https://connect.appsilon.com/future-forests/***

<div align="center">
<img src="FutureForest.jpg" height=700>
</div>


Citizen Science: Dragonfly Survey
=========================================

***https://biodiversityireland.ie/surveys/dragonfly-ireland/***

<div align="center">
<img src="DragonflySurvey.jpg" height=700>
</div>




About Me
========================================================

### Current

* Resource Modeller (Forestry Statistician) with Coillte
* **Important** This talk is not connected with Coillte
<p>

### Some Previous Roles

* London Climate Change Coders
* Audience Research at Jameson Dublin International Film Festival
* Vice-chair for Social media and PR at JuliaCon and Why R? Foundation

Audience
========================================================

### Who is this talk for

* Importance of Public Perceptions

* Career young professionals in GIS with minimal exposure to Open Source GIS tools and programming languages (such as R)

* Those seeking to migrate from proprietary tools to open-source tools.

* Resource constraints

* Enabling Citizen Science

Strategic Communication
======================================================

### Public Outreach

* Interactive web-based tools to engage with public about scientific and environmental matters.

* Communicate that there can be a trade-off between competing goals.

* ***Prof. David J. Mackay*** - Chief Science Officer at UK ***Dept of Energy and Climate Change (DECC)*** used interactive dashboards 2013/2014 to better inform public discourse about Carbon emissions.

* Ahead of it's time, but Technology has only recently caught up.


London Explorer
======================================================


<div align="center">
<img src="London_Explorer.jpg" height=700>
</div>


Adding Colour Coding and Descriptions
======================================================

* London Explorer - More Sophistication
* Ease of Collaboration with non-technical contributors

<div align="center">
<img src="London_Explorer_2.jpg" height=700>
</div>





London Explorer
======================================================

### London Explorer

* Hobby Project - interesting places to visit in London

* Extremely simple construction using following R packages

  - <tt>{flexdashboard}</tt> - simple framework for interactive dashboards


  - <tt>{leaflet}</tt> - Interative GIS tool
 
 
  - <tt>{tidyverse} </tt> - a family of data processing tools


  - CSS : Cascading Style Sheets
  
  
London Explorer
======================================================

### Development and Deployment

* Written using RMarkdown, specifying layouts

* Quick to build and deploy
 
* Deployed as repository on a dedicated github organization
 
    - ***London-Explorer.github.io***

### Collaboration

* Non-technical people contributed data through github repository pull-requests.
 
 
Modularisation of R Markdown Code
==================================================

Useful:  `child = `  


<div align="center">
<img src="Flexdashboard_Modules.jpg" height=700>
</div>


 
Online Courses
======================================================

### Coursera Course

* Data Visualization & Dashboarding with R Specialization

<div align="center">
<img src="coursera_specialisation.jpg" height=700>
</div>

Shiny Apps
================================================

### Interactive Dashboards 

* Web-based, developed using R or Python

* More Technically Sophisticated than flexdashboards

* Account on ShinyApps.io

* Build for deployment 

* Use {rsconnect} R package

* Use Log Files



Shiny Apps
================================================

### Deployment

* Deployment from the Command Line

<div align="center">
<img src="rsconnect_deployment.jpg" height=700>
</div>


Optimal Usage
==============================================

* Preprocess the data objects before deployment and store them in an ***.rdata file*** in the Shiny App Folder


Storing Objects in the Shiny App
===============

#### Preprocessing the Data


```r
Project_A_1 <- runif(50)
Project_A_2 <- iris %>% head(20)
Project_A_3 <- mtcars %>% select(1:drat)
Project_A_4 <- "Kevin"

#  collect everything in the environment with the name "Project"
grep("Project",ls(),value=TRUE)
myObjectList <- grep("Project",ls(),value=TRUE)
```

Stpring R Objects 
===============

#### Preprocessing the Data


```r
# Save these objects in an RDS file
saveRDS(  eval(str2expression(myObjectList)), "Project.rds")
```

#### Inside Shiny App


```r
# We are in the deployed shiny app now
# Project.rds is located in the app folder

readRDS("Project.rds")
```
 
Evaluating Strings
==============================




#### Expressions


```r
expression = "5+5"

expression
```

```
[1] "5+5"
```

<p>

#### Evaluating Strings


```r
expression %>% str2expression() %>% eval()
```

```
[1] 10
```


Expert-Beginner Problem 
============================== 
<p>

* Expert-Beginner Problem - unhelpful discourse

* Danger of Intellectual Comfort Zones

* "Tidyverse vs Base-R" - False Dichotomy

* Expansive Code Vocabulary is **Very Important**



