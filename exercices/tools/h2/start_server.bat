java -jar h2-1.4.189.jar -url "jdbc:h2:./robot-test;INIT=RUNSCRIPT FROM './create_database.sql';AUTO_SERVER=true" -user robot -password robot
pause