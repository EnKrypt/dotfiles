# Setting my path variable

export PATH=$PATH:~/scripts

# Some other common env vars

export EDITOR=nano    # For small edits, nano > vim

# Start X if running irl with a display

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
