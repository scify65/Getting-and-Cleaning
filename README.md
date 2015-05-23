This is the Readme file for the Getting and Cleaning Data course project. The code for this analysis (run_analysis.R) was written in R version 3.2.0 (Rev. 68180), for a 64-bit Windows environment. It makes use of the dplyr library, version 0.4.1.

Run_analysis.R is a self-contained script; it needs only to be placed in your working directory and called from the R console with ```source("run_analysis.R")```

Run_analysis extracts all of the tables from the UCI HAR data set, names the variables, and merges them into a final combined dataset (called "final" in the script). The set is then reduced to the measurements of interest: namely, the average values of every mean and standard deviation (std) variable, grouped by Activity and Subject (the "output" table). This is then written to the file "tidy.txt" for easy transmission.

This code assumes that the required data is present in your working directory. If the data is not found, then the script will attempt to download and unzip it to your working directory.

Use the following command to read the output file back in to R:

```output<-read.table("./tidy.txt", header=TRUE)```