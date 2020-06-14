# Users and Groups

https://www.cyberciti.biz/faq/howto-linux-add-user-to-group/

Useful commands:
- add a user: `adduser <name>`
- list groups: `groups` or `cat /etc/group`

## Add User to Group(s)

```sh
sudo usermod -aG sudo $USER
sudo usermod -aG dialout $USER
sudo usermod -aG plugdev $USER
sudo usermod -aG i2c $USER
sudo usermod -aG spi $USER
sudo usermod -aG gpio $USER
sudo usermod -aG audio $USER
sudo usermod -aG video $USER
```
