{self, ...}: {
  keymaps = [
    # Resize splits.
    {
      mode = "n";
      key = "<A-h>";
      action = "<cmd>vertical resize +2<CR>";
      options.desc = "Increase split width";
    }
    {
      mode = "n";
      key = "<A-j>";
      action = "<cmd>resize -2<CR>";
      options.desc = "Decrease split height";
    }
    {
      mode = "n";
      key = "<A-k>";
      action = "<cmd>resize +2<CR>";
      options.desc = "Increase split height";
    }
    {
      mode = "n";
      key = "<A-l>";
      action = "<cmd>vertical resize -2<CR>";
      options.desc = "Decrease split width";
    }

    # Move between splits.
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      options.desc = "Move to pane on left";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
      options.desc = "Move to pane below";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
      options.desc = "Move to pane above";
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      options.desc = "Move to pane on right";
    }

    # Drupal actions (assumes DDev is in use).
    {
      mode = "n";
      key = "<leader>dc";
      action = ":!ddev drush cr";
      options.desc = "Run 'ddev drush cr'";
    }
    {
      mode = "n";
      key = "<leader>du";
      action = ":!ddev drush updb";
      options.desc = "Run 'ddev drush updb'";
    }
    {
      mode = "n";
      key = "<leader>di";
      action = ":!ddev drush cim";
      options.desc = "Run 'ddev drush config:import'";
    }
    {
      mode = "n";
      key = "<leader>de";
      action = "<cmd>!ddev drush config:export";
      options.desc = "Run 'ddev drush config:export'";
    }

    # DDev actions.
    {
      mode = "n";
      key = "<leader>Ds";
      action = ":!ddev start";
      options.desc = "Run 'ddev start'";
    }
    {
      mode = "n";
      key = "<leader>DS";
      action = ":!ddev stop";
      options.desc = "Run 'ddev stop'";
    }
    {
      mode = "n";
      key = "<leader>DP";
      action = ":!ddev poweroff";
      options.desc = "Run 'ddev poweroff'";
    }

    # Timewarrior actions.
    {
      mode = "n";
      key = "<leader>wt";
      action = "<cmd>!timew summary :annotations :ids :today<CR>";
      options.desc = "Show today's time with summaries";
    }
    {
      mode = "n";
      key = "<leader>wy";
      action = "<cmd>!timew summary :annotations :ids :yesterday<CR>";
      options.desc = "Show yesterday's time with summaries";
    }
    {
      mode = "n";
      key = "<leader>ww";
      action = "<cmd>!timew summary :annotations :ids :week<CR>";
      options.desc = "Show this week's time with summaries";
    }
    {
      mode = "n";
      key = "<leader>wW";
      action = "<cmd>!timew summary :annotations :ids :lastweek<CR>";
      options.desc = "Show last week's time with summaries";
    }
    {
      mode = "n";
      key = "<leader>wm";
      action = "<cmd>!timew summary :annotations :ids :month<CR>";
      options.desc = "Show this month's time with summaries";
    }
    {
      mode = "n";
      key = "<leader>wM";
      action = "<cmd>!timew summary :annotations :ids :lastmonth<CR>";
      options.desc = "Show last month's time with summaries";
    }
  ];
}
