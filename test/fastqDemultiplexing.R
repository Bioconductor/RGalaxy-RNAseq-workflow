library(RGalaxy)
fastqDemultiplexing <- function(fastqfile = GalaxyInputFile(),
                                indexfile = GalaxyInputFile(),
                                indexread = character(),
                                outputfile = GalaxyOutput("demulitplexed", "fastq"))
{  
      library(ShortRead)
 
       f1 <- tryCatch({
              FastqStreamer(indexfile, 50000)
        },error = function(err) {
              stop("failed to load index read file : ", conditionMessage(err))
       })
 
        ### delete outputfile first if it is exist 
        if (file.exists(outputfile)) 
               system(paste("rm ", outputfile,sep=""))
        while (length(fq <- yield(f1))) {
               index <- which(as.character(sread(fq))==indexread)
               f2 <- tryCatch({
               FastqStreamer(fastqfile, 50000)
               }, error = function(err) {
               stop("failed to load index read file : ", conditionMessage(err))
           })

               reads <- yield(f2) 
               reads <- reads[index]
               if (length(reads)!=0) { 
                 writeFastq(reads, file = outputfile, mode="a")
               }
         }
         close(f1)
         close(f2)
}
