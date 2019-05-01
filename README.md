# phyloderivative
This package contains a new method (Phylogenetic Derivative) to find the recombination for Single Nucleotide Polymorphism(SNP) data, and detect the position of the hotspot in SNP data. 
To use this method, you should first import following packages in R: library(ape), library(phangorn), library(ade4), library(adephylo), 
and library(data.table). Also, your SNP data has to be a list of SNP tree. If not, we suggest you to use Rent+ to transform your SNP data into SNP tree. You can explore more information about Rent+ in this link: https://www.ncbi.nlm.nih.gov/pubmed/28065901
In addition to a list of SNP tree, if you want to plot the phylogenetic derivative values for SNPs to get better version, you should have the position for individual SNP. 
