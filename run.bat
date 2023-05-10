REM not working under Windows

@REM curl -L https://github.com/carml/carml-jar/releases/download/v1.2.0/carml-jar-rdf4j-1.2.0-0.4.7.jar -o carml-rdf4j.jar

REM  Run

java -jar carml-rdf4j.jar map -m rml -rsl input -of ttl -P -o output