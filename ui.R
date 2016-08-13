library(shiny)

shinyUI(fluidPage(
        titlePanel("Regression to the mean as shown by Francis Galton"),
        sidebarLayout(
                sidebarPanel(
                        helpText("This quick app exemplifies the regression to the mean phenomenon first outlined by Galton."),
                        helpText("It is doing this by 'predicting' the height of children based on their gender and the height of their parents."),
                        helpText("Please configure the parameters:"),
                        sliderInput(inputId = "inFh",
                                    label = "Father's height in centimeters:",
                                    value = 140,
                                    min = 140,
                                    max = 210,
                                    step = 1),
                        sliderInput(inputId = "inMh",
                                    label = "Mother's height in centimeters:",
                                    value = 140,
                                    min = 140,
                                    max = 210,
                                    step = 1),
                        radioButtons(inputId = "inGen",
                                     label = "Child's gender: ",
                                     choices = c("Female"="female", "Male"="male"),
                                     inline = TRUE)
                ),
                
                mainPanel(
                        helpText("Graphical view of the dataset"),
                        # htmlOutput("parentsText"),
                        htmlOutput("prediction"),
                        plotOutput("barsPlot", width = "100%")
                )
        )
))