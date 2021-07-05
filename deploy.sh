

mvn install

mv target/application-jar-with-dependencies.jar target/pact-doc.jar

rm -rf target/run.sh


echo 'SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"' > target/run.sh
echo 'java -jar $SCRIPT_DIR/pact-doc.jar $@' >> target/run.sh
chmod +x target/run.sh
