DROPBOX=~/Dropbox/Application\ Support/BBEdit/Language\ Modules
FILES = prolog.plist \
	CSP.plist \
	BMachines.plist \
	TLASpecs.plist
DFILES = $(DROPBOX)/prolog.plist \
	$(DROPBOX)/CSP.plist \
	$(DROPBOX)/BMachines.plist \
	$(DROPBOX)/TLASpecs.plist
.PHONY=diff copy
diff:
	@echo "Diffing files from Dropbox"
	for pfile in $(FILES); do \
		echo $$pfile ; \
		diff $(DROPBOX)/$$pfile ./$$pfile; \
		done
copy:
	@echo "Copying files from Dropbox"
	for pfile in $(FILES); do \
		echo $(DROPBOX)/$$pfile ; \
		cp $(DROPBOX)/$$pfile ./ ; \
		done