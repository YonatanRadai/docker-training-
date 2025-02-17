# Use the previously built base image
FROM my-node-base

# The ONBUILD commands from the base image will execute here
COPY . /app
WORKDIR /app

# Set the entry point
CMD ["cat", "app.js"]