# install.packages("GISTools", dependencies = TRUE, repos = "https://cran.rstudio.com")
library(GISTools)
library(sp)
data(newhaven) #> data loading
ls()
pdf(file = "../data/map%d.pdf", onefile = FALSE) #> not working Console에서 `source()`전에
plot(roads)
class(roads)
plot(blocks)
class(blocks)
plot(tracts)
class(tracts)
plot(breach)
class(breach)
head(data.frame(blocks))
head(blocks@data)
summary(blocks)
str(blocks@data)
# par(mar = c(0, 0, 0, 0))
plot(blocks)
plot(roads, 
     add = TRUE,
     col = "red")
plot(blocks)
plot(breach, 
     add = TRUE, 
     col = "red")

plot(blocks, 
     lwd = 0.5, 
     border = "grey50")
plot(breach, 
     pch = 1, 
     col = "red", 
     add = TRUE)
# loc_1 <- locator(1) #>  점을 찍어야 진도가 나감.
loc_1 <- list(x = 534750, y = 152000)
map.scale(loc_1$x, loc_1$y, miles2ft(2), "Miles", 4, 0.5)
north.arrow(loc_1$x, loc_1$y + 2000, miles2ft(0.25), col = "lightblue")
title("New Haven, CT.")
# dev.off()  #> console 에서 실행
summary(blocks)
summary(breach)
summary(tracts)
head(data.frame(blocks))
names(data.frame(blocks))
colnames(data.frame(blocks))
data.frame(blocks)$P_VACANT
blocks$P_VACANT
hist(blocks$P_VACANT)
breach_dens <- kde.points(breach, lims = tracts)
summary(breach_dens)
head(data.frame(breach_dens))
breach_dens_grid <- as(breach_dens, "SpatialGridDataFrame")
summary(breach_dens_grid)
