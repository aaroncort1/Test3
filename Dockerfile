# Use Alpine Linux for a lightweight base image
FROM alpine:latest

# Install TinyProxy
RUN apk add --no-cache tinyproxy

# Copy the TinyProxy configuration file
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

# Expose the TinyProxy port
EXPOSE 8888

# Start TinyProxy in the foreground
CMD ["tinyproxy", "-d"]
