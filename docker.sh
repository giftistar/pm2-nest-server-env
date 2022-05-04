
#!/bin/bash
docker build  --no-cache --tag giftistar/pm2-nest-server-env:12.22.1 .
docker push giftistar/pm2-nest-server-env:12.22.1
