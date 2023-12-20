FROM golang:latest as builder
# Set the Current Working Directory inside the container
WORKDIR /
# Copy go.mod go.sum
COPY go.mod go.sum ./
# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download 
# Copy the source from the current directory to the Working Directory inside the container
COPY . .

# Build the grpc app
RUN go build -o grpc-auth ./cmd/sso


######## Start a new stage from scratch #######
FROM ubuntu:22.04


WORKDIR /root/

# Copy the Pre-built binary file from the previous stage
COPY --from=builder grpc-auth .
COPY --from=builder /config/prod.yaml .
# Expose port 44044 to the outside world
EXPOSE 44044
# Command to run the executable
CMD ["./grpc-auth", "--config=/root/prod.yaml"] 