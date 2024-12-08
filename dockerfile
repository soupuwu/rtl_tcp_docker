FROM alpine:3.21
EXPOSE 1234/tcp
COPY ./rtlsn2dev.sh rtlsn2dev.sh
RUN chomd +x ./rtlsn2dev.sh
RUN apk add --no-cache rtl-sdr
ENTRYPOINT ["rtl_tcp", "-a", "0.0.0.0"]
