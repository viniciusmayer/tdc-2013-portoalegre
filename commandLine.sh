cd <project home>

# <context> - <database name>
# prod - tdc
liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties --contexts=prod update

# include db.changelog-1.1.xml
 
# dev - tdc
liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties --contexts=dev update

# dev - tdc
liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties --contexts=dev rollback 1

# prod - tdc
liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties --contexts=prod update

# include db.changelog-1.2.xml
# include db.changelog-1.3.xml

liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties --contexts=prod update

liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties dropAll

liquibase --changeLogFile=db/changelog/db.changelog-master.xml --defaultsFile=liquibase-commandLine.properties --contexts=prod updateSQL > update.sql

# verificar a conexão
liquibase --changeLogFile=generateChangeLog.xml --defaultsFile=liquibase-commandLine-prod.properties generateChangeLog