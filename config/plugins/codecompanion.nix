# @see https://github.com/olimorris/codecompanion.nvim/
# @see https://nix-community.github.io/nixvim/plugins/codecompanion/index.html
{
  plugins = {
    codecompanion = {
      enable = true;
      settings = {
        strategies = {
          chat = { adapter = "ollama"; };
          inline = { adapter = "ollama"; };
          agent = { adapter = "ollama"; };
        };
        adapters = {
          ollama = {
            __raw = ''
              function()
                return require("codecompanion.adapters").extend("ollama", {
                  env = {
                    url = "http://localhost:11434",
                  },
                  schema = {
                    model = {
                      default = 'qwen2.5-coder:latest',
                    },
                    num_ctx = {
                      default = 32768,
                    },
                    temperature = {
                      default = 0.8,
                    },
                  },
                })
              end
            '';
          };
        };
      };
    };
  };
}
