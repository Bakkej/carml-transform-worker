curl -L https://github.com/carml/carml-jar/releases/download/v1.2.0/carml-jar-rdf4j-1.2.0-0.4.7.jar -o carml-rdf4j.jar

for f in input/*.gml
do
 echo "Processing $f" # always double quote "$f" filename
 # do something on $f
#  cat $f | java -jar carml-rdf4j.jar map -m rml/mapping.rml.ttl  -of ttl -P -o output/$(basename ${f} .gml).ttl -p imx-geo,rdfs,best,nen3610 -pm rml/prefix.json 
 cat $f | java -jar rml/carml-geo.jar map -m rml/mapping.rml.ttl  -of ttl -o output/$(basename ${f} .gml).ttl -p imx-geo,rdfs,best,nen3610 -pm rml/prefix.json 
done

