# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY ]] && ! [[ -e /tmp/.X11-unix/X0 ]] && (( EUID )); then
  while true; do
    read -p 'Do you want to start X ? (Y/n): '
    case $REPLY in
      [Yy]) exec xinit -- /usr/bin/X -nolisten tcp vt7 &> ~/.xlog ;;
      [Nn]) break ;;
      *) printf '%s\n' 'Please answer Y or n.' ;;
    esac
  done
fi
