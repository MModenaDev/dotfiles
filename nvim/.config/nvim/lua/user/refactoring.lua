local status_ok, refactoring = pcall(require, "refactoring")
if not status_ok then
  return
end

refactoring.setup {
  prompt_func_return_type = {
     go = true,
  },
  prompt_func_param_type = {
     go = true,
  }
}
