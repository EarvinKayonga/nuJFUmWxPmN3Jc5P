# nuJFUmWxPmN3Jc5P

Installations:

install protoc 3.10 and greater

```
    - git clone git clone https://github.com/googleapis/googleapis
    
    - protoc -I. --proto_path=googleapis  --include_imports --include_source_info  --descriptor_set_out=target/greeter.pb proto/helloworld.proto

    - docker-compose up --build
```


Lessons

Tonic doesnt support imports in proto files.
Envoy works seamlessly
BloomRPC ftw
