server <- function(input, output) {
  output$density_vs_poverty <- renderPlotly({
    plot <- ggplot(
      data = midwest,
      aes(y = percbelowpoverty, x = popdensity)
    )
    plot + geom_point((aes(color = state))) +
      ggtitle("Population Density Vs Total Poverty") +
      xlab("Population Density") +
      ylab("Percentage of People Living Below Poverty") +
      scale_x_continuous(limits = c(input$xvalmin, input$xvalmax))
  })
  output$college_vs_poverty <- renderPlotly({
    plot <- ggplot(data = midwest, aes(y = percbelowpoverty, x = percollege))
    plot +
      geom_point((aes(color = state))) +
      ggtitle("College Education Vs Total Poverty") +
      xlab("Percent College Educated") +
      ylab("Total Poverty Percentage") +
      scale_x_continuous(limits = c(input$xmin, input$xmax))
  })
}

# styling
library(lintr)
library(styler)
style_file("app_server.R")
lint("app_server.R")
