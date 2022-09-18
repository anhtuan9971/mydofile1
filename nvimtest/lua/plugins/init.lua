vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'
  use {"nvim-lua/plenary.nvim"}
  use { "wbthomason/packer.nvim"}
  use {"kyazdani42/nvim-web-devicons"}
  use {"lukas-reineke/indent-blankline.nvim"}
  use { "lewis6991/impatient.nvim"}
  use { "folke/which-key.nvim"}
  use {"nvim-telescope/telescope.nvim"}
  use {"kyazdani42/nvim-tree.lua"}
  use {"numToStr/Comment.nvim"}
  use {"goolord/alpha-nvim"} -- Automatically set up your configuration after cloning packer.nvim
  use {"goolord/alpha-nvim"}
  use {"neovim/nvim-lspconfig"}
  use {"williamboman/mason.nvim"}
  use {"nvim-treesitter/nvim-treesitter"}
  use {"dstein64/vim-startuptime"}

  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
