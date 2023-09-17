# Start from the official Go image
FROM golang:1.21

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Build the Go application
RUN go build -o main .

# Set the entrypoint command to run the Go application
CMD ["./main"]