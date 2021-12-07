<!-- START doctoc -->
<!-- END doctoc -->

# yujie_shell

## Setup scripts for Ubuntu (bash)

> ideas from <https://github.com/davidoort/setup>, an automated way of setting up my workstation on macOS or Ubuntu after a reinstall of the OS by David Oort Alonso

### Current supported software & CLI

<details open>
    <summary><b>included apps</b></summary>
        <div align="left">
            Chrome, Terminator, Typora, Zoom
        </div>
</details>

<details open>
    <summary><b>included dev tools</b></summary>
        <div align="left">
            VS code, miniconda, ROS
        </div>
</details>

<details open>
    <summary><b>included command line tools (CLI)</b></summary>
        <div align="left">
            git, unzip, tldr, tmux, htop, ffmpeg
        </div>
</details>

<details open>
    <summary><b>included dotfiles</b></summary>
        <div align="left">
            `.bashrc_extras` (amendment to original bashrc), `.aliases` (customised alias), `.inputrc` (incremental history searching), `.condarc` (conda config)
        </div>
</details>

### Detailed bash scripts

- `cli_tools.sh`: download command line tools
- `get_hack_font.sh`: download and configue [Hack font](https://github.com/source-foundry/Hack)
- `get_cn_fonts.sh`: download and configure additional English-Chinese fonts
- `install_ros_noetic.sh`: download and configure ROS dev environment and tools
- `install-conda.sh`: download and configure Miniconda
- `link_dotfile.sh`: configure dotfiles for bash, conda, inputsc, etc.
- `scriptutils.sh`: utilitie functions used in other setup scripts

### Reference for Ubuntu setup

- [UsingTheTerminal](https://help.ubuntu.com/community/UsingTheTerminal)
- [My bookmarked Shell Q&A](https://www.notion.so/yujiehe/Shell-scripts-Q-A-fb3ebb4dcf1b42bf8a99fb0a52241e60)

### Snippets & Extension used in VS Code

- [`shellscritp.json`](./shellscritp.json)
- [shell-format](https://marketplace.visualstudio.com/items?itemName=foxundermoon.shell-format) extension for VS Code

## Other bash scripts

- [`conda_pipeline.sh`](./misc/conda_pipeline.sh)
- [`parse_yml_test.sh`](./misc/yaml/parse_yml_test.sh)

## Setup scripts for Windows (Powershell with scoop)

:construction:

### Reference for Win setup

- [Ash258](https://github.com/Ash258)/**[Scoop-Core](https://github.com/Ash258/Scoop-Core)**: Shovel. Alternative, more advanced, and user-friendly implementation of windows command-line installer scoop.
- [ivaquero](https://github.com/ivaquero)/**[scoopet](https://github.com/ivaquero/scoopet)**: A Scoop bucket for facilitating academic research.
  - [搭建 Windows 统一开发环境（Scoop） - zhihu](https://zhuanlan.zhihu.com/p/128955118)
  - [Scoop 进阶 - 建立自己的Bucket - zhihu](https://zhuanlan.zhihu.com/p/165635039)
