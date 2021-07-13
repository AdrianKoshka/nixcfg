{
  autoStart = true;
  image = "docker.io/statping/statping";
  volumes = [
   "/var/containers/statping/certs/cert.pem:/app/server.crt:z"
   "/var/containers/statping/certs/key.pem:/app/server.key:z"
   "/var/containers/statping/app/:/app/"
  ];
  ports = [ "443:443" ];
  environment = {
    BASE_PATH = "statping";
  };
}
