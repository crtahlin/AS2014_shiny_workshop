#ui.R

library(shiny)
shinyUI(
  
  pageWithSidebar(
    
    
    
    
    headerPanel("Statistical distributions"),
    
    sidebarPanel(
      
      
      radioButtons("distribution", "Distribution type:",
                   list("Normal" = "norm",
                        "Chi-squared" = "chisq",
                        "Binomial" = "binom",
                        "t" = "t"), selected="norm"),
      
      uiOutput("choose_parameters")
      
      #numericInput("n", "Number of trials:", value=10, min=1), 
      
      #numericInput("my.p", "Probability of success:", 0.5, min=0, max=1, step=.1), 
      
      
      
      
      #numericInput("k", "Number of successes:", value=5, min=0), 
      
      
      
      
      
      
    ),
    
    
    mainPanel(
      
      tabsetPanel(
        
        tabPanel("Plot of the distribution",        plotOutput("plot.density"), 
                 tableOutput("my.table.quantiles")),
        
        # tabPanel("Plot",        plotOutput("barplot.d")), 
        # tabPanel("Table2", tableOutput("my.table.value")),               
        #tabPanel("Table3", textOutput("text2")),
        
        
        #evaluate quantities that are related to a specific value
        
        tabPanel(title="Plots and probabilities for the chosen value", 
                 # numericInput("my.value", "Choose a value: ", value="my.value.init"), #shifted the choice of the value at this tabset
                 uiOutput("choose_value"), 
                 plotOutput("plot.value"),
                 tableOutput("my.table.value")
                 
                 
        ),
        
        
        #evaluate the complete table of probabilities
        tabPanel("Table", tableOutput("table.prob")),
        
        #tableOutput("my.table.value")),
        #plotOutput("barplot.d2")),
        #                      
        #                      }
        #                      ),               
        
        
        tabPanel("Links", tableOutput("text1"))
        
        
      )      
      #        plotOutput("barplot.d"),
      #h3(textOutput(paste("min=", min("input$obs1")))),
      #        tableOutput("table.binom")
      
    )
    
    
    
    
  ))