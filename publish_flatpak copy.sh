#!/bin/bash

flatpak build-bundle TESTCICD glosung-1.0.flatpak org.example.TestCICD
flatpak build-export <zielverzeichnis> <ausgabedatei.flatpak>

chmod +x publish_flatpak.sh
