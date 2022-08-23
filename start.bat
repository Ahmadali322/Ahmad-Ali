@echo off

echo Success!

echo IP:

tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive NGROK authtoken - check again your authtoken"

echo Username: administrator

echo Password: JohnTech1234

echo You can login now.
