FROM scratch
COPY bin/echo-server /bin/echo-server
ENV PORT 80
EXPOSE 80
ENTRYPOINT ["/bin/echo-server"]
