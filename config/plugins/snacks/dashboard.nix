{
  extraConfigLua = ''
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        if vim.fn.argc() > 0 then
          -- Close dashboard buffer if it exists
          for _, buf in ipairs(vim.api.nvim_list_bufs()) do
            if vim.bo[buf].filetype == "snacks_dashboard" then
              vim.api.nvim_buf_delete(buf, { force = true })
              break
            end
          end
        end
      end,
    })
  '';
  plugins.snacks = {
    settings = {
      dashboard = {
        enabled = true;
        sections = [
          {
            header = ''
              ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
              ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
              ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
              ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
              ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
              ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
              █████████████████████████████████████████████████╗
              ╚════════════════════════════════════════════════╝
            '';
          }
          {
            icon = " ";
            title = ''Keymaps
            '';
            section = "keys";
            #gap = 1;
            padding = 2;
          }
          {
            icon = " ";
            title = ''Recent Files
            '';
            __unkeyed-1.__raw = "require('snacks').dashboard.sections.recent_files({cwd = true})";
            #gap = 1;
            padding = 2;
          }
          {
            icon = " ";
            section = "projects";
            title = ''Projects
            '';
            padding = 2;
          }
        ];
      };
    };
  };
}
