#!/bin/bash

# Gehe ins Verzeichnis des Projekts
cd /app

# Installiere Build-Abhängigkeiten (Beispiel: automake, autoconf, libtool)
flatpak build org.gnome.Sdk/x86_64/3.38 apt install -y automake autoconf libtool

# Konfiguriere das Projekt (passt dies entsprechend den Anforderungen Ihres Projekts an)
./autogen.sh

# Führe den Build durch
make

# Installiere das gebaute Programm in das Flatpak-Verzeichnis
make install DESTDIR=/app

# Führe den Flatpak-Finish-Befehl aus
flatpak finish --force-clean

export PATH=$PATH:/usr/bin/flatpak-builder