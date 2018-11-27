
library(shiny)
library(networkD3)
library(readtext)
library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)
library(visNetwork)

########### create a function to create interactive network#########
createnetwork <- function(n) {
 require(visNetwork)

    n <- as.character(n) # n is discussion number
    file <- paste("sn", n, ".csv", sep="")  
    path <- "./data/"
    edges <-read.csv(paste(path, file, sep=""), header = TRUE)
    nodes <- read.csv("data/sn_id.csv", header = TRUE)
    
    visNetwork(nodes, edges,height = "700px", width = "100%") %>% 
      visOptions(selectedBy="group",highlightNearest = list(degree=1,hover=T), nodesIdSelection = TRUE) %>%
      visLayout(randomSeed = 123)
}


############ create a function to create sankey plot ############
createsankey <- function(n) {
  require(networkD3)
  require(tidyverse)
  require(plotly)

  
  n <- as.character(n) # n is discussion number
  sklinks <- paste("sklinks", n, ".csv", sep="") 
  sknodes <- paste("sknodes", n, ".csv", sep="") 
  path <- "./data/"
  links <- read.csv(paste(path, sklinks, sep=""), header = TRUE)
  nodes <- read.csv(paste(path, sknodes, sep=""), header = TRUE)
  
  
  plot_ly(type="sankey", orientation="h",valueformat = ".0f",
          node=nodes,link=links) }


########## create a function to create cordtra ###########
createcordtra <- function(n) {
  require(tidyverse)
  require(plotly)
  require(reshape2) 
  require(ggplot2)
  
  n <- as.character(n) # n is discussion number
  file <- paste("ct", n, ".csv", sep="")  
  path <- "./data/"
  ct <-read.csv(paste(path, file, sep=""), header = TRUE, stringsAsFactors=FALSE)
  
  
  #create alllevels for change shape (scale_shape_manual)
  ct$sortedid <- 1:nrow(ct)
  ct$contribution <- factor(ct$contribution, levels=c("cognitive", "social", "instruction"), 
                            labels=c("cognitive", "social", "instruction"))
  alllevels <- c(levels(ct$contribution))
  
  #plot
  
  p <- ggplot(ct, aes(x=ct$sortedid,y=ct$contribution, colour=ct$par)) + 
    geom_point(size=2, alpha=0.6)+
    # scale_shape_manual(values=1:length(alllevels))+
    xlab("Time Line") + ylab("Contribution Categories") +
    theme(legend.title=element_blank()) +
    theme(axis.text.x=element_blank(),
          axis.ticks.x=element_blank())+
    guides(col=guide_legend(ncol=2))
  
  
  ggplotly(p)
  
  
  mytext=paste("Participant: ", ct$title, "\n" , ct$contribution, " contribution", "\n", "Time point: ", ct$tp,  sep="")    
  pp=plotly_build(p)   
  style(pp, text=mytext, hoverinfo = "text", traces = c(1, 2, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20) )
  
}

############# shiny app function ###########

function(input, output) {
  
  # the first output interactive network plot
  output$intPlot <- renderVisNetwork({
    if (input$discussion==1){createnetwork(1)}
    else if (input$discussion==2) {createnetwork(2)}
    else  {createnetwork(3)}
  }
  )
  
  
  # the second output sankey plot
  output$skPlot <- renderPlotly ({
    if (input$discussion==1){createsankey(1)}
    else if (input$discussion==2) {createsankey(2)}
    else  {createsankey(3)}
    
  })
  
  # the third output cordtra plot 
  output$ctPlot <- renderPlotly({
    if (input$discussion==1){createcordtra(1)}
    else if (input$discussion==2) {createcordtra(2)}
    else  {createcordtra(3)}
  })
}