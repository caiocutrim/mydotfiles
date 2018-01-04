set -x PATH $PATH ~/.fzf/bin
set -x PATH $PATH ~/Android/Sdk/tools/
set -x PATH $PATH ~/.config/composer/vendor/bin
set -x PATH $PATH ~/padawan.php/bin
set -x PATH $PATH ~/Android/Sdk/platform-tools/
set -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'
set -x ANDROID_HOME ~/Android/Sdk
# set -x JAVA_TOOL_OPTIONS -javaagent:/usr/share/java/jayatanaag.jar

set -g theme_project_dir_length 1
set -g theme_display_ruby no
xrdb ~/.Xresources
# Base16 Shell
# eval sh $HOME/oceanic-next-shell/oceanic-next.dark.sh
function fish_mode_prompt --description 'Displays the current mode'
  # Do nothing if not in vi mode
  if set -q __fish_vi_mode
    switch $fish_bind_mode
          case default
            set_color --bold --background cyan white
            echo '[N]'
          case insert
            set_color --bold --background green white
            echo '[I]'
          case visual
            set_color --bold --background magenta white
            echo '[V]'
      end
      set_color normal
      echo -n ' '
  end
end

set -g fish_vi_key_bindings
set -g fish_mode_prompt
set -g fish_key_bindings my_key_bindings
