# Use official Golang image as base
FROM golang:1.20

# Set environment variables
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64

# Set the working directory
WORKDIR /app

# Copy go.mod and go.sum files
COPY go.mod ./
RUN go mod tidy

# Copy application source
COPY . .

# Build the application
RUN go build -o time-app

# Run the application on container start
EXPOSE 8080
CMD ["./time-app"]

