FROM    rust:1.39-slim-stretch as builder
RUN     rustup component add rustfmt 

ADD     . /app

WORKDIR /app

RUN    RUST_BACKTRACE=all cargo build --release

FROM    debian:stable-slim as release
EXPOSE 50051
COPY --from=builder /app/target/release/helloworld-server /app/server
CMD     /app/server