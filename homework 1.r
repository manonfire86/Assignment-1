library(XML)

mushroomurl = "https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data"
mushroomtable = read.table(mushroomurl,header = FALSE,sep=",")

print(head(mushroomtable))

mushroomdf = data.frame(mushroomtable)
mushroomdfnamed = setNames(mushroomdf,c("Edibility","cap-shape","cap-surface","cap-color","bruises","odor",
                                        "gill-attachment","gill-spacing","gill-size","gill-color","stalk-shape","stalk-root",
                                        "stalk-surface-above-ring","stalk-surface-below-ring","stalk-color-above-ring",
                                        "stalk-color-below-ring","veil-type","veil-color","ring-number","ring-type",
                                        "spore-print-color","population","habitat"))
subdf = mushroomdfnamed[,c("Edibility","population","habitat","stalk-shape","odor")]
levels(subdf$Edibility) = c("edible","poisonous")
levels(subdf$population) = c("abundant","clustered","numerous","scattered","several","solitary")
levels(subdf$habitat) = c("woods","grasses","leaves","meadows","paths","urban","waste")
levels(subdf$`stalk-shape`) = c("enlarging","tapering")
levels(subdf$odor) = c("almond","creosote","foul","anise","musty","none","pungent","spicy","fishy")  
print(head(subdf))

