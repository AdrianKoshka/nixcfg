{ config, ... }:

{
 virtualisation = {
   podman = {
     enable = true;
     dockerCompat = false;
  };
 };
}
