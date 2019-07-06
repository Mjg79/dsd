#include "../../src/c/miner.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "../../src/c/sph_jh.h"
#include "../../src/c/jhhash.h"

int main(int argc, char *argv) {
    const char *input = (const char *)malloc(1024 * 4);
	char *output = (const char *)malloc(1024 * 4);
    jhhash(output, input);
    printf("%b", output);
    return 0;
}