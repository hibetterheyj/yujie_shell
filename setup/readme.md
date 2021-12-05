# setup/

## how-to

```bash
bash link_dotfile.sh
bash desktop_apps.sh
bash cli_tools.sh
bash dev_tools.sh

bash install_ros_noetic.sh
```

## to-do

- [ ] Include nvidia driver installation
- [ ] Include git config and ssh generation
- [ ] Include docker config into `dev_tools.sh`
- [ ] Test `desktop_apps.sh` and `dev_tools.sh`
- [ ] scripts for ubuntu arm64/aarch64 (such as jeston nano or Raspberry Pi)

## related issues

- [Error message 'source: not found' when running a script](https://askubuntu.com/questions/504546/error-message-source-not-found-when-running-a-script): `source` is a Bash built-in function, and you don't execute the script with bash. So it's clear why it is not found.
