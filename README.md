### minCombinR User Study

This package that creates empty R Markdown Files that study participants will fill in to assess minCombinR

#### Installing package

```
devtools::install_github("amcrisan/minCombinREvalEmpty")
```

#### Creating an empty project template

First, create a new project in a new directory

![](https://user-images.githubusercontent.com/5395870/61008585-ca518100-a324-11e9-953c-51e567aa6ef4.png "New Proj")

Next, look for the 'Empty R Markdown Templates for User Study' template

![](https://user-images.githubusercontent.com/5395870/61008584-c9b8ea80-a324-11e9-8587-da993c1ff717.png "Find Template")


Finally, provide the additional information necessary to create the project. I recommend opening the project in a new session. After that, you're all ready to go!

![](https://user-images.githubusercontent.com/5395870/61008583-c9b8ea80-a324-11e9-9b90-fd66902ccc05.png "Add info")



**Note:** Right now, there is a hardcoded line in R/getting_started.R that assume all projects will land in the following path: ~/Dropbox/UserStudy/minCombinR. I will change that later, but if you happen to fork this package structure to make your own templates be aware of this. 


#### Getting Started
Three files will show up:

1) Instructions.md

2) 00_minCombinR_Tutorial.Rmd

3) 01_minCombinR_Assessment.Rmd

The R Markdown documents are empty templates that will be filled in by the user. The study participant will go through the tutorial first and then the assessment. Following the completion of these tasks, study participants are asked to fill out an online survey.

