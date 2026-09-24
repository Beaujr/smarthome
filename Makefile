
.PHONY: proto


proto: proto-alarm proto-store proto-device_detector

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

proto-device_detector:
	protoc \
	  --proto_path=./proto \
	  --go_out=paths=source_relative:./pkg/proto/device \
	  --go-grpc_out=paths=source_relative:./pkg/proto/device \
	  device_detector.proto