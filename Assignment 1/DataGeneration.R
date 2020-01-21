
#Creating Species List
Species = c("C. l. arctos","C. l. baileyi","C. l. columbianus","C. l. crassodon","C. l. hudsonicus",
            "C. l. irremotus","C. l. labradorius","C. l. ligoni","C. l. lycaon","C. l. mackenzii")

#Generating Random Values for limb Width
Limb.Width = abs(rnorm(10,mean=10,sd=10))

#Generating Random Values for units
unitsW = sample(c("cm","mm"),10,replace=TRUE)


#Generating Random Values for limb length
Limb.Length = abs(rnorm(10,mean=100,sd=100))

#Generating Random Values for units
unitsL = sample(c("cm","mm"),10,replace=TRUE)

#Creating Data Frame
MyData = data.frame(Species,Limb.Width,unitsW,Limb.Length,unitsL)

#Creating CSV File
write.csv(MyData,"measurements.csv")
