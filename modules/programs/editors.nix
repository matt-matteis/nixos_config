{ pkgs, ... }:

{
  programs.vim = {
    enable = true;
    defaultEditor = true;
    package = pkgs.vim-full.customize {
      name = "vim";
      vimrcConfig.customRC = ''
        filetype plugin indent on
        syntax on
        set tabstop=4
        set shiftwidth=4
        set expandtab
        set background=dark
        set number
      '';
    };
  };
}
