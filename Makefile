ROOT = '/home/perrin/Documents/selk-schwartau/'
THEME_DIR  = '/home/perrin/Documents/selk-schwartau/themes/tw_basic/'
SOURCE_CSS = '/home/perrin/Documents/selk-schwartau/themes/tw_basic/assets/main.css'
TARGET_CSS = '/home/perrin/Documents/selk-schwartau/themes/tw_basic/assets/styles.css'

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

