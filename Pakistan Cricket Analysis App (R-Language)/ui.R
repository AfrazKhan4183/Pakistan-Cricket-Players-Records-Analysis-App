library(shiny)

shinyUI(fluidPage(
  h1("Pakistan Cricket Analysis", align="center"),
      tabsetPanel(type="tab",
                  tabPanel("Group Members",
                          h1("Group Members",align="center"),
                          fluidRow(
                            column(4,
                                   br(),
                                   img(src="umair.jpg", height = 380, width = 350),
                                   br(),
                                   p("Umair Bhatti",
                                     br(),
                                   "2015-CS-05"),
                                   br()
                            ),
                            column(4,
                                   br(),
                                   img(src="Afraz.jpg", height = 380, width = 350),
                                   br(),
                                   p("Afraz Khan",
                                     br(),
                                   "2015-CS-27"),
                                   br()
                            ),
                            column(4,
                                   br(),
                                   img(src="hassan.jpg", height = 380, width = 350),
                                   br(),
                                   p("Hassan Tariq",
                                     br(),
                                     "2015-CS-67"),
                                   
                                   br()
                            )
                        #    div(h2("ABSTRACT:"),style="color:white;"),
                        #      br(),
                        #      p("In this  project we collected data of different pakistani players from different websites. ")
                              
                          )
                        
                  
                  ),
                  tabPanel("Abstract",
                           h1("Abstract:",style="color:white;   padding-left:100px;"),
                           br(),
                           
                           h3("This project is an analysis of pakistan cricket. In this project we collected data related to pakistani players
                    from different websites and put that data into the csv files against their names. Input is taken from the users in a seperate tab and output is shown in next tab.
                    You can also see score graphs of players year wise to show the analysis of their performances over the years.",style="color:white;   padding-left:100px; ")
                  ),
                  tabPanel("Input",
                           shinyUI(fluidPage(
                             includeCSS("style.css"),
                             
                             sidebarLayout(
                               sidebarPanel(
                                selectInput("dataset", "Choose a Player:",
                                choices = c("Inzamam-ul-Haq", "Saeed Anwar","Imran Khan","Wasim Akram","Mudassir Nazar","Waqar Youmis","Mushtaq Ahmed"
                                ,"Sqlain Mushtaq","Sarfraz Ahmed","Umar Akmal","Shoaib Malik","Wahab Riaz","Yasir Shah","Shoaib Akhtar","Muhammad yousuf","Aaqib Javed","Javed Miandad"
                                ,"Misbah Ul Haq","Younis Khan","Muhammad Hafeez","Azhar Ali","Abdul Razzaq","Shahid Afridi","Saleem Malik")),
                                
                                
                                selectInput("picture", "Choose a player for graph Analysis:", 
                                           choices = c("Inzamam-ul-Haq", "Saeed Anwar","Imran Khan","Wasim Akram","Mudassir Nazar","Waqar Youmis","Mushtaq Ahmed"
                                                      ,"Sqlain Mushtaq","Sarfraz Ahmed","Umar Akmal","Shoaib Malik","Wahab Riaz","Yasir Shah","Shoaib Akhtar","Muhammad yousuf","Aaqib Javed","Javed Miandad"
                                                     ,"Misbah Ul Haq","Younis Khan","Muhammad Hafeez","Azhar Ali","Abdul Razzaq","Shahid Afridi","Saleem Malik")),
                                                         
                                 selectInput("obs", "Choose the format:", c("All","Test"=1,"ODIs"=2,"T20Is"=3))
                                # selectInput("graphs","Selcect the format todraw graph",c("Test","ODIs","T20Is"))
                               # radioButtons("picture", "Picture:",
                                #             c("hassan", "afraz"))
                               ),
                               mainPanel(
                              #   h3(textOutput("caption")),
                                 
                               #  verbatimTextOutput("summary"), 
                                 
                              #   tableOutput("view")
                               )
                             )
                           ))),
                  tabPanel("Graphs",
                  mainPanel(
                    h3(textOutput("caption")),
    
                    verbatimTextOutput("summary"), 
                    
                    tableOutput("view"),
                    tableOutput("viewimage"),
                    imageOutput("image2")
              #      fluidRow(
               #       DT::dataTableOutput("table")
                    #)
                  )
                  )
      )
      
))
