#!/bin/ash

echo "> Running tailscaled"
tailscaled &

echo "> Waiting for tailscaled to come online"
sleep 3

echo "> Joining tailnet..."
tailscale up --authkey=${AUTH_KEY}

echo "> Tailnet status"
tailscale status

echo "> Running indefinitely"
sleep infinity
