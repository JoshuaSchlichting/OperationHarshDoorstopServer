docker build -t ohd .

findreplace -find "Counter-Strike 1.6 Server" -replace "$1" -file server.cfg
findreplace -find "rconpassword" -replace "$2" -file server.cfg

docker run \
    --name counter-strike_server \
    -p 27015:27015/udp \
    -p 27015:27015 \
    -v server.cfg:/hlds/cstrike/server.cfg \
    febley/counter-strike_server:latest