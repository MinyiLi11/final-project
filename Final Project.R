# install package
install.packages("g3viz", repos = "http://cran.us.r-project.org")
# load g3viz package
library(g3viz)
# Retrieve mutation data of "msk_impact_2017" from cBioPortal
mutation.dat <- getMutationsFromCbioportal("msk_impact_2017", "TP53")
#> Warning in .service_validate_md5sum(api_reference_url, api_reference_md5sum, : service version differs from validated version
#>     service url: https://www.cbioportal.org/api/api-docs
#>     observed md5sum: 4188a76d21595ffbf4d7749d60f24898
#>     expected md5sum: 1615443badbeaada68463859c34f15f8
#> Found study msk_impact_2017
#> Found mutation data set msk_impact_2017_mutations
#> 10945 cases in this study

# "cbioportal" chart theme
plot.options <- g3Lollipop.theme(theme.name = "cbioportal",
                                 title.text = "TP53 gene (cbioportal theme)",
                                 y.axis.label = "# of TP53 Mutations")

g3Lollipop(mutation.dat,
           gene.symbol = "TP53",
           btn.style = "gray", # gray-style chart download buttons
           plot.options = plot.options,
           output.filename = "cbioportal_theme")
#> Factor is set to Mutation_Class
#> legend title is set to Mutation_Class
##ggplot2 theme
g3Lollipop(mutation.dat,
           plot.options =
             g3Lollipop.theme(theme.name = "ggplot2",
                              title.text = "ggplot2 theme title",
                              y.axis.label = "y-label",
                              legend.title = "legend-title"),
           btn.style = "blue",
           gene.symbol = "TP53")
#> Factor is set to Mutation_Class
# "cbioportal" chart theme
mutations <- getMutationsFromCbioportal("msk_impact_2017","KRAS")
plot.options <- g3Lollipop.theme(theme.name = "cbioportal",
                                 title.text = "KRAS gene (cbioportal theme)",
                                 y.axis.label = "# of KRAS Mutations")

g3Lollipop(mutations,
           gene.symbol = "KRAS",
           btn.style = "gray", # gray-style chart download buttons
           plot.options = plot.options,
           output.filename = "cbioportal_theme")
##ggplot2 theme
g3Lollipop(mutations,
           plot.options =
             g3Lollipop.theme(theme.name = "ggplot2",
                              title.text = "KRAS gene",
                              y.axis.label = "y-label",
                              legend.title = "legend-title"),
           btn.style = "blue",
           gene.symbol = "KRAS")
