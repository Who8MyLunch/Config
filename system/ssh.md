
https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

# Generate new keys

	ssh-keygen -t rsa -b 4096 -C "pierre.villeneuve@gmail.com"

# Add key to ssh-agent

Start agent in the background and add private key to agent

	eval "$(ssh-agent -s)"

	ssh-add ~/.ssh/id_rsa


# Add key to github account

Copy contents of `~/.ssh/id_rsa.pub` to new github entry.



## ssh-copy-id

https://www.ssh.com/ssh/copy-id

Copy your public credentials over to other device so you don’t have to keep typing your password


```sh
ssh-copy-id -i ~/.ssh/id_rsa user@remote_host.what
```

## ssh-agent

- https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
- https://www.cyberciti.biz/faq/ubuntu-debian-linux-server-install-keychain-apt-get-command/
- https://github.com/funtoo/keychain

Start the ssh-agent in the background.

```sh
$ eval "$(ssh-agent -s)"
```

Add key to ssh-agent

```sh
$ ssh-add ~/.ssh/id_rsa
```

## Password manager

Install keychain if not already installed.

```sh
sudo apt-get install keychain
```

Add this line to .bashrc:

    eval `keychain --eval --quiet --inherit any-once --agents ssh id_rsa`


## github

https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/
https://help.github.com/articles/testing-your-ssh-connection/


