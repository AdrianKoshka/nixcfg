{ config, ...}:

{
 # container testing
 virtualisation.oci-containers = {
   backend = "podman";
   containers = {
    statping-server = import ./statping-server.nix;
    statping-postgres = import ./statping-postgres.nix;
   };
 };
}
