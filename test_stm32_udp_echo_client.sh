#!/bin/bash

BINARY=./tests/stm32_udp_echo_client/stm32_udp_echo_client.yml
INPUTS=./tests/stm32_udp_echo_client/inputs
OUTPUTS=./tests/stm32_udp_echo_client/output/
HARNESS="python -m hal_fuzz.harness -c $BINARY"
./afl-fuzz -U -m none -i $INPUTS -o $OUTPUTS -- $HARNESS @@
#$HARNESS $INPUTS/UDP_Echo_Server_Client.pcapng.input
