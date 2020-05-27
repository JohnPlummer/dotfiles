#!/bin/bash

if [[ `uname` == 'Darwin' ]]; then
  # MacOS
  FONT_DIR="$HOME/Library/Fonts/"
else
  # Linux
  FONT_DIR="$HOME/.local/share/fonts/"
  mkdir -p $FONT_DIR
fi

# for testing
FONT_DIR="test-font/"

URL="https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira Code Regular Font Complete.otf"

echo $FONT_DIR
echo $URL

wget -P "${FONT_DIR}" "\"${URL}\""

echo wget -P test-font/ "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira Code Regular Nerd Font Complete.otf"
# echo -e "Run: $find_command | xargs -0 -I % cp \"%\" \"$FONT_DIR/\"\n"

# # Copy all fonts to user fonts directory
# echo "Downloading fonts..."
# # printing
# eval $find_command | xargs -0 -I %

# eval $find_command | xargs -0 -I % cp "%" "$FONT_DIR/"

# # Reset font cache on Linux
# if command -v fc-cache @>/dev/null ; then
#     echo -e "\nResetting font cache, this may take a moment..."
#     fc-cache -f $FONT_DIR
# fi

# echo -e "\nAll fonts have been installed to $FONT_DIR"
