{
  autoStart = true;
  image = "postgres:10-alpine";
  environment = {
   "POSTGRES_PASSWORD" = "hFYE1fR2ox61E9XRgA42";
   "POSTGRES_DB" = "statping";
   "POSTGRES_USER" = "root";
   "PGDATA" = "/var/lib/postgresql/data/pg_data";
  };
  extraOptions = [ "--pod=statping" ];

  volumes = [
   "pg_data:/var/lib/postgresql/data/pg_data"
  ];
}
