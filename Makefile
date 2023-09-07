ROOT = '/home/perrin/Documents/selk-schwartau/'
THEME_DIR = '/home/perrin/Documents/selk-schwartau/themes/tw_basic/'

build: build_styles
	rm -rf ./public/*
	hugo

build_styles:
	cd $(THEME_DIR) && \
	npx tailwindcss -i $(THEME_DIR)/assets/main.css -o $(THEME_DIR)/static/styles.css ;\
	cd $(ROOT)