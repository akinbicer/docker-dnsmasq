# DNSMasq 

DNSMasq is a lightweight, easy to configure DNS forwarder, designed to provide DNS (and optionally DHCP and TFTP) services to a small-scale network. 

## Usage

Specify a set of domains to map to ips and ports as below. Google DNS addresses are shown here as an example.

`DOMAIN_JSON='{"local":"127.0.0.1@50053", "*": "8.8.8.8"}'`

The above configuration sends anything with a `local` domain to `127.0.0.1`, other requests go to Google DNS addresses

## Deploying using Docker

Start the DNSMasq server. Add the option `-d` or `--detach` to run in the
background.

```console
docker compose up
```

To stop the server, enter `Ctrl+C` followed by `docker compose down`. If running
in detached mode, you will only need to enter `docker compose down`.

## Issues, Feature Requests or Support
Please use the [New Issue](https://github.com/akinbicer/docker-dnsmasq/issues/new) button to submit issues, feature requests or support issues directly to me. You can also send an e-mail to akin.bicer@outlook.com.tr.
