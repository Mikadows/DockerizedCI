# DockerizedCI
Complete dockerized CI chain.

## V1 

Jenkins et sonar en local (docker-compose)

A chaque push sur github, jenkins détecte et lance la chaine de CI.

Git pull > Maven tests > Maven build > (SonarQube) > Docker build > Docker deploy to docker hub

