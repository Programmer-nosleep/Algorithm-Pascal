PAS := fpc
BUILD_DIR := build
TARGET := main

# All .pas files are sources
SOURCES := $(wildcard *.pas)
# The main program file
MAIN_SRC := main.pas
# The unit files are all other .pas files
UNIT_SRCS := $(filter-out $(MAIN_SRC), $(SOURCES))
# The object files for the units
UNIT_OBJS := $(patsubst %.pas,$(BUILD_DIR)/%.o,$(UNIT_SRCS))

all: $(BUILD_DIR) $(TARGET)

# The target executable depends on the main source and the unit object files
$(TARGET): $(MAIN_SRC) $(UNIT_OBJS)
	# Compile the main program. The compiler will find the compiled units
	# in the build directory and link them automatically.
	$(PAS) -o$(TARGET) -Fu$(BUILD_DIR) $(MAIN_SRC)

# Rule to compile unit .pas files into .o files
$(BUILD_DIR)/%.o: %.pas
	$(PAS) -Cg -FE$(BUILD_DIR) -o$@ $<

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

.PHONY: clean
clean:
	rm -rf $(TARGET) $(BUILD_DIR) main.o *.o *.ppu