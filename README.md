# Iris-Data-Exploration-and-Manipulation
This project demonstrates essential data manipulation and analysis techniques using the famous Iris dataset. The Iris dataset contains 150 observations of three species of iris flowers (setosa, versicolor, and virginica), with measurements for sepal length, sepal width, petal length, and petal width.

Features:

    Data Import and Structure:
        The Iris dataset is imported, and the number of rows (observations) and columns (variables) is determined.

    Data Filtering:
        Rows with Sepal.Length greater than 6.4 are filtered out to showcase simple filtering operations.

    Data Transformation:
        A new column longer_sepal is created by adding 0.7 to the original Sepal.Length.
        Categorical columns sepal_width_category1 and sepall_width_category2 are created using ifelse() and case_when() functions.

    Basic Analysis:
        The range of Petal.Length is calculated.
        The number and percentage of irises with petal lengths shorter than 4.35 are determined.
        The count of unique species is found.

    Grouped Analysis:
        The maximum Sepal.Width for each iris species is calculated using group_by() and summarize().

    Data Sorting and Export:
        The dataset is sorted by Sepal.Width for each species.
        The updated dataset, with new columns, is saved to a CSV file.

Technologies Used:

    R: Primary language for data manipulation and analysis.
    Libraries: dplyr (for data manipulation), tidyverse (for enhanced functionality).

File:

    iris_df2.csv: Contains the manipulated Iris dataset with additional columns for analysis.

Usage:

This project can be used as a learning resource to understand basic data manipulation, filtering, transformation, and export operations in R, particularly with the dplyr and tidyverse libraries.
