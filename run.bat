@REM REM not working under Windows

@REM @REM curl -L https://github.com/carml/carml-jar/releases/download/v1.2.0/carml-jar-rdf4j-1.2.0-0.4.7.jar -o carml-rdf4j.jar

@REM REM  Run

@REM 

@REM cat input/* | java -jar carml-rdf4j.jar map -m rml/mapping.rml.ttl  -of ttl -P -o output/ -p imx-geo,rdfs,best -pm rml/prefix.json



@REM cat input | java -jar carml-rdf4j.jar map -m rml/mapping.rml.ttl -of ttl -P -o output


@REM netage

@REM curl -L https://github.com/netage/carml-cli/releases/download/cli-1.1.1/cli-1.1.1-SNAPSHOT-jar-with-dependencies.jar -o netage.jar

java -jar netage.jar -f input -m rml/mapping.rml.ttl -o output.ttl -of ttl