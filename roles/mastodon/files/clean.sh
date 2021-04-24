#!/bin/bash

cd /home/mastodon/live || exit

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

RAILS_ENV=production bin/tootctl media remove --days=2
RAILS_ENV=production bin/tootctl preview_cards remove
