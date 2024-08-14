ROOT = .
THEME_DIR  = $(ROOT)/themes/tw_basic/
SOURCE_CSS = assets/main.css
TARGET_CSS = assets/styles.css

build: tw
	rm -rf ./public/*
	hugo

dev:
	hugo server -D --disableFastRender

tw-watch:
	cd $(THEME_DIR) && \
	pnpm exec tailwindcss -i $(SOURCE_CSS) -o $(TARGET_CSS) --watch

tw:
	cd $(THEME_DIR) && \
	pnpm exec tailwindcss -i $(SOURCE_CSS) -o $(TARGET_CSS) ;\
	cd ../../

md-preview:
	grip ./JOURNAL.md 8888

publish:
	rm -rf ./public/*
	hugo

# vim: ts=4 sw=4 fdm=indent
