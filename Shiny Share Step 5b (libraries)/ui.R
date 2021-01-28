
#There are 2 changes in this ui file.
# 1 - it shows how to install and load libraries


#From https://shiny.rstudio.com/articles/basics.html
library(shiny)


# Define UI for application that draws a histogram
shinyUI(fluidPage(

# App title ----
titlePanel("Hello Shiny!"),

# Sidebar layout with input and output definitions ----
sidebarLayout(

# Sidebar panel for inputs ----
sidebarPanel(

# Input: Slider for the number of bins ----
sliderInput(inputId = "bins",
label = "Here's a slider that doesn't do anything:",
min = 1,
max = 50,
value = 30)

),

####### NOTE THE MIXTURE OF HTML TEXT AND PLOTS ##########

# Main panel for displaying outputs ----
mainPanel(

# Output: plot
    column(12,  
           HTML("<h1>Map of Canada.</h1>")),
plotOutput(outputId = "world"),

column(12,  
       # HTML("<h2>Working from.</h1>"),
       # 
       # textOutput('Where'),
       HTML("<h1>Here is a list of installed packages.</h1>"),
       
       textOutput('PkgNames'),
       
       HTML("<h2>Here is a list of LOCALLY installed packages.</h2>"),
       
       textOutput('PkgNamesLoc'),
       
    
       HTML("<h3>Below is a table of all of the installed packages.
It's easiest if you install packages locally.</h3>"),
       dataTableOutput('tableLoc'),
       HTML("<p>Below is a table of all of the locally installed packages.  
     It's easiest if you install packages locally.</p>"),
       column(12,
              dataTableOutput('table')
       ),

       
)
)
)
)
)


