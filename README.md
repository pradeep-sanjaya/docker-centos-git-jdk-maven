# centos-git-jdk8u131-maven

Docker container image with
- Git
- Oracle Java 1.8.0_131
- Apache Maven 3.6.3

## Build image
```
docker build --tag ngpsanjaya/centos-git-jdk-maven:1.0.0 .
```

## Run image
```
docker run -it ngpsanjaya/centos-git-jdk-maven:1.0.0 /bin/bash
```

```
java -version
java version "1.8.0_131"
Java(TM) SE Runtime Environment (build 1.8.0_131-b11)
Java HotSpot(TM) 64-Bit Server VM (build 25.131-b11, mixed mode)
```

```
mvn -version
Apache Maven 3.6.3 (cecedd343002696d0abb50b32b541b8a6ba2883f)
Maven home: /opt/apache-maven-3.6.3
Java version: 1.8.0_131, vendor: Oracle Corporation, runtime: /usr/java/jdk1.8.0_131/jre
Default locale: en_US, platform encoding: UTF-8
OS name: "linux", version: "4.15.0-70-generic", arch: "amd64", family: "unix"
```

```
echo $JAVA_HOME
/usr/java/jdk1.8.0_131
```

```
echo $MAVEN_HOME
/opt/apache-maven-3.6.3
```

```
$PATH
/usr/java/jdk1.8.0_131/bin:/opt/apache-maven-3.6.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```
