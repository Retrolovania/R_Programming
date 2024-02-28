library(ggplot2)

mt_df <- read.csv("C:/Users/User/Downloads/mtcars.csv")

# Calculate correlation coefficient. Let's check the correlation between mpg and carb
cor_cars <- cor(mt_df$mpg, mt_df$carb)

# Now let's plot, with a line in the plot showing the regression line.
ggplot(data = mt_df, aes(x = mpg, y = carb)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = paste("Scatter Plot with Regression Line\nCorrelation:", round(cor_cars, 2)))

# Looks like these two don't have that much correlation. Let's try cyl with hp instead
cor_cars <- cor(mt_df$cyl, mt_df$hp)

ggplot(data = mt_df, aes(x = cyl, y = hp)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = paste("Scatter Plot with Regression Line\nCorrelation:", round(cor_cars, 2)))
# These two do have correlation!