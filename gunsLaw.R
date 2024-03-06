# Load needed libraries and read the data file.
library(ggplot2)
library(lattice)
gdata <- read.csv("C:/Users/User/Downloads/Guns.csv")

# Density Plot of Violent Crime Rate using base R
plot(density(gdata$violent), 
     main = "Density Plot of Violent Crime Rate (Base R)",
     xlab = "Violent Crime Rate (per 100,000)",
     col = "skyblue", 
     lwd = 2)

# Box Plot of Violent Crime Rate and Robbery Rate by State using lattice
bwplot(violent + robbery ~ state, data = gdata,
       main = "Box Plot of Violent Crime Rate and Robbery Rate by State",
       xlab = "State",
       ylab = "Rate (per 100,000)",
       col = c("skyblue", "salmon"),
       border = "black",
       scales = list(x = list(rot = 90)))

# Scatter plot of Violent Crime Rate vs. Percentage of African-American Population using ggplot2
ggplot(gdata, aes(x = afam, y = violent, color = law)) +
  geom_point(alpha = 0.6) +
  labs(
    title = "Violent Crime Rate vs. Percentage of African-American Population",
    x = "Percentage of African-American Population",
    y = "Violent Crime Rate (per 100,000)"
  ) +
  theme_minimal()