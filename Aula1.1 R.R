#dados

library(datasets)
dados <- cars


#Media

media <- mean(cars$speed)

#Moda
library(DescTools)

moda_dist <- Mode(cars$dist)
moda_speed <- Mode(cars$speed)

#Meidana
mediana <- median(cars$dist)

#Desvio padrao

desvio_padrao <- sd(cars$dist)

#Correlacao

correlacao <- cor(cars$speed, cars$dist)
correlacao <- cor.test(cars$speed, cars$dist)

#Amostra
amostra <-sample (1:50, 10, replace = FALSE)
amostras <- dados[amostra, ]

#Regressao Linear

linear_model <- lm(dist ~speed, data = cars)

summary(linear_model)

#Predicao~

novos_dados <- data.frame("speed" = c(21, 24, 26))
predict(linear_model, newdata = novos_dados, interval = "confidence")
