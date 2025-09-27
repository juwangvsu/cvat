ssh -i ~/.ssh/id_ed25519 \
    -N -T \
    -o ExitOnForwardFailure=yes \
    -o ServerAliveInterval=30 \
    -o ServerAliveCountMax=3 \
    -R 0.0.0.0:18080:127.0.0.1:8080 \
    jackal@dex -p 80
