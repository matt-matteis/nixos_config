{ ... }:

{
  programs.bash.promptInit = ''
    if [ "$TERM" != "dumb" ]; then
      PROMPT_COLOR="1;31m"
      ((UID)) && PROMPT_COLOR="1;32m"

      PS1="\[\033[$PROMPT_COLOR\][\[\e]0;\u@\h: \w\a\]\u@\h:\w]\\$\[\033[0m\] "

      if test "$TERM" = "xterm"; then
        PS1="\[\033]2;\h:\u:\w\007\]$PS1"
      fi
    fi
  '';
}
