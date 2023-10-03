#Experiment No.: 4
#Name of Experiment: Exploratory Data Analysis
#Aim: Calculate summary statistics (mean, median, standard deviation). Create box plots and violin plots to visualize distribution.
#Step 1: Load the Data
#Load the "iris" dataset if you haven't already: # Load the iris dataset
data(iris)
#Step 2: Calculate Summary Statistics
#Let's calculate summary statistics, including mean, median, and standard deviation, for the "sepal.length" column:
  # Calculate summary statistics for sepal length
sepal_length_mean <- mean(iris$Sepal.Length)
sepal_length_median <- median(iris$Sepal.Length)
sepal_length_sd <- sd(iris$Sepal.Length)
cat("Mean Sepal Length:", sepal_length_mean, "\n")
cat("Median Sepal Length:", sepal_length_median, "\n") 
cat("Standard Deviation of Sepal Length:", sepal_length_sd, "\n")
#These calculations provide you with key statistics about the sepal length in the dataset.
#Step 3: Create Box Plots
#Let's create box plots to visualize the distribution of sepal length for each species in the "iris" dataset:
# Create a box plot of sepal length by species
install.packages("ggplot2")
library(ggplot2)
ggplot(iris, aes(x = Species, y = Sepal.Length)) +
geom_boxplot() +
labs(title = "Box Plot of Sepal Length by Species",
x = "Species",
y = "Sepal Length")
#This code generates a box plot showing the distribution of sepal length for each species of iris flower.
#Step 4: Create Violin Plots
#let's create violin plots to visualize the distribution of sepal length by species: # Create a violin plot of sepal length by species
  ggplot(iris, aes(x = Species, y = Sepal.Length)) +
  geom_violin(fill = "lightblue") +
  labs(title = "Violin Plot of Sepal Length by Species",
       x = "Species",
       y = "Sepal Length")
#This code generates a violin plot, which provides a more detailed view of the distribution compared to a box plot.
  # Load the ggplot2 package if it's not already loaded
  library(ggplot2)
  
  # Create a violin plot with boxplot inside
  ggplot(iris, aes(x = Species, y = Sepal.Length)) +
    #geom_violin(fill = "lightblue", draw_quantiles = c(0.25, 0.5, 0.75)) +
    geom_violin(fill = "lightblue") +
    geom_boxplot(width = 0.1, fill = "white", color = "black", outlier.shape = NA) +
    labs(title = "Violin Plot with Boxplot of Sepal Length by Species",
         x = "Species",
         y = "Sepal Length")
  
  