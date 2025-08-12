# @see https://github.com/olimorris/codecompanion.nvim/
# @see https://nix-community.github.io/nixvim/plugins/codecompanion/index.html
{
  plugins = {
    codecompanion = {
      enable = true;
      settings = {
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
                      -- default = 'qwen2.5-coder:latest',
                      default = 'codellama:7b',
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
        opts = {
          log_level = "TRACE";
          send_code = true;
          use_default_actions = true;
          use_default_prompts = true;
        };
        strategies = {
          chat = { adapter = "ollama"; };
          inline = { adapter = "ollama"; };
          agent = { adapter = "ollama"; };
        };
      };
    };
  };
}
