docker build -t ohd .

docker run \
    -it \
    --rm \
    --name OperationHarshDoorstop \
    -p 7777:7777/udp \
    -p 7778:7778/udp \
    -p 7779:7779/tcp \
    -p 27005:27005/udp \
    ohd