{ config, pkgs, ...}:

{
 services = {
  # List services that you want to enable:
  xserver = {
    enable = false;
  };
  openssh = {
    enable = true;
    passwordAuthentication = false;
    startWhenNeeded = true;
    permitRootLogin = "no";
  };
  avahi = {
    nssmdns = true;
    enable = true;
    ipv4 = true;
    ipv6 = true;
    extraServiceFiles = { 
      ssh = "${pkgs.avahi}/etc/avahi/services/ssh.service";
      sftp-ssh = "${pkgs.avahi}/etc/avahi/services/sftp-ssh.service";
    };
    publish = {
      enable = true;
      addresses = true;
      workstation = true;
      hinfo = true;
      userServices = true;
    };
   };
 };
}
