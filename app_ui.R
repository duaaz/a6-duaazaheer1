visualization_1 <- tabPanel(
  "Visualization #1",
  sidebarLayout(
    sidebarPanel(
      h3("Changing the x-axis scale minimum"),
      numericInput("xvalmin",
        label = "x-axis minimum", value = 0, min = 0,
        max = 100000
      ),
      h3("Changing the x-axis scale maximum"),
      numericInput("xvalmax",
        label = "x-axis maximum", value = 100000,
        min = 0, max = 100000
      )
    ),
    mainPanel(
      h1("Population and Poverty"),
      plotlyOutput(
        outputId = "density_vs_poverty"
      )
    )
  )
)

visualization_2 <- tabPanel(
  "Visualization #2",
  sidebarLayout(
    sidebarPanel(
      h3("Changing the x-axis scale minimum"),
      sliderInput("xmin",
        label = "x-minimum", min = 0, max = 50, value = 0, step = NULL,
        round = FALSE, ticks = TRUE,
        animate = FALSE, width = NULL, sep = ",", pre = NULL,
        post = NULL, timeFormat = NULL, timezone = NULL,
        dragRange = TRUE
      ),
      h3("Changing the x-axis scale maximum"),
      sliderInput("xmax",
        label = "x-maximum", min = 0, max = 50, value = 50, step = NULL,
        round = FALSE, ticks = TRUE,
        animate = FALSE, width = NULL, sep = ",", pre = NULL,
        post = NULL, timeFormat = NULL, timezone = NULL,
        dragRange = TRUE
      ),
    ),
    mainPanel(
      h1("College Education and Poverty"),
      plotlyOutput(
        outputId = "college_vs_poverty"
      )
    )
  )
)

ui <- navbarPage(
  "USA Midwest County Demographics and Data Analysis",
  visualization_1,
  visualization_2
)

# styling
library(lintr)
library(styler)
style_file("app_ui.R")
lint("app_ui.R")
