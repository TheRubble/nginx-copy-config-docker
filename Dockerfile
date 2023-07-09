# Use the Nginx image from Docker Hub as a base image
FROM nginx:latest

# Copy the 'app' directory from your host to the container's HTML directory
COPY ./app /usr/share/nginx/html

# Copy the shell script into the container
COPY ./copy-config.sh /copy-config.sh
RUN chmod +x /copy-config.sh

# Expose port 80
EXPOSE 80

# Run the shell script when the container starts
CMD ["/bin/sh", "/copy-config.sh"]