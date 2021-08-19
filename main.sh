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
stdbuf --output=L ./a.out -f ~/data/min-1DeadEnd.mtx      -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/min-2SCC.mtx          -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/min-4SCC.mtx          -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/min-NvgraphEx.mtx     -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/web-Stanford.mtx      -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/web-BerkStan.mtx      -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/web-Google.mtx        -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/web-NotreDame.mtx     -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/soc-Slashdot0811.mtx  -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/soc-Slashdot0902.mtx  -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/soc-Epinions1.mtx     -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/coAuthorsDBLP.mtx     -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/coAuthorsCiteseer.mtx -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/soc-LiveJournal1.mtx  -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/coPapersCiteseer.mtx  -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/coPapersDBLP.mtx      -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/indochina-2004.mtx    -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/italy_osm.mtx         -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/great-britain_osm.mtx -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/germany_osm.mtx       -g 0.000001 2>&1 | tee -a "$out"
stdbuf --output=L ./a.out -f ~/data/asia_osm.mtx          -g 0.000001 2>&1 | tee -a "$out"
