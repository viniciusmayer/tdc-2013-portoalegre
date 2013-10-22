cd <project home>

liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties --contexts=prod update

liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties dropAll

liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties --contexts=prod updateSQL > update.sql

liquibase --changeLogFile=generateChangeLog.xml --defaultsFile=liquibase-commandLine-prod.properties generateChangeLog