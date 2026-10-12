AS = nasm
LD = ld

AS_FLAGS = -f elf64
LD_FLAGS =

SRC = yousuck.asm
OBJ = build/yousuck.o
BIN = build/yousuck

all: $(BIN)

$(OBJ): $(SRC)
	mkdir -p build/
	$(AS) $(AS_FLAGS) -o $(OBJ) $(SRC)

$(BIN): $(OBJ)
	$(LD) $(LD_FLAGS) -o $(BIN) $(OBJ)

run: $(BIN)
	./$(BIN)

clean:
	rm -r bin/
