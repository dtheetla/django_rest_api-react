# base image  
FROM node:20.3.1-alpine3.18

# setup environment variable  
ENV DockerHOME=/code  

# set work directory  
# RUN mkdir -p $DockerHOME  

# where your code lives  
WORKDIR $DockerHOME  

# copy whole project to your docker home directory. 
# COPY . $DockerHOME  
COPY ./package.json $DockerHOME  

# install dependencies  
RUN npm install -g react-scripts@5.0.1 

RUN npm install -g

# port where the Django app runs  
EXPOSE 3000

# start server  
# RUN  npm start
