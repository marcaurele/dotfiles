# Make vim the default editor
export EDITOR='vim'

# Fix LC on OSX
# Correctly set the locale
# I'd rather have a en locale than a french one
# and I don't like the US format, so CA is a good option
export LANG='en_US.UTF-8'
export LC_CTYPE='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

# For standard sorting in ls, ...
export LC_COLLATE=C

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"

# Don’t clear the screen after quitting a manual page
#export MANPAGER="less -X"
