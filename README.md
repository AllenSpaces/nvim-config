# Neovim 配置文档

这是一个现代化的 Neovim 配置，采用模块化设计，集成了多种强大的插件和功能。

## 📋 目录

- [特性](#特性)
- [安装要求](#安装要求)
- [安装步骤](#安装步骤)
- [配置结构](#配置结构)
- [插件列表](#插件列表)
- [快捷键](#快捷键)
- [LSP 支持](#lsp-支持)
- [AI 代码助手](#ai-代码助手)
- [自定义配置](#自定义配置)
- [故障排除](#故障排除)

## ✨ 特性

- 🚀 **模块化架构**：采用模块化设计，易于维护和扩展
- 🎨 **现代化 UI**：集成多种 UI 增强插件
- 🤖 **AI 代码助手**：集成 DeepSeek AI 代码助手
- 🔧 **LSP 支持**：完整的语言服务器协议支持
- 📁 **文件管理**：强大的文件浏览器和搜索功能
- 🎯 **代码导航**：快速跳转和代码导航
- 📝 **代码格式化**：自动代码格式化
- 🌈 **语法高亮**：基于 Tree-sitter 的语法高亮
- 🔍 **模糊搜索**：强大的文件搜索功能

## 📋 安装要求

### 系统要求

- **Neovim**: 0.9.0 或更高版本
- **Git**: 用于插件管理
- **Node.js**: 用于 LSP 服务器
- **Python**: 用于某些插件

### 依赖工具

```bash
# macOS (使用 Homebrew)
brew install neovim git node python

# Ubuntu/Debian
sudo apt update
sudo apt install neovim git nodejs npm python3

# CentOS/RHEL
sudo yum install neovim git nodejs npm python3
```

## 🚀 安装步骤

### 1. 克隆配置

```bash
git clone <your-repo-url> ~/.config/nvim
cd ~/.config/nvim
```

### 2. 安装插件

启动 Neovim 后，插件会自动安装：

```bash
nvim
```

### 3. 安装 LSP 服务器

使用 Mason 安装语言服务器：

```vim
:Mason
```

### 4. 安装 Tree-sitter 解析器

```vim
:TSInstall all
```

## 📁 配置结构

> ~/.config/nvim/
> ├── init.lua # 主配置文件
> ├── lua/
> │ ├── configs/ # 基础配置
> │ │ ├── custom.lua # 全局设置
> │ │ ├── keymaps.lua # 快捷键配置
> │ │ └── commands.lua # 自定义命令
> │ └── util/
> │ ├── package-configs/ # 插件配置
> │ ├── lsp-configs/ # LSP 配置
> │ └── code-companion/ # AI 助手配置
> └── lsp/ # LSP 服务器配置

## 🔌 插件列表

### 核心插件

| 插件                | 功能       | 状态 |
| ------------------- | ---------- | ---- |
| **super-installer** | 插件管理器 | ✅   |
| **miracle-of-god**  | 主题配色   | ✅   |
| **lualine**         | 状态栏     | ✅   |
| **nvim-tree**       | 文件浏览器 | ✅   |
| **telescope**       | 模糊搜索   | ✅   |

### 开发工具

| 插件                | 功能       | 状态 |
| ------------------- | ---------- | ---- |
| **nvim-treesitter** | 语法高亮   | ✅   |
| **mason**           | LSP 管理器 | ✅   |
| **nvim-lspconfig**  | LSP 配置   | ✅   |
| **nvim-cmp**        | 代码补全   | ✅   |
| **luasnip**         | 代码片段   | ✅   |

### 增强功能

| 插件              | 功能        | 状态 |
| ----------------- | ----------- | ---- |
| **codecompanion** | AI 代码助手 | ✅   |
| **formatter**     | 代码格式化  | ✅   |
| **commenter**     | 注释工具    | ✅   |
| **autopairs**     | 自动配对    | ✅   |
| **hop**           | 快速跳转    | ✅   |

### UI 增强

| 插件                  | 功能     | 状态 |
| --------------------- | -------- | ---- |
| **noice**             | 命令界面 | ✅   |
| **notify**            | 通知系统 | ✅   |
| **transparent**       | 透明背景 | ✅   |
| **nvim-web-devicons** | 文件图标 | ✅   |
| **snacks**            | 通知美化 | ✅   |

## ⌨️ 快捷键

### 基础导航

- `<Leader>w` - 切换窗口
- `<Leader>b` - 返回上一个位置
- `<Leader>q` - 退出
- `<Leader><S-q>` - 强制退出

### 文件操作

- `<Leader>e` - 打开文件浏览器
- `<Leader>f` - 文件搜索
- `<Leader>g` - 实时搜索
- `<Leader>r` - 刷新文件

### 代码操作

- `<Leader>ga` - 接受 AI 建议
- `<Leader>gr` - 拒绝 AI 建议
- `<Leader>ft` - 打开浮动终端
- `<Leader>i` - 安装插件
- `<Leader>u` - 更新插件
- `<Leader>r` - 移除插件

### LSP 操作

- `gd` - 跳转到定义
- `gr` - 查找引用
- `K` - 显示文档
- `<Leader>ca` - 代码操作
- `<Leader>rn` - 重命名

## 🔧 LSP 支持

### 支持的语言

| 语言           | LSP 服务器 | 状态 |
| -------------- | ---------- | ---- |
| **Lua**        | lua_ls     | ✅   |
| **JavaScript** | ts_ls      | ✅   |
| **TypeScript** | ts_ls      | ✅   |
| **Python**     | pylsp      | ✅   |
| **Java**       | jdtls      | ✅   |
| **C/C++**      | clangd     | ✅   |
| **HTML**       | html       | ✅   |
| **CSS**        | cssls      | ✅   |
| **JSON**       | jsonls     | ✅   |
| **Vue**        | vue_ls     | ❌   |
| **Bash**       | bashls     | ✅   |

### LSP 配置位置

- `lsp/` - 各语言服务器配置
- `lua/util/lsp-configs/` - LSP 通用配置

## 🤖 AI 代码助手

### DeepSeek 集成

- **API Key**: 通过环境变量 `DEEPSEEK_API_KEY` 配置
- **语言**: 中文界面
- **功能**: 代码解释、修复、优化

### 使用方法

1. 设置环境变量：

   ```bash
   export DEEPSEEK_API_KEY="your-api-key"
   ```

````

2. 在 Neovim 中使用：
   - `<Leader>ga` - 接受 AI 建议
   - `<Leader>gr` - 拒绝 AI 建议
   - 使用命令面板选择 AI 操作

### AI 提示词

- `lua/util/code-companion/prompts/` - 自定义提示词
- `action/` - 操作提示词
- `system/` - 系统提示词

## ⚙️ 自定义配置

### 启用/禁用插件

编辑 `init.lua` 中的 `config_modules` 数组：

```lua
local config_modules = {
    { name = "util.package-configs.telescope", enabled = true },
    { name = "util.package-configs.lsp", enabled = false }, -- 禁用 LSP
}
```

### 懒加载配置

```lua
{ name = "util.package-configs.tree-sitter", enabled = true, lazy = true }
```

### 自定义主题

编辑 `lua/util/package-configs/miracle-of-god.lua`：

```lua
vim.cmd([[colorscheme miracle-of-god]])
```

### 自定义快捷键

编辑 `lua/configs/keymaps.lua` 添加新的快捷键。

## 🔍 故障排除

### 常见问题

#### 1. 插件安装失败

```bash
# 清理插件缓存
rm -rf ~/.local/share/nvim
# 重新启动 Neovim
nvim
```

#### 2. LSP 服务器未启动

```vim
:LspInfo
:Mason
```

#### 3. Tree-sitter 解析器安装失败

```vim
:TSInstall <language>
:TSUpdate
```

#### 4. AI 助手无法使用

- 检查 API Key 是否正确设置
- 检查网络连接
- 查看错误日志：`:messages`

### 调试模式

```vim
:checkhealth
:messages
:LspLog
```

### 重置配置

```bash
# 备份当前配置
mv ~/.config/nvim ~/.config/nvim.backup
# 重新克隆配置
git clone <your-repo-url> ~/.config/nvim
```

## 📚 更多资源

- [Neovim 官方文档](https://neovim.io/doc/)
- [LSP 配置指南](https://github.com/neovim/nvim-lspconfig)
- [Tree-sitter 文档](https://tree-sitter.github.io/tree-sitter/)
- [DeepSeek API 文档](https://platform.deepseek.com/api-docs/)

## 🤝 贡献

欢迎提交 Issue 和 Pull Request 来改进这个配置！

## 📄 许可证

MIT License

---

**注意**: 这是一个个人配置，请根据你的需求进行调整。某些插件可能需要额外的系统依赖。
````
