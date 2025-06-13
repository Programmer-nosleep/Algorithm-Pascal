FPC := fpc

SRC_PATH := src
INC_PATH := include

SRC := $(wildcard $(SRC_PATH)/*.pas)

TARGET := main
OUTDIR := out
OBJ := $(OUTDIR)/main.o

LDFLAGS := ld -arch x86_64 -macos_version_min 11.0 -Iinclude
FLAGS := -FE. -FU$(OUTDIR) -I$(INC_PATH) -XR/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -Fl/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib

all: $(TARGET)

$(TARGET):
	$(LDFLAGS) -o $(TARGET) $(OBJ)

$(TARGET): $(SRC)
	@mkdir -p $(OUTDIR)
	$(FPC) $(FLAGS) $(SRC)

.PHONY:clean
clean:
	rm -rf $(OUTDIR)