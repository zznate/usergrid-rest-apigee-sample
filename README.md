# Usergrid Deployment for Servlet Containers
This repository uses the [Maven WAR plugin](http://maven.apache.org/plugins/maven-war-plugin/) to build a ROOT.war file from [Apigee's Usergrid Platform](http://apigee.com/about/products/usergrid) suitable for dropping into servlet containers such as Apache Tomcat. 

## Building and Installing the Webapp
The following steps will guide you through setting up and installing Usergrid locally.

1. Clone the Usergrid repository from github  
`git clone git://github.com/apigee/usergrid-stack.git`

2. __cd__ into the directory  
`cd usergrid-stack`

3. Build the Usergrid codebase with maven (you can optionally include -DskipTests to speed things up)  
`mvn install`

4. Download and install verion 1.0.10 or greater of Apache Cassandra. You can use either the [DataStax Community Edition](http://www.datastax.com/products/community) or the tar file from one of the [ASF mirros](http://cassandra.apache.org/download/). See the installation and setup instructions at either sites for additional details. 

5. Next, clone this repository  
`git clone git://github.com/apigee/usergrid-rest-apigee-sample.git`

6. Move into the project directory and build  
`cd usergrid-rest-apigee-sample && mvn install`

7. Load the __ROOT.war__ file from the __target__ directory created in the step above into your servlet container

8. Start Apache Cassandra (either via the bin/cassandra script in the case of a tar file install or the service scripts from a packaged install)

9. Go to the following URL to initialize and setup the Usergrid database (by default, the username and password is superuser:superpass):  
[http://localhost:8080/system/setup/database](http://localhost:8080/system/setup/database)

After about a minute of setup time, Usergrid should be running on your machine. Your next stop should be the [documentation](http://apigee.com/docs/usergrid/content/usergrid-api-reference).

## Exploring the Properties (Customization)
To customize the Usergrid installation to your environment, see the properties file located here:
[http://github.com/apigee/usergrid-rest-apigee-sample/blob/master/src/main/resources/usergrid.properties](http://github.com/apigee/usergrid-rest-apigee-sample/blob/master/src/main/resources/usergrid.properties)

## Still Have Questions?
Please send any issues or comments to the [Usergrid mailing list](https://groups.google.com/forum/?fromgroups#!forum/usergrid). 

Feel free to add to these instructions at any time by forking and sending a pull request. 

Note: the current release of Apache Tomcat - 7.0.29 - is [totally hosed](http://www.mail-archive.com/users@tomcat.apache.org/msg100552.html) (seriously, folks, if it's an obvious bug in the spec just don't implement it). Do not use it. 7.0.26 was used to verify this setup. 
