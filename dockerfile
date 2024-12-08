FROM alpine:3.21
EXPOSE 1234/tcp
COPY ./rtlsn2dev.sh /bin/rtlsn2dev.sh
RUN chmod +x /bin/rtlsn2dev.sh
RUN apk add --no-cache rtl-sdr
ENTRYPOINT ["/bin/sh"]
#ENTRYPOINT ["rtl_tcp", "-a", "0.0.0.0"]
