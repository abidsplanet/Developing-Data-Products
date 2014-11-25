library(shiny)
require(rCharts)
shinyUI(
        navbarPage("Iris Database Explorer",
                tabPanel("Iris",
                        sidebarPanel(
                                selectInput(inputId = "x",
                                    label = "Choose X",
                                    choices = c('SepalLength', 'SepalWidth', 'PetalLength', 'PetalWidth'),
                                    selected = "SepalLength"),
                                selectInput(inputId = "y",
                                    label = "Choose Y",
                                    choices = c('SepalLength', 'SepalWidth', 'PetalLength', 'PetalWidth'),
                                    selected = "SepalWidth")
                        ),
                mainPanel(
                        showOutput("myChart", "polycharts")
                        )
                ),
                
                
                tabPanel("About",
                         mainPanel(
                                includeMarkdown("include.md")
                        )
                         
                )
        )
)
