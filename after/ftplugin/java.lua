local ok, jdtls = pcall(require, "jdtls")
if not ok then
  return
end

local root_dir = vim.fs.root(0, { "pom.xml", "build.gradle", "build.gradle.kts", "mvnw", "gradlew", ".git" })
if not root_dir then
  return
end

local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")
local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspaces/" .. project_name
local extra_opts = vim.g.jdtls_opts or {}

local cmd = vim.deepcopy(extra_opts.cmd or { "jdtls" })
table.insert(cmd, "-data")
table.insert(cmd, workspace_dir)

jdtls.start_or_attach({
  cmd = cmd,
  root_dir = root_dir,
  settings = extra_opts.settings,
})
