<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [yujie_shell](#yujie_shell)
  - [Setup scripts for Ubuntu (bash)](#setup-scripts-for-ubuntu-bash)
    - [Current supported software & CLI](#current-supported-software--cli)
    - [Detailed bash scripts](#detailed-bash-scripts)
      - [Personal](#personal)
      - [External](#external)
    - [Ideas to be continued!](#ideas-to-be-continued)
    - [Reference for Ubuntu setup](#reference-for-ubuntu-setup)
    - [Snippets & Extension used in VS Code](#snippets--extension-used-in-vs-code)
  - [Other bash scripts](#other-bash-scripts)
  - [Setup scripts for Windows (Powershell with scoop)](#setup-scripts-for-windows-powershell-with-scoop)
    - [Reference for Win setup](#reference-for-win-setup)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

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

#### Personal

- `cli_tools.sh`: download command line tools
- `get_hack_font.sh`: download and configue [Hack font](https://github.com/source-foundry/Hack)
- `get_cn_fonts.sh`: download and configure additional English-Chinese fonts
- `install_ros_noetic.sh`: download and configure ROS dev environment and tools
- `install-conda.sh`: download and configure Miniconda
- `link_dotfile.sh`: configure dotfiles for bash, conda, inputsc, etc.
- `scriptutils.sh`: utilitie functions used in other setup scripts
- `git_config.sh`: config personal github globally

#### External

- [`cuda_11.2_installation_on_Ubuntu_20.04`](https://gist.github.com/Mahedi-61/2a2f1579d4271717d421065168ce6a73)

### Ideas to be continued!

- Using GitHub Actions to check the installation correctness
- Use developed software to manage font installation
- Config git to local dir
- Add Pinyin support: <https://zhuanlan.zhihu.com/p/109317949>

### Reference for Ubuntu setup

- [UsingTheTerminal](https://help.ubuntu.com/community/UsingTheTerminal)
- [My bookmarked Shell Q&A](https://www.notion.so/yujiehe/Shell-scripts-Q-A-fb3ebb4dcf1b42bf8a99fb0a52241e60)
- repos:
    - https://github.com/theniceboy/.config
        ?????????????????????
    - https://github.com/theniceboy/scripts
    - https://github.com/theniceboy/nvim
    - https://github.com/davidoort/setup
- Fonts with icon: https://www.nerdfonts.com/
- Script to backup robot environment: https://github.com/clearpathrobotics/robot-backup
- Config scripts for Ubuntu: https://github.com/HoEmpire/ubuntu18.04-config-script

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
  - [?????? Windows ?????????????????????Scoop??? - zhihu](https://zhuanlan.zhihu.com/p/128955118)
  - [Scoop ?????? - ???????????????Bucket - zhihu](https://zhuanlan.zhihu.com/p/165635039)
