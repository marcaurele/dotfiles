
update_node_modules() {
	if [ -d node_modules ]; then
		sudo rm -dfr node_modules
		npm install
	else
		printf "${cc_hh_red} No node modules directory here!${cc_NC}"
	fi
}

alias update_node_modules="update_node_modules"