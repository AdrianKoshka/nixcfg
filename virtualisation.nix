{ config, ... }:

{
 virtualisation = {
   podman = {
     enable = true;
     dockerCompat = false;
  };
 };
  # container testing
  containers = {
    webshit = {
      ephemeral = true;
      autoStart = true;
      bindMounts = {
        "/var/www/" = {
        hostPath = "/var/www/";
        isReadOnly = true;
        };
      };
      config = { config, pkgs, ... }: {
        services.httpd.enable = true;
        services.httpd.adminAddr = "contact@rpi4.local";
        services.httpd.virtualHosts = {
          "rpi4.local" = {
           hostName = "rpi4.local";
           documentRoot = "/var/www/";
           http2 = true;
          };
        };
      };
    };
  };
}
