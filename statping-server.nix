{
  autoStart = true;
  image = "docker.io/statping/statping";
  volumes = [
   "/var/containers/statping/certs/cert.pem:/app/server.crt:z"
   "/var/containers/statping/certs/key.pem:/app/server.key:z"
   "/var/containers/statping/app/:/app/"
  ];
  dependsOn = [
   "statping-postgres"
  ];
  extraOptions = [ "--pod=statping" ];
  environment = {
   "BASE_PATH" = "statping";
   "DB_CONN" = "postgres";
   "DB_HOST" = "statping-postgres";
   "DB_PORT" = "5432";
   "DB_DATABASE" = "statping";
   "DB_USER" = "root";
   "DB_PASS" = "hFYE1fR2ox61E9XRgA42";
  };
}
