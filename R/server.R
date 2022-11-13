# Define server logic required to draw a histogram
server <- function(input, output) {
  output$final_value_smpl_noannuit <- renderPlot({
    tib <- get_final_value(
      n_per = input$n_per,
      v_0 = input$v_0,
      exp_return = input$exp_return
      # ,
      # compound = input$compound,
      # x_yearly = input$x_yearly,
      # immediate = input$immediate
    )
  })
  output$distPlot <- renderPlot({
    # generate bins based on input$bins from ui.R
    x <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x,
      breaks = bins, col = "darkgray", border = "white",
      xlab = "Waiting time to next eruption (in mins)",
      main = "Histogram of waiting times"
    )
  })
}
# FINAL_VALUE_SMPL_NOANNUIT <- get_final_value(
#     n_per = 30,
#     v_0 = 5000,
#     exp_return = 10,
#     compound = FALSE,
#     x_yearly = 0,
#     immediate = TRUE
# )
