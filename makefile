ifeq ($(XDG_CONFIG_HOME),)
XDG_CONFIG_HOME := $(HOME)/.config/
endif 

ifeq ($(XDG_DATA_HOME),)
XDG_DATA_HOME := $(HOME)/.local/share/
endif 

config:
	mkdir -p $(XDG_CONFIG_HOME)
	cp -r XDG_CONFIG_HOME/* $(XDG_CONFIG_HOME) -v

data:
	mkdir -p $(XDG_DATA_HOME)
	cp -r XDG_DATA_HOME/* $(XDG_DATA_HOME) -v

path:
	mkdir -p $(HOME)/.local/bin
	cp -r PATH/* $(HOME)/.local/bin -v

home:
	cp HOME/vimrc $(HOME)/.vimrc
	cp HOME/zshrc $(HOME)/.zshrc

all: config data path home