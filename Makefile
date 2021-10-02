CC := g++ -pthread

BUILD_DIR=build

all: testinput.out

testinput.out: rm mk ${BUILD_DIR}/main.o ${BUILD_DIR}/inputsystem.o
	$(CC) ${BUILD_DIR}/main.o ${BUILD_DIR}/inputsystem.o -o ./testinput.out

${BUILD_DIR}/main.o: main.cpp
	$(CC) -c main.cpp -o ${BUILD_DIR}/main.o

${BUILD_DIR}/inputsystem.o: inputsystem.cpp
	$(CC) -c inputsystem.cpp -o ${BUILD_DIR}/inputsystem.o

mk:
	mkdir ./${BUILD_DIR}

rm:
	rm -rf ${BUILD_DIR}/ ./testinput.out

.PHONY: clean

clean:
	rm -rf ${BUILD_DIR}/ ./testinput.out
