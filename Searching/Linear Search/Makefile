FPC := fpc

SRC := src/*.pas
INC := include/*.pas

TARGET := $(OUTDIR)/main
OBJ := src/main.o

OUTDIR := out

LDFLAGS := ld -arch x86_64 -macos_version_min 11.0
FLAGS := -FE. -FU$(OUTDIR) -XR/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -Fl/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib

all: $(TARGET)

$(TARGET):
	$(LDFLAGS) -o $(TARGET) $(OBJ)

$(TARGET): $(SRC)
	@mkdir -p $(OUTDIR)
	$(FPC) $(FLAGS) $(SRC)

.PHONY: clean
clean:
	rm -rf $(OUTDIR)