# This Dockerfile has been updated to be utilized for a python dockerised application.

# We are going to pull the latest Ubuntu image from Docker Hub, instead of alpine based on
# reading many articles and approaches suggested by developers.

FROM ubuntu:latest

# We can add the maintainer details for the image.
LABEL maintainer="mandharavikiran@gmail.com"

# Lets update and install Python3, Pip, vim, git.
RUN apt-get update -y && \
    apt-get install -y python3-pip python3 \
    && apt-get install --no-install-recommends -y \
    vim \
    git \
    curl \
  # Cleaning cache:
  && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# Lets copy the requirements.txt onto the Docker Container.
COPY ./src/requirements*.txt ./

# We can install the python packages needed for our project ex: mysql-connector-python.
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]

EXPOSE 3306






