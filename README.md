# docker-wildfly
Install a wildfly, add a user with a password.

### BUILD :
docker build -t wildfly_image .
### RUN :
docker run -p 80:8080 -p 90:9990 -it --name container_wildfly wildfly_image