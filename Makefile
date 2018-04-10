OUT_DIR=~/studyguides
# Using GNU Make-specific functions here
FILES=$(patsubst %.org,$(OUT_DIR)/%.html,$(wildcard *.org))

.PHONY: all clean install-doc

all: install-doc

install-doc: $(OUT_DIR) $(FILES)
	jekyll build

$(OUT_DIR):
	mkdir -v -p $(OUT_DIR)

%.html: %.org
	emacs --batch --visit $< -f org-html-export-to-html --kill
	mv $@ temp
	touch $@
	echo "---" >> $@
	echo "layout: default" >> $@
	echo "---" >> $@
	cat temp >> $@
	rm temp

$(OUT_DIR)/%.html: %.html
	install -v -m 644 -t $(OUT_DIR) $<
	rm $<

clean:
	-rm *.html
	-rm *~
