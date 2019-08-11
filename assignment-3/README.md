#### DNS Round Robin Test

##### Scripts
- ```es-containers.sh``` : run ```elasticsearch:2``` containers in detached mode.
- ```lookup-alias.sh``` : run alpine container and nslookup command in it to list containers for DNS name.
- ```verify.sh``` : run curl command in ```centos:7``` container to see different elasticsearch instance name.

