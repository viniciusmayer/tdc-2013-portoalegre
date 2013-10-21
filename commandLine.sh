cd /home/eleonorvinicius/Projects/tdc-2013-portoalegre

liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties --contexts=prod update

liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties dropAll

liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties --contexts=prod updateSQL > update.sql

liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties --contexts=demo updateSQL > update-demo.sql

liquibase --changeLogFile=generateChangeLog.xml --defaultsFile=liquibase-commandLine.properties generateChangeLog