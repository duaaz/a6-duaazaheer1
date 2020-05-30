visualization_1 <- tabPanel(
  "Visualization #1", 
  sidebarLayout(
    sidebarPanel(
      h2("Controllers are here")
    ), 
    mainPanel(
      h1("Visualization name here")
    )
  )
  
)

visualization_2 <- tabPanel(
  "Visualization #2", 
  sidebarLayout(
    sidebarPanel(
      h2("Controllers are here")
    ), 
    mainPanel(
      h1("Visualization name here")
    )
  )
)

ui <- navbarPage(
  "USA Midwest County Demographics and Data Analysis",
  visualization_1, 
  visualization_2
)
