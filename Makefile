MKDIR = mkdir -p
CP = cp
MKEXE = chmod +x
RM = rm -f

all : 

install : 
	$(MKDIR) $(DESTDIR)/usr/bin 
	$(MKDIR) $(DESTDIR)/usr/share/thinkpad-toolbox 
	$(MKDIR) $(DESTDIR)/usr/share/pixmaps
	$(MKDIR) $(DESTDIR)/etc/xdg/autostart
	$(MKDIR) $(DESTDIR)/etc/acpi
	$(MKDIR) $(DESTDIR)/etc/acpi/events
	$(MKDIR) $(DESTDIR)/usr/share/applications
	$(CP) thinkpad-toolbox			$(DESTDIR)/usr/bin/thinkpad-toolbox
	$(CP) thinkpad-toolbox.glade		$(DESTDIR)/usr/share/thinkpad-toolbox/thinkpad-toolbox.glade
	$(CP) thinkpad-toolbox.png		$(DESTDIR)/usr/share/pixmaps/thinkpad-toolbox.png
	$(CP) thinkpad-toolbox.desktop		$(DESTDIR)/etc/xdg/autostart/thinkpad-toolbox.desktop
	$(CP) thinkpad-toolbox.acpi		$(DESTDIR)/etc/acpi/thinkpad-toolbox.sh
	$(CP) thinkpad-toolbox.event		$(DESTDIR)/etc/acpi/events/thinkpad-toolbox
	$(CP) thinkpad-toolbox-app.desktop	$(DESTDIR)/usr/share/applications/thinkpad-toolbox.desktop
	$(MKEXE) $(DESTDIR)/usr/bin/thinkpad-toolbox
	$(MKEXE) $(DESTDIR)/etc/acpi/thinkpad-toolbox.sh
	@echo Ok.

clean:
	@echo Ok.
