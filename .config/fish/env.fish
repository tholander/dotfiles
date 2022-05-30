set -gx DOT_REPO "$HOME/.cfg"

set -gx ANDROID_HOME "$HOME/Library/Android/sdk"
set -gx ANDROID_SDK_ROOT "$ANDROID_HOME"
set -gx VOLTA_HOME "$HOME/.volta"
set -gx GITLAB_AGENT_TOKEN jjFEaGkeW_6gyAPY5TysHXtP8zoswpuezVLszsdXEUMpqh1zDw
set -gx GITLAB_REGISTRY_TOKEN glpat-NqkyQCRPYsAXQxbZysiK

fish_add_path /opt/homebrew/bin
fish_add_path "$HOME/bin"
fish_add_path $VOLTA_HOME/bin

fish_add_path "$ANDROID_HOME/emulator"
fish_add_path  "$ANDROID_HOME/tools"
fish_add_path "$ANDROID_HOME/tools/bin"
fish_add_path "$ANDROID_HOME/platform-tools"

fish_add_path "$HOME/.cargo/bin"

