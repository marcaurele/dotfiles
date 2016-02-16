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
#
# Warning: pb with pipsi which does not use the correct base prefix
# Need to look into it
#
if ! type "pipsi" > /dev/null; then
	echo '> Installing pipsi'
	sudo pip3 install pipsi
else
	echo '> Checking new version of pipsi'
	sudo pip3 install --upgrade pipsi
fi

# Tools via pipsi
declare -a pipsi_tools=(
	"cs"
	"flake8"
	"sphinx"
	"tox"
)
for cmd in "${pipsi_tools[@]}"; do
	if ! type "$cmd" > /dev/null 2>&1; then
		pipsi install $cmd
	else
		pipsi upgrade $cmd
	fi
done

# Custom install for sphinx libs
declare -a sphinx_tools=(
	"pyenchant"
	"sphinxcontrib-spelling"
)
if [ -f $HOME/.local/venvs/sphinx/bin/pip ]; then
	for tool in "${sphinx_tools[@]}"; do
		if [ $($HOME/.local/venvs/sphinx/bin/pip freeze | grep $tool | wc -l) -eq 0 ]; then
			$HOME/.local/venvs/sphinx/bin/pip install $tool
		else
			$HOME/.local/venvs/sphinx/bin/pip install --upgrade $tool
		fi
	done
fi
