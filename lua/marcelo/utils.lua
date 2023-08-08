local get_package = function()
  local current_file = vim.fn.expand("%:p")
  local relative_path = current_file:gsub("^.*java/", "")
  local without_filename = relative_path:gsub("/([^/]+%.java)$", "")
  local package_name = without_filename:gsub("[/\\]", ".")
  return package_name
end

local get_entity_from_repository = function ()
  local file_name = vim.fn.expand('%:t')
  local name = file_name:gsub('Repository.java', '')
  return name .. 'Entity'
end

local get_entity_import = function ()
  local current_package = get_package()
  local entity_package = current_package:gsub('repository', 'entity')
  return entity_package .. '.' .. get_entity_from_repository()
end

return {
  get_package = get_package,
  get_entity_from_repository = get_entity_from_repository,
  get_entity_import = get_entity_import,
}
