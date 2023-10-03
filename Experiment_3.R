#Experiment No.: 3
#Name of Experiment: Data Visualization using ggplot2
#Aim: Create scatter plots, bar charts, and histograms using ggplot2. Customize plot aesthetics like titles, labels, and colors.
#Step 1: Load the Data and Install ggplot2
#First, load the "mtcars" dataset and install the ggplot2 package if you haven't already: # Load the mtcars dataset
data(mtcars)
# Install and load ggplot2 install.packages("ggplot2") library(ggplot2)
#Step 2: Create Scatter Plots
#Let's create a scatter plot to visualize the relationship between two variables, such as "mpg" (miles per gallon) and "hp" (horsepower).
# Scatter plot: mpg vs. hp
install.packages("ggplot2")
library(ggplot2)
scatter_plot <- ggplot(mtcars, aes(x = hp, y = mpg, color = factor(cyl))) +
  geom_point() +
  labs(title = "Scatter Plot of MPG vs. Horsepower",
       x = "Horsepower",
       y = "Miles Per Gallon")
print(scatter_plot)
#This code uses ggplot2 to create a scatter plot of "mpg" vs. "hp," with customized titles and axis labels.
#Step 3: Create Bar Charts
#Let's create a bar chart to visualize the count of cars with different numbers of cylinders.
# Bar chart: Count of cars by cylinder ggplot(mtcars, aes(x = factor(cyl))) +
bar_chart <- ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar(aes(fill = factor(cyl))) +
  labs(title = "Bar Chart of Cars by Cylinder Count",
       x = "Number of Cylinders",
       y = "Count")
print(bar_chart)


# Histogram: Distribution of car weights
ggplot(mtcars, aes(x = wt)) +
  geom_histogram(binwidth = 0.2, fill = "blue", color = "black") +
  labs(title = "Histogram of Car Weights",
       x = "Weight",
       y = "Frequency")
