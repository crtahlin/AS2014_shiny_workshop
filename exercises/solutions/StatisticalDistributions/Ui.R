# Applied Statistics 2014 conference workshop

# load the library for developing web apps with R (http://shiny.rstudio.com/)
library(shiny)

# define the user interface
shinyUI(
  # define type of page layout
  pageWithSidebar(
    
    # define content of page header ####
    headerPanel("Statistical distributions"),
    
    # define content of left side of the page ####
    sidebarPanel(
      # select which distrubution will be used
      radioButtons("distribution", "Distribution type:",
                   list("Normal" = "norm",
                        "Chi-squared" = "chisq",
                        "Binomial" = "binom",
                        "t" = "t"), selected="norm"),
      
      uiOutput("choose_parameters")
      ),
    
    # define content of the main part of the page ####   
    mainPanel(
      # define the tabs on the page
      tabsetPanel(
        # define contents of 1st tab
        tabPanel("Plot of the distribution", plotOutput("plot.density"), 
                 tableOutput("my.table.quantiles")),
        # define contents of 2nd tab        
        tabPanel(title="Plots and probabilities for the chosen value", 
                 uiOutput("choose_value"), 
                 plotOutput("plot.value"),
                 tableOutput("my.table.value")
                 ),
        # define contents of 3rd tab
        tabPanel("Table", tableOutput("table.prob")),
        # define contents of 4th tab
        tabPanel("Links", tableOutput("text1"))
        )
      )
    )
  )