[db_server]
db-0 ansible_host=${db-0-ip}
db-1 ansible_host=${db-1-ip}
db-2 ansible_host=${db-2-ip}

[web_servers]
web-0 ansible_host=${web-0-ip} internal_ip=${web-0-int-ip}
web-1 ansible_host=${web-1-ip} internal_ip=${web-1-int-ip}
web-2 ansible_host=${web-2-ip} internal_ip=${web-2-int-ip}

[load_balancer_servers]
lb-0 ansible_host=${lb-0-ip} internal_ip=${lb-0-int-ip}  priority=101 state=MASTER
lb-1 ansible_host=${lb-1-ip} internal_ip=${lb-1-int-ip}  priority=100 state=BACKUP

[iscsi]
iscsi-0 ansible_host=${iscsi-0-ip}

[elk]
elk-0 ansible_host=${elk-0-ip} internal_ip=${elk-0-int-ip}

[kafka]
kafka-0 ansible_host=${kafka-0-ip}

[prometheus]
prometheus-0 ansible_host=${prometheus-0-ip} internal_ip=${prometheus-0-int-ip}