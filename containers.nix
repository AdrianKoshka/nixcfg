{ config, ...}:

{
 # container testing
 virtualisation.oci-containers = {
   backend = "podman";
   containers = {
    statping = import ./statping-server.nix;
   };
 };
}
