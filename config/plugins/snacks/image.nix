{ pkgs, ... }:

{
  extraPackages = with pkgs; [
    ghostscript
  ];

  plugins.snacks = {
    settings = {
      image = {
        enabled = true;
        integrations = {
          markdown = true;
          neorg = false;
          typst = true;
        };
        parsers = {
          latex = false;
          mermaid = false;
        };
      };
    };
  };
}
