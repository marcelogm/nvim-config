local get_package = function()
  local current_file = vim.fn.expand("%:p")
  local relative_path = current_file:gsub("^.*java/", "")
  local without_filename = relative_path:gsub("/([^/]+%.java)$", "")
  local package_name = without_filename:gsub("[/\\]", ".")
  return package_name
end

return {
  get_package = get_package
}
