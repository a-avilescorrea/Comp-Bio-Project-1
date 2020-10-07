# Load functions

source("Module_A.R")
source("Module_B.R")

sPath1 <- "./part1_downloaded_data"

sCancer <- "LUAD"

path_geneExp <-
  DownloadRNASeqData(cancerType = sCancer,
                     assayPlatform = "gene.normalized_RNAseq",
                     saveFolderName = sPath1)

print(path_geneExp)

sPath2 <- "./par1_downloaded_data"

list_geneExp <-
  ProcessRNASeqData(inputFilePath = path_geneExp[1],
                    outputFileName = paste(sCancer,
                                           "geneExp",
                                           sep = "__"),
                    dataType = "geneExp",
                    outputFileFolder = sPath2)