if status is-interactive
    # Commands to run in interactive sessions can go here
	# Base16 Shell
	if status --is-interactive
    	# Base 16 shell themes
		# set BASE16_SHELL "$HOME/.config/base16-shell/"
    	# source "$BASE16_SHELL/profile_helper.fish"
	end
end
source ~/.asdf/asdf.fish
#source /opt/homebrew/opt/asdf/libexec/asdf.fish
. ~/.asdf/plugins/java/set-java-home.fish

# starship init fish | source
set fish_greeting

# Homebrew make
fish_add_path /opt/homebrew/opt/make/libexec/gnubin

# Postgres tools
fish_add_path /Applications/Postgres.app/Contents/Versions/latest/bin

# Poetry
fish_add_path ~/.local/bin

# Own aliases
alias d='docker run -it --rm --volume $PWD:/code --workdir=/code/'
alias b=bat
alias m=micro
alias ammend='git commit --amend --no-edit'


git config --global alias.nuke '!sh -c "git branch -D $1 && git push origin :$1" -'
alias gl='git log --all --decorate --oneline --graph'


# alias lazydocker="docker run --rm -it -v \
# /var/run/docker.sock:/var/run/docker.sock \
# -v $HOME/CODE/TOOLS/lazydocker:/.config/jesseduffield/lazydocker \
# lazyteam/lazydocker"

# alias install_lazydocker="DOCKER_BUILDKIT=0 docker build -t lazyteam/lazydocker \
# --build-arg BASE_IMAGE_BUILDER=arm64v8/golang \
# --build-arg GOARCH=arm64 \
# https://github.com/jesseduffield/lazydocker.git && mkdir $HOME/TOOLS/lazydocker"

if test -d (brew --prefix)"/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end