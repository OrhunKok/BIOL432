library(ggplot2)
MData = read.csv("measurements.csv")

#Conversions and calculations
MData$Volume = 0



for (i in 1:length(MData$Limb.Length)){
  if (MData$unitsL[i] == "mm"){
    MData$Limb.Length[i] = MData$Limb.Length[i]/10
    MData$unitsL[i] = "cm"
    }
  
}


for (i in 1:length(MData$Limb.Width)){
  if (MData$unitsW[i] == "mm"){
    MData$Limb.Width[i] = MData$Limb.Width[i]/10
    MData$unitsW[i] = "cm"
  }
  
}

for (i in 1:length(MData$Limb.Width)){
  MData$Volume[i] = (((MData$Limb.Width[i]/2)^2)*pi)*MData$Limb.Length[i]
  
}

#Creating the graph specifications
theme_pubworthy <- function (base_size = 12, base_family = "") {
  theme_classic(base_size = base_size, base_family = base_family) %+replace% 
    theme(
      axis.text = element_text(colour = "black"),
      axis.title.x = element_text(size=18),
      axis.text.x = element_text(size=12),
      axis.title.y = element_text(size=18,angle=90),
      axis.text.y = element_text(size=12),
      axis.ticks = element_blank(), 
      panel.background = element_rect(fill="white"),
      panel.border = element_blank(),
      plot.title=element_text(face="bold", size=24),
      legend.position="none"
    ) 
}





#Outputting as PDF
pdf("DataGraph.pdf")
qplot(x=Limb.Length,y=Limb.Width,data=MData,main="Limb Length VS. Limb Width") + theme_pubworthy()
dev.off()




