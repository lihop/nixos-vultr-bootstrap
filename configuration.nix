{ config, pkgs, ...}:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/vda";

  fileSystems.root = {
    device = "/dev/vda";
    mountPoint = "/";
    fsType = "ext4";
    neededForBoot = true;
    autoResize = true;
  };

  services.openssh = {
    enable = true;
    passwordAuthentication = false;
  };

  users.extraUsers.root.openssh.authorizedKeys.keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC6cV2Zqqzk/w1F5pvZ8Gvdi64/izXQkZI7+rtDV0EyjG4p6d3V4ecTyWjZq02m6CWY/gUW20joktzMDKoRfTT4xpuwRl2rYQ78jrnbZE+GhHyJLlPA5NiWouL6cIqOHyhme1OctlQQuS4lzdnwHamHaFOblDw7pJgfOgcwKPYYUYd6HH9ILtZoD2Xd9SPZWs3ildZanBO2VIdMxJAB/5yEORvVkEqYJWsNQOefDoMbZU/vwiO9dnOU6i33m1ZDOb/fes2zi9CsGn7DAdEJzN/IgJvdln11XV8p2nf+y73Nw2sdsgP6qWQyDJnZpkvJ8kYd2P14QVD72uR5F5V+7CCoOjw/BaMCknnLgRObRUDTzYMd1CPGqtsLtyc+vU+ErSU2m8kLtU1JAcvDwtj+9tociptSI4wAVBVwbX7kdlj5/6d/QDqStGWh0eeSCyUxwCnpENrrgAImzazbLJ1XDYaZjv/zJdkUm8d/6lP39ijC6z5S7C9YzDIsgim8mGtHygLtXe2HQfKxvphlIDLv8DiJfncWZ/SG7xqj9yDQojjFBCW4ZzJLPEWXcpEUB3xpa9+bdu1ewySgYSPZJadeJkysrchLwosSmzDFCbhQCYhm6+TREorYiW2oQmUNRCGf0iRDMrysRlksyKZBi3CPsCSm6dEINXbn/LZZ5toGPYAVww== root@hilly"
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC78/H0GPELM0KFIdgV4xFCeKdjJrQwXF9ZIukWd49GQu5sCrwATXVnFhihl5WKNHvr7lFgWaH1DozD6CMin6QF5WsR5/vBFmhI2wOu/SiAyyjgiK3iAOO2erL+5lXgNjfvubXjDm3noI/28ttrUWHpo6987nkpEUCNdj/GL065XjfnNXqnJTQwvptUybH9qNqMEz0/tBbHsrVEQWnabId6/BWxY2GlWTlthWm4thZXe0XaUcU/0BlzzdUDXnePO3mX3kpRRUl2T3izjiJgJt7BUDxt8X1/aQ8Ry+yDZ7fQmNlkbWLw0OtlnHkABThYjkL1qm4gyWN8KVSQAcqIWybaDdepXW6mr6zj2u+1mNKw39/NbO1vufWJJCBlKtbAAZa0qUUN36W4+9l7o/Pii8BjVwqqwh48xyPecD9jrwcBbwu4gY6O160upiFZ++LYF2yrpzLCelc+Kc2y9HJahDIbDHkMbj8AOJ/o/QvgollLu6//YNZ1QyNPtS2XMBRiLPxEpdmEb3PGqI8nhy5N7J2VqfOO826JtluAr62DMrW7+BJJa8wlJBCOUZ8HFLELOrD0FGla/fnMxqZcMYoH8yZyI1zKPZxZEV+Qt2HKSiCU4sbd6FlSPhADwGr4r/+Wf2EJeqRaEMF+S+BclsWyzhQzI554iMIs9HLFSBxkD10Xbw== leroy@zeno"
  ];

  system.stateVersion = "16.03";
}
