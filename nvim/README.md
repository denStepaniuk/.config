LazyVim: follow initial setup and must have tools.

Some quality of life settings:
Add to .zshrc or similar shell config file:
*TMUX: 
- convenient sessions profiler:
tm() {
  [[ -z "$1" ]] && { tmux ls; return; }
  tmux new-session -A -s "$1"
}
*FZF:
# Set up fzf key bindings and fuzzy completion, allows to use ** + TAB button
source <(fzf --zsh)

