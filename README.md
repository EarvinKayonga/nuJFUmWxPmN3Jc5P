# nuJFUmWxPmN3Jc5P

Installations:

install protoc 3.10 and greater

```
    - git clone git clone https://github.com/googleapis/googleapis
    
    - protoc -I. --proto_path=googleapis  --include_imports --include_source_info  --descriptor_set_out=target/greeter.pb proto/helloworld.proto

    protoc -I/usr/local/include -I. \
  -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
  --swagger_out=logtostderr=true:swagger \
  proto/helloworld.proto

    - docker-compose up --build
```

```
curl -X POST http://localhost:51051/v1/hello -H 'Content-Type: application/json'  -d '{ "name": "ndede", "random": "dsdsd" }'
```

Lessons

Tonic doesnt support imports in proto files.
Envoy works seamlessly
BloomRPC ftw


