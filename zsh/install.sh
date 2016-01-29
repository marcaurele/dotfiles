# Add brew zsh to list of available shells
CHECK_ZSH_INSTALLED=$(grep /\/usr\/local\/bin\/zsh$ /etc/shells | wc -l)
if [ ! $CHECK_ZSH_INSTALLED -ge 1 ]; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells
fi
unset CHECK_ZSH_INSTALLED

# Change actual shell to zsh if needed
if [ ! -n $ZSH_VERSION ]; then
  chsh -s /usr/local/bin/zsh
fi
