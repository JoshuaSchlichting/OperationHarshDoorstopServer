docker run \
    --name counter-strike_server \
    -p 27015:27015/udp \
    -p 27015:27015 \
    -v $(pwd)/server.cfg:/hlds/cstrike/server.cfg \
    febley/counter-strike_server:latest