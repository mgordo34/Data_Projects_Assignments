#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Make gene locus figure"),
    sidebarPanel(
        textInput("Number of Genes", "Ex: 2"),
        actionButton("send", "Submit"),
    titlePanel1("slider app"),
    sidebarLayout(
        sidebarPanel(
            h1("move the slider"),
            sliderInput("slider2", "Slide me!", 0, 5, 0)
        ),
        mainPanel(
            h3("Slider Value:"),
            textOutput("text1")
        )
    )
    
))