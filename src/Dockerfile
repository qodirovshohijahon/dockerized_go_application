RUN mkdir /build
ADD *.go /build/
WORKDIR /build
RUN CGO_ENABLED=0 GOOS=linux go build -a -o golang-memtest .


FROM alpine:3.11.3
COPY --from=builder /build/golang-memtest .

# executable
EXPOSE 8080
ENTRYPOINT [ "./golang-memtest" ]
# arguments that can be overridden
# CMD [ "3", "300" ]