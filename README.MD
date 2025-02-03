# How to Get the Web Application Running on localhost:7775

In order to run the React application, you must have Docker installed.

## 1. Download Dockerfile and Code From Github

## 2. Build the Image

From the terminal, build the image from the Dockerfile using the command:

    docker build -t <your_image_name> .

Once the build is complete, confirm the presence of the image on your system using the command:

    docker images

## 3. Create and Run the Container

Create the container from the image using the command:

    docker run -p 7775:7775 <your_image_name>

This command specifies to map port 7775 on your machine to port 7775 on the container, enabling you to access the react application that's running inside  the container on your host machine

By default Docker will assign a random name for the container. To specify a name, use the `--name` option

The complete command should look like:

    docker run --name mustapha_caleb_coding_assignment11 -p 7775:7775 assignment-11-image

A list of actively running Docker containers can be seen by running the command:

    docker ps

## 4. Open the Web Application

To open the React application, in the address bar of your web browser navigate to `localhost:7775`

To stop the container, use the command:

    docker stop <container_name_or_id>