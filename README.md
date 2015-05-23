This is the Readme file for the Getting and Cleaning Data course project. The code for this analysis (run_analysis.R) was written in R version 3.2.0 (Rev. 68180), for a 64-bit Windows environment. It makes use of the dplyr library, version 0.4.1.

This code assumes that the required data is present in your working directory. If the data is not found, then the script will attempt to download and unzip it to your working directory.

Use the following command to read the output file back in to R:

```output<-read.table("./data/tidy.txt", header=TRUE)```
