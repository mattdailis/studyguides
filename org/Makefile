OUT_DIR=~/studyguides
# Using GNU Make-specific functions here
FILES=$(patsubst %.org,$(OUT_DIR)/%.md,$(wildcard *.org))

.PHONY: all clean install-doc

all: install-doc

install-doc: $(OUT_DIR) $(FILES)
	cp $(OUT_DIR)/README.md $(OUT_DIR)/index.md
#	bundle exec jekyll build --source $(OUT_DIR) --destination $(OUT_DIR)/_site
	#bundle exec jekyll serve --source $(OUT_DIR) #--destination $(OUT_DIR)/_site

$(OUT_DIR):
	mkdir -v -p $(OUT_DIR)

%.md: %.org
	emacs --batch --visit $< -f org-md-export-to-markdown --kill
	python front_matter.py $@
	# mv $@ temp
	# touch $@
	# echo "---" >> $@
	# echo "layout: default" >> $@
	# echo "---" >> $@
	# cat temp >> $@
	# rm temp

$(OUT_DIR)/%.md: %.md
# install -v -m 644 -t $(OUT_DIR) $<
	cp $< $@
	rm $<

clean:
	-rm *.html
	-rm *.md
	-rm *~
