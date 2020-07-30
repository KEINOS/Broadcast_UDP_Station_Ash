# UDP Broadcast Station in Ash Shell

Sample Docker container to send broadcast messages via UDP in Ash. (Port=5963 by default)

## File Description

- `broadcaster.sh` (Entrypoint script. Sends the broadcast messages)

## What It Does

In this sample container:

1. Creates the socket of UDP broadcast message port.
2. Loops the below
    - Sends a broadcast message.
    - Waits/sleeps for a seconds.

## Requirements

The `socat` command is needed to send and receive the messages. This command is a proxy that connects a socket to others. In this case the UDP port to STDOUT.

## Sample Usage

- [KEINOS/Broadcast-inside-Docker-network](https://github.com/KEINOS/Broadcast-inside-Docker-network) @ GitHub
