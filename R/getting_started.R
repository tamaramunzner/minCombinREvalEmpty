# Hello, world!
#
# This is a function that starts up an empty minCombinR Evaluationg project
# All that is required is the user ID

getting_started <- function(ID = NULL, path = NULL,proj_root = "~/Dropbox/UserStudy/minCombinR/") {

  if(is.null(ID))
    stop("Must enter a participant ID")

  ID<-formatC(ID,width=2,flag=0)

  # make sure that the path exits
  # ensure path exists
  path<-paste0(proj_root,path)
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  file<-system.file("proj_files", "Instructions.md", package = "minCombinREvalEmpty")

  #copying the instructions to the user's project
  file.copy(from = file, to = path)

  # copy data to the main directory
  #dir.create(paste(path,'data',sep="/"))
  file.copy(from = system.file("data", package = "minCombinREvalEmpty"), to = paste(path,sep="/"),recursive=TRUE)



  for(item in c("Tutorial","Assessment")){

    #header for R markdown
    header <- c(
    '---',
    sprintf('title: "minCombinR %s"',item),
    sprintf('author: "%s"', ID),
    sprintf('date: "%s"',Sys.Date()),
    'output: html_document',
    '---')

    con<-system.file("proj_files", sprintf("minCombinR_%s.Rmd",item), package = "minCombinREvalEmpty")

    text<-readLines(con = con, n = -1L, ok = TRUE, warn = TRUE,
            encoding = "unknown", skipNul = FALSE)


    contents <- paste(
      paste(header, collapse = "\n"),
      paste(text, collapse = "\n"),
      sep = "\n"
    )

    file_header<-ifelse(item == "Tutorial","00","01")
    writeLines(contents, con = file.path(path,sprintf("%s_minCombinR_%s_participant_%s.Rmd",file_header,item,ID)))
  }

}
