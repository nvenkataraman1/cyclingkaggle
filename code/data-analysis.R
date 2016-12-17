library(dplyr)

train %>%
  group_by(RiderID) %>%
  select(RiderID) %>%
  summarize(count = n())

gradient.1 <- train %>%
              filter(RiderID == 1) %>%
              select(RiderID, Average_Gradient)

head(gradient.1)

hist(gradient.1$Average_Gradient)

plot(density(gradient.1$Average_Gradient))

gradient.2 <- train %>%
  filter(RiderID == 2) %>%
  select(RiderID, Average_Gradient)

head(gradient.2)

hist(gradient.2$Average_Gradient)

plot(density(gradient.2$Average_Gradient))
