#Add timestamps to Bash history
_shell="$(basename $SHELL)"

if [ "$_shell" = "bash" ] ; then
  export HISTTIMEFORMAT="%m/%d/%y %I:%M:%S %p: "
fi

