# Applied Statistics 2014 conference workshop

# define the user interface
shinyUI(
  # define type of page layout
  pageWithSidebar(
    
    # define content of page header ####
    headerPanel("Company statistics"),
    
    # define content of left side of the page ####
    sidebarPanel(
      fileInput(inputId = "uploadedFile", label="Upload file"),
      uiOutput("variableSelection")
      ),
    
    # define content of the main part of the page ####   
    mainPanel(
      tabsetPanel(
        tabPanel(title = "Data",
        dataTableOutput("data")        
        ),
         tabPanel(title = "Outputs",
                  plotOutput("barPlot")
           
           )
        )
      )
    )
  )