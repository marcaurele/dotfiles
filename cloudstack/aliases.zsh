alias csdev-go='cd $HOME/exoscale/cloudstack'
alias csdev-build='mvn -P kvm,exoscale,developer -Dsimulator -Dmaven.test.skip=true $1'
alias csdev-buildwithtest='mvn -P kvm,exoscale,systemvm,developer -Dsimulator $1'
alias csdev-deploydb='MAVEN_OPTS=$MAVEN_OPTS_DEBUG mvn -Pdeveloper -pl developer -Ddeploydb'
alias csdev-deploysimulator='MAVEN_OPTS=$MAVEN_OPTS_DEBUG mvn -Pdeveloper -pl developer -Ddeploydb-simulator'
alias csdev-start='java -Xdebug -Xnoagent -Xrunjdwp:transport=dt_socket,address=8787,server=y,suspend=n -Djava.net.preferIPv4Stack=true -Dlog4j.configuration=log4j-cloud.xml -cp "client/target/conf:client/target/bcprov-jdk15on-1.55.jar:`find client/target -type f -name "cloud-client-*-exoscale-*"`" org.apache.cloudstack.ServerDaemon'
alias csdev-installdc='python tools/marvin/marvin/deployDataCenter.py -i setup/dev/advanced.cfg'

alias csdev-dump='mysqldump --complete-insert --skip-lock-tables --extended-insert=FALSE --ignore-table=cloud.usage_event --ignore-table=cloud.event'
