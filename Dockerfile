# Use the official Jenkins image as the base
FROM jenkins/jenkins:lts

# Switch to the root user to install Docker
USER root

# Install Docker CLI
RUN apt-get update && apt-get install -y docker.io

# Add the Jenkins user to the Docker group
RUN usermod -aG docker jenkins

# Switch back to the Jenkins user
USER jenkins
