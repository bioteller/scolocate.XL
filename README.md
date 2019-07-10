## scolocate.XL: A simple R package for 2 genes colocalization plot on one seurat reduction map

Colocalization plot for Seurat object. For @木木小木 special edition (单细胞转录组学习交流群 of 生物技能树)

> Need Seurat v3.0; ggplot2.


### Author
Li, Xiaobo (TMU; lixiaobo@tmu.edu.cn)


### Install  
```R
install.packages("devtools")
devtools::install_github("bioteller/scolocate.XL")
```

### How to use
```R
library(scolocate.XL)
colocate(seurat_object = seurat_object,gene1 = gene1,gene2 = gene2,...)
```
* seurat_object: seurat3.0 object with reduction of "umap" or "tsne".
* gene1: exactly the same as the gene name in Seurat_object, sensitive to lower or upper case (red dots on the final plot)
* gene2: exactly the same as the gene name in Seurat_object, sensitive to lower or upper case (green dots on the final plot)
> Red points for gene1 while green for gene2, gradient from red to green represents co-expression. More red, the higher expression of Gene1, More green, the higher expression of Gene2.Gray dots means no expression of any of them
* reduction: "pca","tsne" or "umap", depending on what strategies you applied with seurat3,  "umap" for default
* size_point: size of points. default is 2.

### DEFENITELY NEED OPTIMIZED , WELCOME to DEBUG.
