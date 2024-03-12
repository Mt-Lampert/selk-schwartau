ROOT = .
THEME_DIR  = $(ROOT)/themes/tw_basic/
SOURCE_CSS = assets/main.css
TARGET_CSS = assets/styles.css

build: tw
	rm -rf ./public/*
	hugo

dev:
	hugo server -D --disableFastRender

tw:
	cd $(THEME_DIR) && \
	pnpm exec tailwindcss -i $(SOURCE_CSS) -o $(TARGET_CSS) ;\
	cd ../../

md-preview:
	grip ./JOURNAL.md 8888

