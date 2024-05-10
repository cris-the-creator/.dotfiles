return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["-"] = {
            function() require("oil").open end,
            desc = "Open parent directory",
          },
        },
      },
    },
  },
}
