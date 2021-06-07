{ config, ... }:

{
 virtualisation = {
   podman = {
     enable = true;
     dockerCompat = false;
  };
 };
 # container testing
 # containers = {
 #   web1 = {
 #     ephemeral = true;
 #     autoStart = true;
 #     bindMounts = {
 #       "/var/www/foo" = {
 #       hostPath = "/var/www/foo";
 #       isReadOnly = true;
 #       };
 #     };
 #     config = { config, pkgs, ... }: {
 #       services.httpd.enable = true;
 #       services.httpd.adminAddr = "foo@example.org";
 #       services.httpd.virtualHosts = {
 #         "rpi4.local" = {
 #          documentRoot = "/var/www/foo";
 #          http2 = true;
 #         };
 #       };
 #     };
 #   };
 # };
}
