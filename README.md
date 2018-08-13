# Ubuntu_Solr_Docker
Docker files for setting up Apache Solr on Ubuntu in docker.

Ports contain 8984 for extra node setup. By default solr uses port 8983.

INSTRUCTIONS:
1. Clone the repo and run "docker-compose build".
2. run "docker-compose up" to start the container.
3. Once the container is started, you can start solr from opt/solr folder in the image.
4. Use the command "bin/solr start -force" to start solr on default port(i.e., 8983).
