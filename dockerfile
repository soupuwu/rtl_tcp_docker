FROM alpine:3.21
EXPOSE 1234/tcp
COPY ./rtlsn2dev.sh /usr/bin/rtlsn2dev.sh
RUN chmod +x /usr/bin/rtlsn2dev.sh
RUN apk add --no-cache rtl-sdr
ENTRYPOINT ["rtl_tcp", "-a", "0.0.0.0"]
