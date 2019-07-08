#include "../../src/c/miner.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "../../src/c/sph_jh.h"
#include "../../src/c/jhhash.h"

int main(int argc, char *argv) {
	char *input = (char *) malloc(1024);
	for (int i = 0; i < 1024; i++) {
		input[i] = '0' - '0';
	}
	char *output = (char *) malloc(1024);
    jhhash(output, input); 
	for (int i = 63; i >= 0; i--) {	
		printf("%02x", output[i]);
	}
    return 0;
}

