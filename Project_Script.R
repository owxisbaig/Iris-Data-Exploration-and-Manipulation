# install.packages("dplyr")
# install.packages("tidyverse")

#Q1:Import Iris Dataframe
data("iris")
iris_df<-iris

#Q2: How many rows and columns are in the dataframe
observations<-nrow(iris_df)
variables<-ncol(iris_df)

#Q3: Remove any Sepal.Length
iris_filtered <- subset(iris_df, Sepal.Length > 6.4)

#Q4:Check how many irises are left after filtering
iris_new <- nrow(iris_filtered)

#Q5:Add 0.7 to Sepal.Length and create a new column named longer_sepal
iris_df$longer_sepal<-iris_df$Sepal.Length + 0.7

#Q6:Print the dataset to check the new column
print(iris_df)

#Q7:Calculate the range of Petal.Length
range_petallength<-range(iris_df$Petal.Length)

#Q8:How many irises’ petal lengths are shorter than  4.35? What percent/proportion do these represent?
short_petal<-sum(iris_df$Petal.Length<4.35)
percentage<- (short_petal/observations)*100

#Q9:Count different iris species
num_species <- length(unique(iris_df$Species))

#Q10:Find the longest Sepal.Width for each species
library(dplyr)
longest_sepal_width <- iris_df %>% group_by(Species) %>% summarize(max_sepal_width = max(Sepal.Width))

#Q11:Create three new datasets based on species
setosa <- filter(iris_df, Species == "setosa")
versicolor <- filter(iris_df, Species == "versicolor")
virginica <- filter(iris_df, Species == "virginica")

#Q12:Arrange the data in ascending order for Sepal.Width
setosa_sorted <- arrange(setosa, Sepal.Width)
versicolor_sorted <- arrange(versicolor, Sepal.Width)
virginica_sorted <- arrange(virginica, Sepal.Width)

#Q13: Create a new column spepal_width_category1
iris_df$sepal_width_category1 <- ifelse(iris_df$Sepal.Width > 3.0, "long", "short")

#Q14:Create a new column spepal_width_category2 using case_when
iris_df$sepall_width_category2<-case_when(iris_df$Sepal.Width>3.0 ~ "long", TRUE ~"short")

#Q15:Assign the dataset with new columns to iris_df2 and save it to a CSV file
iris_df2 <- iris_df
write.csv(iris_df2, file = "iris_df2.csv", row.names = FALSE)
                                          








