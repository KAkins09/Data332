


setwd("~/Data332_Rstudio/StudentData")

StudentData <- read_excel('Student.xlsx', .name_repair= 'universal')
RegistrationData <-read_excel('Registration.xlsx', .name_repair= 'universal')
CourseData <- read_excel('Course.xlsx', .name_repair= 'universal')


CourseData<- left_join(RegistrationData, CourseData, by =c('Instance.ID'))

CourseData<- left_join(CourseData, StudentData, by =c ('Student.ID'))

number_of_majors <- n_distinct(CourseData$Title)

ggplot(data= CourseData, aes(x= Title, y= number_of_majors)) + geom_col()+
  theme(axis.text = element_text (angle= 45, vjust =.5, hjust = 1))

Birthyear <- year(CourseData$Birth.Date)

                              Birthyear
                              
  BirthDayYears<- n_distinct(Birthyear) 

  ggplot(data= CourseData, aes(x=Birthyear, y= BirthDayYears))+ geom_col()+ 
    theme(axis.text = element_text (angle= 45, vjust =.5, hjust = 1))


Total_Cost_Per_Major <- CourseData$Total.Cost /  number_of_majors


ggplot(data = CourseData, aes(x= Title, y= Total_Cost_Per_Major, fill=Payment.Plan)) +
  geom_col() +
  theme(axis.text = element_text (angle= 45, vjust =.5, hjust = 1))





Total_balance_due <- CourseData$Balance.Due/ number_of_majors

Total_balance_due

ggplot(data= CourseData, aes(x=Title, y=Total_balance_due, fill= Payment.Plan))+ geom_col() +
  theme(axis.text = element_text(angle=45, vjust = .5, hjust = 1))




