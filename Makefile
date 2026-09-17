
.PHONY: proto


proto: proto-alarm proto-store

proto-alarm:
	protoc \
	  --proto_path=./proto \
	  --go_out=paths=source_relative:./pkg/proto/alarm \
	  --go-grpc_out=paths=source_relative:./pkg/proto/alarm \
	  alarm.proto
proto-store:
	protoc \
	  --proto_path=./proto \
	  --go_out=paths=source_relative:./pkg/proto/store \
	  --go-grpc_out=paths=source_relative:./pkg/proto/store \
	  store.proto