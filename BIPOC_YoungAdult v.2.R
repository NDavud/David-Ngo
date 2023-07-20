bipoc_data <- read.csv("CBM_BIPOC_7.6_ngod.csv")
youngadult_data <- read.csv("CBM_YoungAdults_7.6_ngod.csv")

## TODO ##
# Overall ARM Mean > ARM_measure_mean
# Overall Place Attachment > belscore_measure_mean
# Technology > 
  # tech1_eng (1=desktop, 2=smartphone, 3=tablet, 0= none of the above), 
  # tech2_eng (1=yes, 0=no), 
  # tech2a_engs (1=home, 2=work, 3=school, 4=public, 99=somewhere else), 
  # tech3_eng (1= negative impact, 2=both, 3=both),  
  # tech3a_engS (1=BeReal, 2= Email,3= Facebook, 4= Instagram, 5= LinkedIn, 6= NextDoor, 7= Pinterest, 8= Reddit, 9= Snapchat, 10= Text messaging, 11= TikTok, 12= Twitter, 13= WhatsApp, 14= YouTube,99 = prefer to self describe ,0 = none of the above)
  # tech4_eng (1=negative impact, 2=both, 3=positive impact, 0=no impact), 
  # tech4a_engS (1=BeReal, 2= Email,3= Facebook, 4= Instagram, 5= LinkedIn, 6= NextDoor, 7= Pinterest, 8= Reddit, 9= Snapchat, 10= Text messaging, 11= TikTok, 12= Twitter, 13= WhatsApp, 14= YouTube,99 = prefer to self describe ,0 = none of the above)
# Physical Health > health1_eng
# Mental Health > health2_eng
# Overall Health Score > health_score_updated 

# REMOVING NAs and Making Separate Variables#

#BIPOC_PA + Measure Mean 
bipoc_pa <- data.frame(bipoc_data[14:24], bipoc_data$belscore_measure_mean)
bipoc_pa <- bipoc_pa[complete.cases(bipoc_pa), ]
#Summary Statistics
bipoc_pa_summary <- sapply(bipoc_pa[1:12], summary)
bipoc_pa_sd <- sapply(bipoc_pa[1:12], sd)
bipoc_pa_sd <- data.frame(bipoc_pa_sd)
nrow(bipoc_pa)
boxplot(bipoc_pa[1:11], col = "blue", main = "Histogram", xlab = "Values", ylab = "Frequency")


#BIPOC_ARM + Measure Mean
bipoc_arm <- data.frame(bipoc_data[27:38], bipoc_data$ARM_measure_mean)
bipoc_arm <- bipoc_arm[complete.cases(bipoc_arm), ]
#Summary Statistics
bipoc_arm_summary <- sapply(bipoc_arm[1:13], summary)
bipoc_arm_sd <- sapply(bipoc_arm[1:13], sd)
bipoc_arm_sd <- data.frame(bipoc_arm_sd)
nrow(bipoc_arm)
boxplot(bipoc_arm[1:12], col = "blue", main = "Histogram", xlab = "Values", ylab = "Frequency")

#BIPOC_Physical + Mental + Composite
bipoc_health <- data.frame(bipoc_data$health1_eng, bipoc_data$health2_eng, bipoc_data$health_score_updated)
bipoc_health <- bipoc_health[complete.cases(bipoc_health), ]
#Summary Statistics 
bipoc_health_summary <- sapply(bipoc_health[1:3], summary)
bipoc_health_sd <- sapply(bipoc_health[1:3], sd)
bipoc_health_sd <- data.frame(bipoc_health_sd)
nrow(bipoc_health)

#BIPOC_Tech_ARM
bipoc_tech_arm <- data.frame(bipoc_data$ARM_measure_mean,
                         bipoc_data$tech1_eng, 
                         bipoc_data$tech2_eng,
                         bipoc_data$tech2a_engS, 
                         bipoc_data$tech3_eng,  
                         bipoc_data$tech3a_engS, 
                         bipoc_data$tech4_eng, 
                         bipoc_data$tech4a_engS)
bipoc_tech_arm <- bipoc_tech_arm[complete.cases(bipoc_tech_arm), ]

#BIPOC_Tech_PA
bipoc_tech_pa <- data.frame(bipoc_data[14:24],
                             bipoc_data$tech1_eng, 
                             bipoc_data$tech2_eng,
                             bipoc_data$tech2a_engS, 
                             bipoc_data$tech3_eng,  
                             bipoc_data$tech3a_engS, 
                             bipoc_data$tech4_eng, 
                             bipoc_data$tech4a_engS)
bipoc_tech_pa <- bipoc_tech_pa[complete.cases(bipoc_tech_pa), ]

#------------------------------------------------------------------------#

#Young Adult_PA + Measure Mean 
youngadult_pa <- data.frame(youngadult_data[14:24], youngadult_data$belscore_measure_mean)
youngadult_pa <- youngadult_pa[complete.cases(youngadult_pa), ]
#Summary Statistics
youngadult_pa_summary <- sapply(youngadult_pa[1:12], summary)
youngadult_pa_sd <- sapply(youngadult_pa[1:12], sd)
youngadult_pa_sd <- data.frame(youngadult_pa_sd)
nrow(youngadult_pa)


#Young Adult_ARM + Measure Mean
youngadult_arm <- data.frame(youngadult_data[27:38], youngadult_data$ARM_measure_mean)
youngadult_arm <- youngadult_arm[complete.cases(youngadult_arm), ]
#Summary Statistics
youngadult_arm_summary <- sapply(youngadult_arm[1:13], summary)
youngadult_arm_sd <- sapply(youngadult_arm[1:13], sd)
youngadult_arm_sd <- data.frame(youngadult_arm_sd)
nrow(youngadult_arm)

#Young Adult_Physical + Mental + Composite
youngadult_health <- data.frame(youngadult_data$health1_eng, youngadult_data$health2_eng, youngadult_data$health_score_updated)
youngadult_health <- youngadult_health[complete.cases(youngadult_health), ]
#Summary Statistics 
youngadult_health_summary <- sapply(youngadult_health[1:3], summary)
youngadult_health_sd <- sapply(youngadult_health[1:3], sd)
youngadult_health_sd <- data.frame(youngadult_health_sd)
nrow(youngadult_health)





