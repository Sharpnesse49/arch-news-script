curl -s https://archlinux.org/feeds/news/ \
| rg -o '<link>(https://archlinux\.org/news/[^<]+)</link>' -r '$1' \
| head -n 10 \
| fzf \
| xargs -r xdg-open
