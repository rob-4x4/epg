# 0) Create the shared external network once
podman network create shared

# 1) EPG stack
cd /home/rob/epg
podman compose down
# (optional) remove the old epg_default if it lingers
podman network rm epg_default || true
podman compose up -d

# 2) Dispatcharr stack
cd /home/rob/dispatcher
podman compose down
# (optional) remove the old dispatcher_default if it lingers
podman network rm dispatcher_default || true
podman compose up -d

