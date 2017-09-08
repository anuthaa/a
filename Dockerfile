FROM maven
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# Install app dependencies
COPY . /usr/src/app/
RUN mvn clean install
#RUN mvn clean install
# Bundle app source
COPY . /usr/src/app
RUN cd /usr/src/app/gameoflife-web
EXPOSE 9090
#CMD [ 'mvn', 'package' ]
RUN mvn jetty:run
