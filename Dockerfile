FROM nginx:1.17.2-alpine

# Add Maintainer Info
MAINTAINER Daniel Lei <dleibox@gmail.com>

# Add a volume pointing to /tmp
VOLUME /tmp

# Go to work directory
# WORKDIR /home

EXPOSE 80

# # The application's jar file
# ARG JAR_FILE=./target/a-springboot-service-0.0.1-SNAPSHOT.jar

# # Add the application's jar to the container
# ADD ${JAR_FILE} a-springboot-service.jar
ADD ./git.dlei.ca.conf /etc/nginx/conf.d

# # Run the jar file 
# ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","./a-springboot-service.jar"]
CMD ["nginx", "-g", "daemon off;"]