# Load necessary libraries
library(dplyr)
library(ggplot2)
library(readr)
library(stargazer)
library(readxl)

# Load the data
cat("Loading 2017-2018...\n")
X2017_2018 <- read_excel("Data2017-2018.xls")
print(head(X2017_2018))

cat("Loading 2018.csv...\n")
X2018_2019 <- read_excel("Data2018-2019.xls")
print(head(X2018_2019))

cat("Loading 2019.csv...\n")
X2019_2020 <- read_excel("2019-2020.xls")
print(head(X2019_2020))

# Summary of statistics
cat("Summary of 2017 data:\n")
summary(X2017_2018)

cat("Summary of 2018 data:\n")
summary(X2018_2019)

cat("Summary of 2019 data:\n")
summary(X2019_2020)

# Save the plots as images
# Visualization: MP vs BPM
p1 <- ggplot(X2017_2018, aes(x=MP, y=BPM)) + 
  geom_point() +  
  labs(title = "2017-2018 Season", x = "Minutes Played", y = "Box Plus/Minus") +
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE, color="red")
ggsave("MP_vs_BPM_2017.png", plot = p1)

p2 <- ggplot(X2018_2019, aes(x=MP, y=BPM)) + 
  geom_point() +  
  labs(title = "2018-2019 Season", x = "Minutes Played", y = "Box Plus/Minus") +
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE, color="red")
ggsave("MP_vs_BPM_2018.png", plot = p2)

p3 <- ggplot(X2019_2020, aes(x=MP, y=BPM)) + 
  geom_point() +  
  labs(title = "2019-2020 Season", x = "Minutes Played", y = "Box Plus/Minus") +
  geom_smooth(method=lm, se=TRUE, fullrange=TRUE, color="red")
ggsave("MP_vs_BPM_2019.png", plot = p3)

# Other visualizations omitted for brevity...

# Regression analysis
reg1 = lm(PER ~ Position + Age + Height + USG, data = X2017_2018)
reg2 = lm(PER ~ Position + Age + Height + USG, data = X2018_2019)
reg3 = lm(PER ~ Position + Age + Height + USG, data = X2019_2020)

stargazer(X2017_2018, X2018_2019, X2019_2020, reg1, reg2, reg3, type = "text", digits=3, title="Regression Results")

# Correlation matrices
data_2017 <- X2017_2018[1:68, c(2,3,4,5,6,7,8,9,10,11)]
c2017 <- cor(data_2017, use = "complete.obs")
round(c2017, 2)

data_2018 <- X2018_2019[1:68, c(2,3,4,5,6,7,8,9,10,11)]
c2018 <- cor(data_2018, use = "complete.obs")
round(c2018, 2)

data_2019 <- X2019_2020[1:68, c(2,3,4,5,6,7,8,9,10,11)]
c2019 <- cor(data_2019, use = "complete.obs")
round(c2019, 2)
