build:
	CGO_ENABLED=0 go build -o bin/proxy

generate-cert:
	openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out MyCertificate.crt -keyout MyKey.key
