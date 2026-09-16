
.PHONY: proto

proto:
	protoc --go_out=./pkg/alarm/proto --go-grpc_out=./pkg/alarm/proto --go-grpc_opt=paths=source_relative alarm.proto
