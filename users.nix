{ config, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = { 
    users.alc = {
       description = "Adrian Lucrèce Céleste";
       isNormalUser = true;
       extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
       openssh = { 
          authorizedKeys.keys = [
            "ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBACxewoWf/RGhUfbJ8DYk8fLmdW4FfSwTIkyFkjlYdxV24lqVOTopTQP0tHIbARd8WMKxKiLyo6Eb/YtAHnPYSJvlwADin9ahimF72BdQ6/3o+50F0k6GIY0WLZcyK6Z3JD39NqYeO7ZCC/IVXHfbCT9fAp8DvCBFntDnbp6McukWHe+EA== alc@Adrians-Mac-mini.local"
          ];
       };
    };
  };
}
