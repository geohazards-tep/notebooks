#!/usr/bin/env bash

/opt/anaconda/bin/conda install -y --file /tmp/.dependencies/packages.list

export PATH=/opt/anaconda/bin:$PATH
export GDAL_DATA='/opt/anaconda/share/gdal'
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/anaconda/lib

R --vanilla <<EOF
install.packages("ncdf4", dependencies = TRUE, repos= "http://cran.rstudio.com")
install.packages("marmap", dependencies = TRUE, repos= "http://cran.rstudio.com")
install.packages("raster", dependencies = TRUE, repos= "http://cran.rstudio.com")
install.packages("rasterVis", dependencies = TRUE, repos= "http://cran.rstudio.com")
install.packages("rgdal", type = "source", configure.args = "--with-proj-share=/opt/anaconda/share/proj", dependencies = TRUE, repos= "http://cran.rstudio.com")
q()
EOF


