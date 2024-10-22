local M = {}

M.replace_go_module = function()
	local cur_module = vim.fn.input("Enter current module name (CUR): ")
	local new_module = vim.fn.input("Enter new module name (NEW): ")

	if cur_module == "" or new_module == "" then
		vim.notify("Both CUR and NEW module names must be provided!", vim.log.levels.ERROR)
		return
	end

	-- Replace module name in go.mod
	local go_mod_cmd = string.format("go mod edit -module %s", new_module)
	vim.fn.system(go_mod_cmd)

	-- Escape forward slashes in the module names for the `perl` command
	local escaped_cur_module = cur_module:gsub("/", "\\/")
	local escaped_new_module = new_module:gsub("/", "\\/")

	-- Command to replace imports in .go files
	local find_cmd = string.format(
		"find . -type f -name '*.go' -exec perl -pi -e 's/%s/%s/g' {} \\;",
		escaped_cur_module,
		escaped_new_module
	)

	vim.fn.system(find_cmd)

	vim.notify("\nReplaced module name in go.mod and Go files from " .. cur_module .. " to " .. new_module)
end

return M
