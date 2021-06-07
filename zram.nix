{ config, ... }:

{
 zramSwap = {
   enable = true;
   memoryPercent = 50;
   swapDevices = 1;
 };
}
