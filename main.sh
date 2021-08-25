#!/usr/bin/env bash
src="gpu-louvain"
out="/home/resources/Documents/subhajit/$src.log"
ulimit -s unlimited
printf "" > "$out"

# Download program
rm -rf $src
git clone https://github.com/wolfram77/$src
cd $src

# Run
make all
mv gpulouvain a.out
stdbuf --output=L ./a.out -f ~/data/min-1DeadEnd_symmetric.mtx      -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/min-2SCC_symmetric.mtx          -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/min-4SCC_symmetric.mtx          -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/min-NvgraphEx_symmetric.mtx     -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/web-Stanford_symmetric.mtx      -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/web-BerkStan_symmetric.mtx      -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/web-Google_symmetric.mtx        -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/web-NotreDame_symmetric.mtx     -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/soc-Slashdot0811_symmetric.mtx  -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/soc-Slashdot0902_symmetric.mtx  -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/soc-Epinions1_symmetric.mtx     -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/coAuthorsDBLP_symmetric.mtx     -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/coAuthorsCiteseer_symmetric.mtx -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/soc-LiveJournal1_symmetric.mtx  -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/coPapersCiteseer_symmetric.mtx  -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/coPapersDBLP_symmetric.mtx      -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/indochina-2004_symmetric.mtx    -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/italy_osm_symmetric.mtx         -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/great-britain_osm_symmetric.mtx -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/germany_osm_symmetric.mtx       -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/asia_osm_symmetric.mtx          -g 0.000001 2>&1 | tee -a "$out"
