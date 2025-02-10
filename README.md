# Python Server with Nginx Proxy and SSL

This project sets up a **Python server** running behind an **Nginx reverse proxy** with **SSL** encryption using **self-signed certificates**. It's designed to run in Docker containers for easy setup and development.

## Prerequisites

Before you begin, ensure that you have the following installed:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

1. Clone the Repository:

First, clone the repository to your local machine.

```bash
git clone https://github.com/CloudGirlManu/Python-Nginx-Project.git
cd Python-Nginx-Project


2. Set Up Variables:
Open the docker-compose.yaml file in your preferred text editor and replace the following environment variables with your desired values for basic authentication:
environment:
  - BASIC_USERNAME=your_username
  - BASIC_PASSWORD=your_password

3. Build the Docker Containers:
In the root directory of your project (where the docker-compose.yaml file is located), run the following command to build the Docker containers:

docker-compose build

This command will:
Build the Docker images for the services defined in the docker-compose.yaml file.

4. Run the Docker Containers:
After building the containers, start them by running:

docker-compose up

This command will:
Start the containers in the background (-d option can be added to run in detached mode).
Start the Nginx reverse proxy and Python server, with the Python server being exposed on port 8080 and Nginx running on port 443 (HTTPS).
Once the containers are up and running, you should see output indicating that the services are successfully running.

5. Test the Setup:
To test the setup, open your terminal and use curl to make a request to the server:

curl -k -u "REPLACE_ME:REPLACE_ME" https://localhost:443
Replace REPLACE_ME with the values for BASIC_USERNAME and BASIC_PASSWORD that you defined in docker-compose.yaml.

Alternatively, you can open your web browser and visit:

https://localhost:443
When prompted, enter the username and password you set in docker-compose.yaml.

Note: If you access the server via HTTPS, you may see a warning like this:

Your connection is not private
Attackers might be trying to steal your information from <localhost> (for example, passwords, messages, or credit cards).
NET::ERR_CERT_AUTHORITY_INVALID
This is because a self-signed certificate is being used, and it is not trusted by default because it is not signed by a trusted certificate authority (CA). To bypass the warning:

Click the Advanced link on the error page.
Click Proceed to localhost (unsafe).
This will allow you to access the server with the self-signed certificate.

Stopping the Docker Containers
To stop the containers, run:

docker-compose down
This will stop and remove the running containers. If you want to remove the associated volumes as well, use:

docker-compose down --volumes
Conclusion
You now have a Python server running behind an Nginx reverse proxy with SSL encryption (using a self-signed certificate). For production purposes, it's recommended to use a CA-signed certificate for better security, but this setup works well for local development and testing.

If you have any questions or issues, feel free to open an issue in the repository or reach out for help!