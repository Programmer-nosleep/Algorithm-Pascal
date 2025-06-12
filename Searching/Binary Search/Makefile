FPC := fpc

SRC := src/main.pas
OBJ := main.o

TARGET := main
OUTDIR := out

LDFLAGS := ld -arch x86_64 -macos_version_min 11.0
FLAGS := -FE$(OUTDIR) -FU$(OUTDIR) -XR/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -Fl/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib

all: $(TARGET)

$(TARGET):
	$(LDFLAGS) -o $(TARGET) $(OBJ)

$(TARGET): $(SRC)
	@mkdir -p $(OUTDIR)
	$(FPC) $(FLAGS) $(SRC)

.PHONY:clean
clean:
	rm -rf $(OUTDIR)