eval "$(jenv init -)"

export MAVEN_OPTS='-Xmx1024m -Xdebug -Xrunjdwp:transport=dt_socket,address=8787,server=y,suspend=n -Djava.net.preferIPv4Stack=true'