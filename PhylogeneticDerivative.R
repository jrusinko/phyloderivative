library(ape)
library(phangorn)
library(ade4)
library(adephylo)
library(data.table)

######Variables the user need to update######
#User should give following parameter with the your SNP tree data
snptree <- list()
#############################################


#Calculating the Robinson¨CFoulds distances
snptree.distlist.rf <- list() # Store Robinson¨CFoulds distances 
snptree.distlist.rf <- compute.RF.dist(snptree)

#Nomaliation the derivative value
snptree.norm <- list()
for(j in 1:(length(snptree.distlist.rf)){
  value <- (snptree[[j]]$Nnode-1+snptree[[j+1]]$Nnode-1)
  snptree.norm[j] <- snptree.distlist.rf[j]/value
}

##################result##################
#The result is the snptree.norm. It contains the phylogenetic derivative value for SNPS#
#You can use our code to see the plot of the phylogenetic derivative value for SNPS. 
#The (high) peak point is the position where having hotspot