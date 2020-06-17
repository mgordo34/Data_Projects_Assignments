#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(gggenes)

shinyServer(function(input, output, session) {
    
    df_3A <- readxl::read_xlsx("A/Gene_map-3A.xlsx")
    df_3A$molecule = factor(df_3A$molecule, levels=c('WT','snz1???','snz1???2'))
    df_3A$strand <- df_3A$strand == "forward"
    
    a <- df_3A %>%
        
        ggplot(aes(xmin = start, xmax = end, y = molecule, fill = gene, forward=strand)) +
        geom_gene_arrow() +
        facet_wrap(~ molecule, scales = "free", ncol = 1) +
        scale_fill_brewer(palette = "Set3") +
        theme_genes() + theme(legend.position="top", text = element_text(size=20), legend.title = element_blank(), axis.title = element_blank())
    })
    
})