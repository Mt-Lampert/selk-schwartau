ROOT = '/home/matthiaslangbart/Documents/GitHub/selk-schwartau/'
THEME_DIR  = $(ROOT)'/themes/tw_basic/'
SOURCE_CSS = $(THEME_DIR)'/assets/main.css'
TARGET_CSS = $(THEME_DIR)'/assets/styles.css'

build: tw
	rm -rf ./public/*
	hugo

dev:
	hugo server -D --disableFastRender

tw:
	cd $(THEME_DIR) && \
	npx tailwindcss -i $(SOURCE_CSS) -o $(TARGET_CSS) ;\
	cd $(ROOT)

md-preview:
	grip ./JOURNAL.md 8888

