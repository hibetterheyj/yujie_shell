# yujie_shell

## Setup scripts for Ubuntu

> ideas from <https://github.com/davidoort/setup>, an automated way of setting up my workstation on macOS or Ubuntu after a reinstall of the OS by David Oort Alonso

### Current support

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

### scripts

- `cli_tools.sh`: download command line tools
- `get_hack_font.sh`: download and configue [Hack font](https://github.com/source-foundry/Hack)
- `get_cn_fonts.sh`: download and configure additional English-Chinese fonts
- `install_ros_noetic.sh`: download and configure ROS dev environment and tools
- `install-conda.sh`: download and configure Miniconda
- `link_dotfile.sh`: configure dotfiles for bash, conda, inputsc, etc.
- `scriptutils.sh`: utilitie functions used in other setup scripts

## Other scripts

- [`conda_pipeline.sh`](./misc/conda_pipeline.sh)
- [`parse_yml_test.sh`](./misc/yaml/parse_yml_test.sh)

## Misc.

### Reference

- [UsingTheTerminal](https://help.ubuntu.com/community/UsingTheTerminal)
- [My bookmarked Shell Q&A](https://www.notion.so/yujiehe/Shell-scripts-Q-A-fb3ebb4dcf1b42bf8a99fb0a52241e60)

### Extension

- [shell-format](https://marketplace.visualstudio.com/items?itemName=foxundermoon.shell-format) extension for VS Code

### Snippets

- [`shellscritp.json`](./shellscritp.json)
