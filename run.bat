@REM REM not working under Windows

@REM @REM curl -L https://github.com/carml/carml-jar/releases/download/v1.2.0/carml-jar-rdf4j-1.2.0-0.4.7.jar -o carml-rdf4j.jar
 
@REM REM  Run 
 
@REM 
 
cat input/zeewolde.Dubbelbestemming.gml | java -jar rml/carml-geo.jar map -m rml/mapping.rml.ttl -of ttl -o output/zeewolde.Dubbelbestemming.ttl -p imx-geo,rdfs,best,nen3610 -pm rml/prefix.json
cat input/zeewolde.Enkelbestemming_1.gml | java -jar rml/carml-geo.jar map -m rml/mapping.rml.ttl -of ttl -o output/zeewolde.Enkelbestemming_1.ttl -p imx-geo,rdfs,best,nen3610 -pm rml/prefix.json
cat input/zeewolde.Enkelbestemming_2.gml | java -jar rml/carml-geo.jar map -m rml/mapping.rml.ttl -of ttl -o output/zeewolde.Enkelbestemming_2.ttl -p imx-geo,rdfs,best,nen3610 -pm rml/prefix.json



@REM cat input | java -jar carml-rdf4j.jar map -m rml/mapping.rml.ttl -of ttl -P -o output


@REM netage

@REM curl -L https://github.com/netage/carml-cli/releases/download/cli-1.1.1/cli-1.1.1-SNAPSHOT-jar-with-dependencies.jar -o netage.jar

@REM java -jar netage.jar -f input -m rml/mapping.rml.ttl -o output.ttl -of ttl

@REM for f in input/*.gml
@REM do
@REM  echo "Processing $f" # always double quote "$f" filename
@REM  # do something on $f
@REM #  cat $f | java -jar carml-rdf4j.jar map -m rml/mapping.rml.ttl  -of ttl -P -o output/$(basename ${f} .gml).ttl -p imx-geo,rdfs,best,nen3610 -pm rml/prefix.json 
@REM  cat $f | java -jar rml/carml-geo.jar map -m rml/mapping.rml.ttl  -of ttl -o output/$(basename ${f} .gml).ttl -p imx-geo,rdfs,best,nen3610 -pm rml/prefix.json 
@REM done