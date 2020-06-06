
https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

# Generate new keys

	ssh-keygen -t rsa -b 4096 -C "pierre.villeneuve@gmail.com"

# Add key to ssh-agent

Start agent in the background and add private key to agent

	eval "$(ssh-agent -s)"

	ssh-add ~/.ssh/id_rsa


# Add key to github account

Copy contents of `~/.ssh/id_rsa.pub` to new github entry.



