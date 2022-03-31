Goal of this project was to implement Community detection algorithm (using Louvain method)
based on a paper: [Community Detection on the GPU].

> For the program output, check these [logs].

[Community Detection on the GPU]: http://dspace.uib.no/bitstream/handle/1956/16753/PaperIII.pdf
[logs]: https://gist.github.com/wolfram77/5d23db0a60246f9111b141c133360cb8

<br>


## Usage

Flags:
- `-f` specifies input file
- `-g` gain threshold
- `-v` represents verbose mode

```bash
make
./gpulouvain -f mtx-matrix-file -g min-gain [-v]
```

<br>


## Algorithm

Obviously, first step of the algorithm is to read data from input file.
I assume that given graph is undirected.

Actual algorithm is split into 2 parts:
- modularity optimisation: in this step we find currently optimal community (group of vertices)
- community aggregation: in this we merge vertices within a single community into one new vertex (keeping edges between communities)

These 2 steps are repeated as long as modularity gain is bigger than a threshold (provided by user).
In the end final modularity is printed. In verbose mode `original vertex -> final community` assignment is additionally printed.

<br>


## Optimisation

During both phases vertices are divided into buckets based on degrees. This way, we dedicate more resources on a vertex with greater degree.
Buckets containing vertices with smaller degrees use only shared memory, this way we utilise slow global memory only when it is necessary.
