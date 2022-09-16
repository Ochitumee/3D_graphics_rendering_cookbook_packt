
FROM nvidia/vulkan:1.3-470

ENV DEBIAN_FRONTEND noninteractive
RUN rm /etc/apt/sources.list.d/cuda.list
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y python3 python3-pip
RUN ln -s /usr/bin/python3 /usr/bin/python

# These commands copy your files into the specified directory in the image
# and set that as the working location
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp

# This command compiles your app using GCC, adjust for your source code
# CMD ["g++ -o myapp main.cpp"]

# This command runs your application, comment out this line to compile only
# CMD ["./myapp"]

LABEL Name=graphics_3d Version=0.0.1
