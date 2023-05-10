curl -L https://github.com/carml/carml-jar/releases/download/v1.2.0/carml-jar-rdf4j-1.2.0-0.4.7.jar -o carml-rdf4j.jar

_dfiles="/input/*"

for f in _dfiles
do
 echo "Processing $f" # always double quote "$f" filename
 # do something on $f
 cat input/$f | java -jar carml-rdf4j.jar map -m rml/mapping.rml.ttl  -of ttl -P -o output/$f.ttl -p imx-geo,rdfs,best -pm rml/prefix.json 
done

