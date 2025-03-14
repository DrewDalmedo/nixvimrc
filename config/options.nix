{
  opts =  {
    number = true;
    relativenumber = true;

    expandtab = true;
    shiftwidth = 2;
    tabstop = 2;
  };

  globals = {
    mapleader = ",";
  };

  clipboard = {
    register = "unnamedplus";

    providers.xclip.enable = true;
  };

  #extraConfigLua = ''
  #  require('glacier.ftbindings')
  #'';
}
