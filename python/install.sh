# Install virtualenv and virtualenvwrapper
if ! type "virtualenv" > /dev/null; then
	echo '> Install virtualenv and virtualenvwrapper'
	sudo pip install virtualenv
	sudo pip install virtualenvwrapper
else
	echo '> Trying to upgrade virtualenv & virtualenvwarpper'
	sudo pip install --upgrade virtualenv
	sudo pip install --upgrade virtualenvwrapper
fi

# Install pipsi
if ! type "pipsi" > /dev/null; then
	echo '> Installing pipsi'
	curl https://raw.githubusercontent.com/mitsuhiko/pipsi/master/get-pipsi.py | python3
else
	echo '> Trying to update pipsi'
	pipsi upgrade pipsi
fi

# Install commmons tool via pipsi
# if ! type "pipsi" > /dev/null; then
# 	pipsi install flake8
# 	pipsi install cs
# 	pipsi install bpython
# fi