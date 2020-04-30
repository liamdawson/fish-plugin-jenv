set -l jenv_bin_path "$HOME/.jenv/bin"
set -l jenv_shim_path "$HOME/.jenv/shims"

if [ -d $jenv_bin_path ]
  contains -- $jenv_bin_path $PATH
    or set -gx PATH $jenv_bin_path $PATH
end

status --is-interactive; and source (jenv init -|psub)
