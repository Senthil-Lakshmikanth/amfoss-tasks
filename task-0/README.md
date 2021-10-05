## 0. Install Ubuntu 20.04
Blog kandipa eludhanuma :smile:

I will tell one of the major error I faced whiile installing Ubuntu.
In bios, in Advanced Option tab, under SATA Operation, there will be two modes:
  
  *   RAID
  *   AHCI

By default while using Windows it will be in RAID mode, and RAID mode doesnt work for Ubuntu. 
While switiching to Ubuntu, everytime I have to change the SATA Operation to AHCI mode in bios, and back to RAID mode when coming back to Windows.

I think this SATA Operation is associated with some SSD related things, may be writing/reading SSD. Iam not sure about it. 
But one thing I know is RAID mode is an advanced option than AHCI which this Ubuntu doesnot support. 
