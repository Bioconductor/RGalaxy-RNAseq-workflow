library(RGalaxy)
galaxyHome = "~/galaxy-dist/"
## add fastqDemultiplexing to Test Section in Galaxy
galaxy(fastqDemultiplexing, version="0.0.1", 
      manpage="fastqDemultiplexing.Rd", 
      galaxyConfig=GalaxyConfig(galaxyHome, 
                     "fastqDemultiplexTool",
                     "Test Section",
                     "testSectionId")
)
