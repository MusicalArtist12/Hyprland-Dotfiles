ifeq ($(XDG_CONFIG_HOME),)
XDG_CONFIG_HOME := $(HOME)/.config/
endif 

ifeq ($(XDG_DATA_HOME),)
XDG_DATA_HOME := $(HOME)/.local/share/
endif 

config:
	cp -r XDG_CONFIG_HOME/* $(XDG_CONFIG_HOME) -v

data:
	cp -r XDG_DATA_HOME* $(XDG_DATA_HOME) -v

path:
	cp -r PATH/* $(HOME)/.local/bin -v

home:
	cp HOME/vimrc $(HOME)/.vimrc
	cp HOME/zshrc $(HOME)/.zshrc

all: config data path home