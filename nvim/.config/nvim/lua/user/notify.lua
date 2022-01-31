local status_ok, notify = pcall(require, "notify")
if not status_ok then
  return
end

notify.setup {
  -- Animation style (see below for details)
  stages = "fade_in_slide_out",

  -- Function called when a new window is opened, use for changing win settings/config
  on_open = nil,

  -- Function called when a window is closed
  on_close = nil,

  -- Render function for notifications. See notify-render()
  render = "minimal",

  -- Default timeout for notifications
  timeout = 175,

  -- For stages that change opacity this is treated as the highlight behind the window
  -- Set this to either a highlight group or an RGB hex value e.g. "#000000"
  background_colour = "Normal",

  -- Minimum width for notification windows
  minimum_width = 10,

  -- Icons for the different levels
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
}

vim.notify = notify

vim.cmd("hi NotifyERRORBorder guifg=#ff5555")
vim.cmd("hi NotifyERRORIcon guifg=#ff5555")
vim.cmd("hi NotifyERRORTitle guifg=#ff5555")

vim.cmd("hi NotifyINFOBorder guifg=#50fa7b")
vim.cmd("hi NotifyINFOIcon guifg=#50fa7b")
vim.cmd("hi NotifyINFOTitle guifg=#50fa7b")

vim.cmd("hi NotifyWARNBorder guifg=#ffb86c")
vim.cmd("hi NotifyWARNIcon guifg=#ffb86c")
vim.cmd("hi NotifyWARNTitle guifg=#ffb86c")

vim.cmd("hi NotifyDEBUGBorder guifg=#6272a4")
vim.cmd("hi NotifyDEBUGIcon guifg=#6272a4")
vim.cmd("hi NotifyDEBUGTitle guifg=#6272a4")

vim.cmd("hi NotifyTRACEBorder guifg=#bd93f9")
vim.cmd("hi NotifyTRACEIcon guifg=#bd93f9")
vim.cmd("hi NotifyTRACETitle guifg=#bd93f9")
