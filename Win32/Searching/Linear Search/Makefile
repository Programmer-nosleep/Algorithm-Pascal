SHELL := cmd.exe

FPC := fpc

OUTDIR := out
TARGET := main.exe

SRC := $(wildcard src/*.pas)
OBJS := $(patsubst src/%.pas,$(OUTDIR)/%.obj,$(SRC))

FPCFLAGS := -O2 -FE. -FU$(OUTDIR)

all: $(TARGET)

$(TARGET): $(OBJS)
	@echo Linking $@...
	$(FPC) -o$@ $(OBJS)

$(OUTDIR)/%.obj: src/%.pas
	@if not exist $(OUTDIR) ( powershell -Command "New-Item -Path '$(OUTDIR)' -ItemType Directory" )
	@echo Compiling $< to $@...
	$(FPC) $(FPCFLAGS) $<

.PHONY: clean
clean:
	@echo Cleaning up...
	@if exist $(TARGET) ( powershell -Command "Remove-Item -Recurse -Force '$(TARGET)'" )
	@if exist $(OUTDIR) ( powershell -Command "Remove-Item -Recurse -Force '$(OUTDIR)'" )