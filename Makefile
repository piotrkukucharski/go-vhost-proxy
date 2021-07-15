build:
	CGO_ENABLED=0 go build -o bin/proxy

build-for-windows:
	env GOOS=windows GOARCH=amd64 CGO_ENABLED=0 go build -o bin/proxy.exe

generate-cert:
	openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out MyCertificate.crt -keyout MyKey.key
