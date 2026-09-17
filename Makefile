
.PHONY: proto


proto: proto-alarm proto-store

proto-alarm:
	protoc --go_out=./pkg/alarm --go-grpc_out=./pkg/alarm --go-grpc_opt=paths=source_relative alarm.proto

proto-store:
	protoc --go_out=./pkg/store --go-grpc_out=./pkg/store --go-grpc_opt=paths=source_relative store.proto
