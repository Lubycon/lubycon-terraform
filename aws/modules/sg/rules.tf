variable "rules" {
  description = "Map of known security group rules (define as 'name' = ['from port', 'to port', 'protocol', 'description'])"
  type        = map(list(any))

  # Protocols (tcp, udp, icmp, all - are allowed keywords) or numbers (from https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml):
  # All = -1, IPV4-ICMP = 1, TCP = 6, UDP = 16, IPV6-ICMP = 58
  default = {
    # Log Aggregator
    logaggregator-elb-24224-tcp = [24224, 24224, "tcp", "log stream from tcp"]
    logaggregator-elb-momitoring-tcp = [34400, 34400, "tcp", "Prometheus TCP per process"]
    # Zabbix agent
    zabbix-agent-tcp = [10050, 10050, "tcp", "From Zabbix Server"]
    # Turn server
    turn-server-tcp = [3478, 3479, "tcp", "Turn Server TCP"]
    turn-server-udp = [1025, 65535, "udp", "Turn Server UDP"]
    # Prometheus server
    prometheus-server-tcp = [9101, 9101, "tcp", "Prometheus TCP"]
    # Docker remote access
    docker-remote-tcp = [2375, 2375, "tcp", "Docker remote access"]
    # Janus server
    janus-server-tcp       = [10000, 50000, "tcp", "Janus Server TCP"]
    janus-server-udp       = [10000, 50000, "udp", "Janus Server UDP"]
    janus-server-admin-tcp = [7088, 7088, "tcp", "Janus Server admin TCP"]
    # MRecorder server
    mrecorder-server-udp = [20000, 30000, "udp", "Janus Server UDP"]
    # RabbitMQ
    rabbitmq-server-tcp = [5672, 5672, "tcp", "RabbitMQ TCP"]
    # Consul
    consul-tcp          = [8300, 8300, "tcp", "Consul server"]
    consul-webui-tcp    = [8500, 8500, "tcp", "Consul web UI"]
    consul-dns-tcp      = [8600, 8600, "tcp", "Consul DNS"]
    consul-dns-udp      = [8600, 8600, "udp", "Consul DNS"]
    consul-serf-lan-tcp = [8301, 8301, "tcp", "Serf LAN"]
    consul-serf-lan-udp = [8301, 8301, "udp", "Serf LAN"]
    consul-serf-wan-tcp = [8302, 8302, "tcp", "Serf WAN"]
    consul-serf-wan-udp = [8302, 8302, "udp", "Serf WAN"]
    # DNS
    dns-udp = [53, 53, "udp", "DNS"]
    dns-tcp = [53, 53, "tcp", "DNS"]
    # Elasticsearch
    elasticsearch-rest-tcp = [9200, 9200, "tcp", "Elasticsearch REST interface"]
    elasticsearch-java-tcp = [9300, 9300, "tcp", "Elasticsearch Java interface"]
    # HTTP
    http-80-tcp   = [80, 80, "tcp", "HTTP"]
    http-5000-tcp = [5000, 5000, "tcp", "HTTP"]
    http-8080-tcp = [8080, 8080, "tcp", "HTTP"]
    http-8090-tcp = [8090, 8090, "tcp", "HTTP"]
    http-8000-tcp = [8000, 8000, "tcp", "HTTP"]
    http-8188-tcp = [8188, 8188, "tcp", "HTTP"]
    # HTTPS
    https-443-tcp = [443, 443, "tcp", "HTTPS"]
    # IPSEC
    ipsec-500-udp  = [500, 500, "udp", "IPSEC ISAKMP"]
    ipsec-4500-udp = [4500, 4500, "udp", "IPSEC NAT-T"]
    # Kafka
    kafka-broker-tcp = [9092, 9092, "tcp", "Kafka broker 0.8.2+"]
    # LDAPS
    ldaps-tcp = [636, 636, "tcp", "LDAPS"]
    # MySQL
    mysql-tcp = [3306, 3306, "tcp", "MySQL/Aurora"]
    # NFS/EFS
    nfs-tcp = [2049, 2049, "tcp", "NFS/EFS"]
    # PostgreSQL
    postgresql-tcp = [5432, 5432, "tcp", "PostgreSQL"]
    # Oracle Database
    oracle-db-tcp = [1521, 1521, "tcp", "Oracle"]
    # Puppet
    puppet-tcp = [8140, 8140, "tcp", "Puppet"]
    # RDP
    rdp-tcp = [3389, 3389, "tcp", "Remote Desktop"]
    rdp-udp = [3389, 3389, "udp", "Remote Desktop"]
    # Redis
    redis-tcp = [6379, 6379, "tcp", "Redis"]
    # Redshift
    redshift-tcp = [5439, 5439, "tcp", "Redshift"]
    # Splunk
    splunk-indexer-tcp = [9997, 9997, "tcp", "Splunk indexer"]
    splunk-clients-tcp = [8080, 8080, "tcp", "Splunk clients"]
    splunk-splunkd-tcp = [8089, 8089, "tcp", "Splunkd"]
    # Squid
    squid-proxy-tcp = [3128, 3128, "tcp", "Squid default proxy"]
    # SSH
    ssh-tcp = [22, 22, "tcp", "SSH"]
    # Storm
    storm-nimbus-tcp     = [6627, 6627, "tcp", "Nimbus"]
    storm-ui-tcp         = [8080, 8080, "tcp", "Storm UI"]
    storm-supervisor-tcp = [6700, 6703, "tcp", "Supervisor"]
    # Web
    web-jmx-tcp = [1099, 1099, "tcp", "JMX"]
    # WinRM
    winrm-http-tcp  = [5985, 5985, "tcp", "WinRM HTTP"]
    winrm-https-tcp = [5986, 5986, "tcp", "WinRM HTTPS"]
    # Zipkin
    zipkin-admin-tcp       = [9990, 9990, "tcp", "Zipkin Admin port collector"]
    zipkin-admin-query-tcp = [9901, 9901, "tcp", "Zipkin Admin port query"]
    zipkin-admin-web-tcp   = [9991, 9991, "tcp", "Zipkin Admin port web"]
    zipkin-query-tcp       = [9411, 9411, "tcp", "Zipkin query port"]
    zipkin-web-tcp         = [8080, 8080, "tcp", "Zipkin web port"]
    # Zookeeper
    zookeeper-2181-tcp = [2181, 2181, "tcp", "Zookeeper"]
    zookeeper-2888-tcp = [2888, 2888, "tcp", "Zookeeper"]
    zookeeper-3888-tcp = [3888, 3888, "tcp", "Zookeeper"]
    zookeeper-jmx-tcp  = [7199, 7199, "tcp", "JMX"]
    # AzarAPI-api-alb
    api-alb-80-tcp   = [80, 80, "tcp", "api-alb"]
    api-alb-444-tcp  = [444, 444, "tcp", "api-alb"]
    api-alb-446-tcp  = [446, 446, "tcp", "api-alb"]
    api-alb-443-tcp  = [443, 443, "tcp", "api-alb"]
    api-alb-8443-tcp = [8443, 8443, "tcp", "api-alb"]
    # AzarAPI-broker-elb
    broker-elb-443-tcp   = [443, 443, "tcp", "broker-elb"]
    broker-elb-444-tcp   = [444, 444, "tcp", "broker-elb"]
    broker-elb-446-tcp   = [446, 446, "tcp", "broker-elb"]
    broker-elb-8443-tcp = [8443, 8443, "tcp", "broker-elb"]
    broker-elb-12001-tcp = [12001, 12001, "tcp", "broker-elb"]
    broker-elb-61613-tcp = [61613, 61613, "tcp", "broker-elb"]
    broker-elb-61615-tcp = [61615, 61615, "tcp", "broker-elb"]
    # Log Aggregator
    logaggregator-elb-24224-tcp = [24224, 24224, "tcp", "log stream from tcp"]
    # Amazon MSK
    msk-jmx-exporter-tcp = [11001, 11001, "tcp", "amazon msk jmx exporter"]
    msk-node-exporter-tcp = [11002, 11002, "tcp", "amazon msk node expoerter"]
    # Open all ports & protocols
    all-all       = [-1, -1, "-1", "All protocols"]
    all-tcp       = [0, 65535, "tcp", "All TCP ports"]
    all-udp       = [0, 65535, "udp", "All UDP ports"]
    all-icmp      = [-1, -1, "icmp", "All IPV4 ICMP"]
    all-ipv6-icmp = [-1, -1, 58, "All IPV6 ICMP"]
    # This is a fallback rule to pass to lookup() as default. It does not open anything, because it should never be used.
    _ = ["", "", ""]
  }
}

variable "auto_groups" {
  description = "Map of groups of security group rules to use to generate modules (see update_groups.sh)"
  type        = map(list(any))

  # Valid keys - ingress_rules, egress_rules, ingress_with_self, egress_with_self
  default = {}
}

