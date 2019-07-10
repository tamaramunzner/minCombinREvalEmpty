### minCombinR User Study

This package that creates empty R Markdown Files that study participants will fill in to assess minCombinR

#### Installing package

```
devtools::install_github("amcrisan/minCombinREvalEmpty")
```

#### Creating an empty project template

First, create a new project in a new directory

<img src ="https://user-images.githubusercontent.com/5395870/61008585-ca518100-a324-11e9-953c-51e567aa6ef4.png" height="50%" width="50%" alt="Using RStudio Menu, create a new project">

Next, look for the 'Empty R Markdown Templates for User Study' template

<img src ="https://user-images.githubusercontent.com/5395870/61008584-c9b8ea80-a324-11e9-8587-da993c1ff717.png" height="50%" width="50%" alt="From the template options, find the one called Empty R markdown Templates for User Study">


Finally, provide the additional information necessary to create the project. I recommend opening the project in a new session. After that, you're all ready to go!

<img src ="https://user-images.githubusercontent.com/5395870/61008583-c9b8ea80-a324-11e9-9b90-fd66902ccc05.png" height="50%" width="50%" alt="Finally, add a directory name and the participant ID number">


Once the new project is open, this is what you should see

<img height="50%" width="50%" alt="The final project should contain three files that the user will fill out" src="https://user-images.githubusercontent.com/5395870/61011333-f3770f00-a32e-11e9-86fe-2fc62b016a0a.png">

**Note:** Right now, there is a hardcoded line in R/getting_started.R that assume all projects will land in the following path: ~/Dropbox/UserStudy/minCombinR. I will change that later, but if you happen to fork this package structure to make your own templates be aware of this. 


#### Getting Started
Three files will show up:

1) Instructions.md

2) 00_minCombinR_Tutorial.Rmd

3) 01_minCombinR_Assessment.Rmd

The R Markdown documents are empty templates that will be filled in by the user. The study participant will go through the tutorial first and then the assessment. Following the completion of these tasks, study participants are asked to fill out an online survey.

