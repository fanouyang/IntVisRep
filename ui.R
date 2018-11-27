library(shiny)
library(networkD3)
library(plotly)
library(visNetwork)

shinyUI(
  navbarPage("Class Discussions within an Undergraduate Online Course",
             tabPanel("Three representations",
                      
                      sidebarPanel(
                        selectInput("discussion", "Choose a weekly discussion:", 
                                    c("discussion 1"=1,"discussion 2"=2,"discussion 3"=3),
                                    
                                    width="80%"
                        )),
                      
                      mainPanel(            
                        tabsetPanel(
                          tabPanel("interactive network", visNetworkOutput("intPlot")),
                          tabPanel("keyword sankey plot", plotlyOutput("skPlot")),
                          tabPanel("online presence plot", plotlyOutput("ctPlot"))
                          
                        )
                      ),
                      tabPanel("More Information",   
                               "Shiny App developer: Fan Ouyang",
                               br(),
                               a("fanouyang@zju.edu.cn", href="mailto:fanouyang@zju.edu.cn"),
                               br(),
                               "More info at my",
                               a("Github", href="https://", target="_blank")
                      )
                      
                      
             )
  ))
