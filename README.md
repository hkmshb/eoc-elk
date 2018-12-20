# EOC ELK

Standalone versions of the ELK setup found within `ckan_setup` used for the `EOC Data Portal`.


## Known Issues
1. When elastic search throws `max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]` error. Fix as follows:
   ``` bash
    $ docker-machine ssh
    $ sudo sysctl -w vm.max_map_count=262144
	```

2. Docker IP: 192.168.99.100

