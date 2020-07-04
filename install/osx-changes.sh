#!/bin/sh
mv ~/new-defaults.txt ~/old-defaults.txt
defaults read > ~/new-defaults.txt
diff ~/old-defaults.txt ~/new-defaults.txt
