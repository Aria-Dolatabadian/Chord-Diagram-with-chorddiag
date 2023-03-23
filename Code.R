library(tidyverse)
library(viridis)
library(patchwork)
library(hrbrthemes)
library(circlize)
library(chorddiag)


m <- matrix(c(11975,  5871, 8916, 2868,1000,
              1951, 10048, 2060, 6171,1000,
              8010, 16145, 8090, 8045,1000,
              8010, 16145, 8090, 8045,1000,
              1013,   990,  940, 6907,1000),
            byrow = TRUE,
            nrow = 5, ncol = 5)
chromosome <- c("A1", "A2", "A3", "A4", "A5")
dimnames(m) <- list(have = chromosome,
                    prefer = chromosome)


groupColors <- c("#000000", "#FFDD89", "#957244", "#F26223","#FFDD02")
chorddiag(m, groupColors = groupColors, groupnamePadding = 50)



#devtools::install_github("mattflor/chorddiag")
