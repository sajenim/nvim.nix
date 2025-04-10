{pkgs, ...}: {
  # Tree-sitter is a parser generator tool and an incremental parsing library.
  plugins.treesitter = {
    enable = true;

    # Options provided to the require('nvim-treesitter.configs').setup function.
    settings = {
      highlight = {
        enable = true; # Enable syntax highlighing.
      };
      indent = {
        enable = true; # Enable auto indentation.
      };
    };

    # Highlight `extraConfigLua` as lua.
    nixvimInjections = true;
    # Install all grammar packages.
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };

  plugins.treesitter-refactor = {
    enable = true;

    highlightDefinitions = {
      enable = true;
    };

    navigation = {
      enable = true;
      keymaps = {
        gotoNextUsage = "<leader>n";
        gotoPreviousUsage = "<leader>N";
      };
    };

    smartRename = {
      enable = true;
      keymaps = {
        smartRename = "<leader>r";
      };
    };
  };
}
