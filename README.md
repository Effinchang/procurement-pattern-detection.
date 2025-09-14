# procurement-pattern-detection
Graph + anomaly detection for procurement integrity (Neo4j + Python) with data quality checks.
**Keywords:** graph database, Neo4j, pattern detection, collusion, anomaly detection, Great Expectations
## Contents
- cypher/collusion_patterns.cql
- notebooks/ (add IsolationForest demo)
- data/nodes.csv, data/edges.csv

## Quickstart

```bash
pip install -r requirements.txt
# quick graph sanity check
python - << "PY"
import pandas as pd, networkx as nx
e = pd.read_csv("data/edges.csv")
G = nx.from_pandas_edgelist(e, "src", "dst", edge_attr=True, create_using=nx.DiGraph())
print(f"Nodes: {G.number_of_nodes()}, Edges: {G.number_of_edges()}")
PY

  
