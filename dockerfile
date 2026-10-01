#pull base image
FROM ubuntu:latest
#set working directory
WORKDIR /app
#copy the files into app folder
COPY . temp.py
#install python and pip on system
RUN apt-get update && \
 apt-get install -y \
  python3 python3-pip

#set env name
ENV NAME=prod
#start the services
CMD [ "python3", "test.py" ]



