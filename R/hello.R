# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}

library(ggplot2)

colocate <- function(seurat_object,gene1,gene2,reduction = "umap",size_point=3){
  tmp <- seurat_object[['RNA']]@scale.data
  if (check_gene(tmp,gene1) & check_gene(tmp,gene2)){
    color_num1 <- (0.6 * (tmp[gene1,]-min(tmp[gene1,]))/(max(tmp[gene1,])-min(tmp[gene1,])))+0.4
    color_num2 <- (0.6 * (tmp[gene2,]-min(tmp[gene2,]))/(max(tmp[gene2,])-min(tmp[gene2,])))+0.4
    color_anno <- ifelse(color_num1+color_num2>0,rgb(color_num1,color_num2,0,0.5),rgb(0.4,0.4,0.4,0.5))
    # color_anno <- rgb(color_num1,color_num2,0,0.5)

    tmp2 <- as.data.frame(seurat_object@reductions[[reduction]]@cell.embeddings)
    graph <- ggplot(tmp2,aes(x=UMAP_1,y=UMAP_2)) +
      geom_point(color=color_anno,size=size_point) + ggtitle(paste("colocalization of",gene1,"and",gene2)) +
      theme_bw()
      # geom_rect(aes(xmin=0.5,xmax=1,ymin=0.5,ymax=1))
  }

}

check_gene <- function(mt,gene1) {
  if (gene1 %in% rownames(mt)){
    re <- TRUE
  }else{
    warning(paste("The gene (",gene1,")does not in Seurat Object, please check it again."))
    re <- FALSE
  }
  return(re)
}
