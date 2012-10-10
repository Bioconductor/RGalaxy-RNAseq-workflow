\name{fastqDemultiplexing}

\alias{fastqDemultiplexing}
\title{Fastq Demultiplexing}

\description{
    Based on the index read file, the function separate sequences into one fastq
    file for a given barcode.

}


\usage{
fastqDemultiplexing(fastqfile = GalaxyInputFile(), 
                    indexfile = GalaxyInputFile(),
                    indexread = character(), 
                    outputfile = GalaxyOutput(paste("demulitplexed_", indexreads, ".fastq", sep=""), "fastqillumina"))
}

\arguments{
  \item{fastqfile}{
    The filename of the multiplexed library sequence data.
  }
  \item{indexfile}{
    The filename of the index reads file. 
  }
  \item{indexread}{
    The barcode for the demutiplexing. It should be 7nt,e.g, "GCCAATA" 
  }
  \item{plotSubTitle}{
    The subtitle of the plot to create.
  }
  \item{outputfile}{
    The filename of de-muliplexed fastq file
  }
}

\value{
  invisible(NULL)
}

\seealso{
}
\details{
    If multiple samples are pooled in one lane using sample specific
    index/barcode adapters, according to the Illumina Truseq protocol, 
    one additional index read file (fastq) will be generated.
    
    The step in which sequences are separated into one file per sample
    barcode is called demultiplexing. 
    
    The function can be used for this purpose.
}

\examples{

fastqDemultiplexing("test.fastq","test_index.fastq","GCCAATA")

}

