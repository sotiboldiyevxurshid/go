# Start from the official Go image
FROM golang:1.21

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Build the Go application
RUN go build -o main .

EXPOSE 8080

# Set the entrypoint command to run the Go application
CMD ["./main"]





# # Start from the official Go image
# FROM golang:1.21

# # Set the working directory inside the container
# WORKDIR /app

# # Copy the source code into the container
# COPY . .


# # Build the Go application
# RUN go build -o main .





# # Start from the official Nginx image
# FROM nginx:1.18.0

# # Copy the built Go application into the Nginx container
# COPY --from=0 /app/main .

# # Expose port 80 for Nginx


# # Set the entrypoint command to start Nginx
# CMD ["nginx", "-g", "daemon off;"]