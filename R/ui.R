# Define UI for application that draws a histogram
ui <- fluidPage(

  # Application title
  titlePanel("Online Returns Simulator"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("n_per",
        "Number of periods",
        min = 1,
        max = 50,
        value = 30
      ),
      sliderInput("v_0",
        "Initial capital",
        min = 500,
        max = 50000,
        value = 5000
      ),
      sliderInput("exp_return",
        "Expected Yearly Return in %",
        min = 5,
        max = 50,
        value = 10
      ),
      sliderInput("bins",
        "Number of bins:",
        min = 1,
        max = 50,
        value = 30
      )
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)
