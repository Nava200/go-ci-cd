# Start with a Golang base image
FROM golang:1.18-alpine

# Set the current working directory in the container
WORKDIR /app

# Copy the Go app into the container
COPY . .

# Install necessary dependencies
RUN go mod tidy

# Build the Go app
RUN go build -o go-app main.go

# Expose the port that the app will run on
EXPOSE 8000

# Run the app when the container starts
CMD ["./go-app"]
