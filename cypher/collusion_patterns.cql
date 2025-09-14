// Shared address
MATCH (a:Supplier)-[:REGISTERED_AT]->(addr:Address)<-[:REGISTERED_AT]-(b:Supplier)
WHERE a<>b RETURN a.name, b.name, addr.value;
// Winner rotation (illustrative)
MATCH (b1:Bid)-[:AWARDED_TO]->(s1:Supplier),
      (b2:Bid)-[:AWARDED_TO]->(s2:Supplier)
WHERE b2.date>b1.date AND s1<>s2
RETURN s1.name, s2.name, b1.id, b2.id;
