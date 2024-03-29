## Statistical Inference-Part 2

## use libraries datasets library & ggplot2
library(datasets)
library(ggplot2)

## Plot 1
ggplot(data=ToothGrowth, aes(x=as.factor(dose), y=len, fill=supp)) +
  geom_bar(stat="identity") +
  facet_grid(. ~ supp) +
  xlab("Dose in miligrams") +
  ylab("Tooth length") +
  guides(fill=guide_legend(title="Supplement type"))


## Fit linear model
fit <- lm(len ~ dose + supp, data=ToothGrowth)

## get summary of dataset
summary(fit)


## get the intercept
confint(fit)
