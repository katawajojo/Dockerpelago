# Dockerpelago
#### Fork of [ArchipelagoDocker](https://www.github.com/shinseitom/ArchipelagoDocker) maintained by KatawaJoJo
---
Targeting Archipelago version 0.6.1

The included `docker-compose.yml` is useful as a starting off point to implement it into your current docker deployments. <br>
I personally run this with `nginx` and `certbot`, and have no issues.

## Utilization of Custom Worlds
Place your `.apworld` files in the `custom_worlds` folder that is created outside of the `Archipelago` folder. This folder is symlinked to the `custom_worlds` folder inside of the `Archipelago` folder itself.

This should allow for your `.apworld` files to persist over Archipelago updates. However, if your `.apworld` requires adding specific files to the `lib` folder, you'll want to install these directly into the `Archipelago` folder itself.
