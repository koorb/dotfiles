# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Use a modified version of the Solarized Dark theme by default in Terminal.app
TERM_PROFILE='⌘';
TERM_PROFILE_LIVE='⭕️ Live';
CURRENT_PROFILE="$(defaults read com.apple.terminal 'Default Window Settings')";
if [ "${CURRENT_PROFILE}" != "${TERM_PROFILE}" ]; then
  open "${HOME}/.dotfiles/terminalapp/${TERM_PROFILE}.terminal";
  open "${HOME}/.dotfiles/terminalapp/${TERM_PROFILE_LIVE}.terminal";
  sleep 1; # Wait a bit to make sure the theme is loaded
  defaults write com.apple.terminal 'Default Window Settings' -string "${TERM_PROFILE}";
  defaults write com.apple.terminal 'Startup Window Settings' -string "${TERM_PROFILE}";
fi;
