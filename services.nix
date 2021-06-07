{ config, ...}:

{
 services = {
  # List services that you want to enable:
  xserver = {
    enable = false;
  };
  openssh = {
    enable = true;
    passwordAuthentication = false;
  };
  avahi = {
    nssmdns = true;
    enable = true;
    ipv4 = true;
    ipv6 = true;
    publish = {
      enable = true;
      addresses = true;
      workstation = true;
      hinfo = true;
    };
   };
 };
}
