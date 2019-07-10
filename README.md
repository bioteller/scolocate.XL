## scolocate.XL: A simple R package for 2 genes colocalization plot on one seurat reduction map V0.52

Colocalization plot for Seurat object. For @木木小木 special edition (单细胞转录组学习交流群 of 生物技能树)

> Need Seurat v3.0; ggplot2, remotes >= 2.1


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
p <- colocate(seurat_object = seurat_object,gene1 = gene1,gene2 = gene2,...)
p
```
* seurat_object: seurat3.0 object with reduction of "umap" or "tsne".
* gene1: exactly the same as the gene name in Seurat_object, sensitive to lower or upper case (red dots on the final plot)
* gene2: exactly the same as the gene name in Seurat_object, sensitive to lower or upper case (green dots on the final plot)
> Red points for gene1 while green for gene2, gradient from red to green represents co-expression. More red, the higher expression of Gene1, More green, the higher expression of Gene2.Gray dots means no expression of any of them
* reduction: Choose "pca","tsne" or "umap" for reduction method, depending on what strategies you applied with seurat3,  "umap" for default
* data_type: Please select "data" or "scale.data" for normalized matrix from Seurat3, "scale.data" for defalut setting
* size_point: size of points. default is 2.

### Acknowledge 

> Appreciated @吃了药萌萌哒’s debugging and valuable suggestion.


### DEFENITELY NEED OPTIMIZED , WELCOME to DEBUG.
