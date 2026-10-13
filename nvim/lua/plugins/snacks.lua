-- lazy.nvim
return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    dashboard = {
      enabled = true,
      preset = {
        header = [[
          :*%%%%%%%%%%%%%%%%%%%%%%%%%#+-.                     
          :%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#-.                 
          :%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*:               
          :%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+.             
          :%@@@@@@@=::::::::::::::--=#@@@@@@@@@@*:            
          :%@@@@@@%:                   .=@@@@@@@@*.           
          :%@@@@@@%:                     :#@@@@@@@=           
          :%@@@@@@%:                      .-======:.          
          :%@@@@@@%-                       ...-++=.           
          :%@@@@@@%-                   ..:-==++=-:.           
          :%@@@@@@%-             .:-==+**+=-:..               
          :%@@@@@@%-        .:-=*****+=-.                     
          :%@@@@@@%-     .:=*******=:.    ..........          
          :%@@@@@@@-   .:+*******=.      .=@@@@@@@*:          
          :%@@@@@@@-  :+********:       .*@@@@@@@@-           
          :%@@@@@@@- -+********:     .-%@@@@@@@@@=            
          :%@@@@@@*.-+********+ .@@@@@@@@@@@@@@#:             
          :%@@@@@#::+*********+ .@@@@@@@@@@@@%=.              
          :%@@@@@-.=***********- -@@@@@@@@@*-.                
          :%@@@@=.-*************-.:###*+-.                    
          :%@@@*.:+**************=.                           
          :*@@*..-+++++++++++++++++-.                         
        ]],
      },
    },
    explorer = {
      -- your explorer configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    picker = {
      sources = {
        explorer = {
          -- your explorer picker configuration comes here
          -- or leave it empty to use the default settings
          layout = {
            layout = {
              width = 30,
              min_width = 30,
            },
          },
        },
      },
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        Snacks.explorer.open({
          cwd = vim.fn.expand("%:p:h") ~= "" and vim.fn.expand("%:p:h") or vim.fn.getcwd(),
        })
      end,
      desc = "Explorer current file dir",
    },
  },
}
