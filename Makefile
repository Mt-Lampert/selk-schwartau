ROOT = '/home/perrin/Documents/selk-schwartau/'
THEME_DIR  = '/home/perrin/Documents/selk-schwartau/themes/tw_basic/'
SOURCE_CSS = '/home/perrin/Documents/selk-schwartau/themes/tw_basic/assets/main.css'
TARGET_CSS = '/home/perrin/Documents/selk-schwartau/themes/tw_basic/assets/styles.css'

build: build_styles
	rm -rf ./public/*
	hugo

build_styles:
	cd $(THEME_DIR) && \
	npx tailwindcss -i $(SOURCE_CSS) -o $(TARGET_CSS) ;\
	cd $(ROOT)