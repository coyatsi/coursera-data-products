library(shiny)
library(markdown)

shinyUI(navbarPage("    ",
                   
tabPanel("Documentation",
includeMarkdown("about.md")
),

tabPanel("BMI Calculator",       
sidebarLayout(
  sidebarPanel(
    numericInput('weight', 'Weight (lbs)', 112, min=90, max=600, step=1),
    numericInput('height', 'Height (inches)', 65, min=48, max=84, step=1),
    submitButton('Submit')
),

mainPanel(
  h3('BMI Results'),
  h4('Weight entered'),
  verbatimTextOutput("inputValue"),
  h4('Height entered'),
  verbatimTextOutput("inputVal"),
  h4('Your BMI result is:'),
  verbatimTextOutput("bmi"),
 
  h3("BMI Verdict"),
  p("BMI less than 18.5: You are underweight!"),
  p("BMI index between 18.5 and 24.9: You have a healthy weight!"),
  p("BMI index between 25.0.6 and 29.9: You are overweight!"),
  p("BMI greater than 30: You are obese!")
)


)
 )
  )
    )
