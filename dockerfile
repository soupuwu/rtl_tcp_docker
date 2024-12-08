FROM alpine:3.16.2
EXPOSE 1234/tcp
RUN apk add --no-cache rtl-sdr
ENTRYPOINT ["rtl_tcp", "-a", "0.0.0.0"]
