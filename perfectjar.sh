export JYTHONPATH=$JYTHONPATH:src
rm src/PerfectPy/api/*.class
~/jython2.7.0/bin/jython compile.py
rsync -r --exclude='*.py' --exclude='*.log' --exclude='.DS_Store' src/ target/
rm Perfect.jar
jar --create --file Perfect.jar -C target PerfectPy
