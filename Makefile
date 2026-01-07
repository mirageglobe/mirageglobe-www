# Makefile for mirageglobe-www
# This repository is a target for automated builds.

.PHONY: help clean info

# Default target
help:
	@echo "MirageGlobe WWW Management"
	@echo ""
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  clean    Remove generated files, preserving essential assets"
	@echo "  info     Show repository information"
	@echo "  help     Show this help message"

clean:
	@echo "Cleaning repository..."
	# Find and remove files/directories, excluding essentials
	# Essentials: .git, CNAME, README.md, Makefile
	find . -maxdepth 1 \
		! -name "." \
		! -name ".git" \
		! -name "CNAME" \
		! -name "README.md" \
		! -name "Makefile" \
		-exec rm -rf {} +
	@echo "Cleanup complete."

info:
	@echo "Repository: mirageglobe-www"
	@echo "Preserved files:"
	@ls -F | grep -E "^(.git|CNAME|README.md|Makefile)$$" || true
	@echo "Status:"
	@du -sh .
