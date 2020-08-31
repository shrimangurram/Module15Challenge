library(dplyr)
library(ggplot2)
library(tidyr)
mechacar_mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset
head(mechacar_mpg)
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data=mechacar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data=mechacar_mpg)) #generate summary statistics)

suspensionpsi <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) #read in dataset
psi_summary <- suspensionpsi %>% summarize(Mean=mean(PSI), Median = median(PSI), var(PSI), sd(PSI)) #create summary table

psi_1500 <- suspensionpsi %>% filter(PSI==1500) #select only data points where PSI = 1500

t.test((psi_1500$PSI),(suspensionpsi$PSI)) #compare sample versus population means