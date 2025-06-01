{
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
