#!/bin/sh
eval $(ssh-agent)
ssh-add ~/.ssh/id_rsa
git config --global user.name "Christoph Scholz"
git config --global user.email "christoph.scholz@gmail.com"
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_rsa
git config --global commit.gpgsign true
git config --global gpg.ssh.allowedSignersFile ~/.ssh/allowed_signers
git config --global init.defaultBranch main
export EDITOR=vim

exec "$@"
