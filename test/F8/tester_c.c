#include "../../src/c/miner.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "../../src/c/sph_jh.h"
#include "../../src/c/jh.h"

int main(int argc, char *argv) {
    const char *input = (const char *)malloc(1024 * 4);
    for (int i = 0; i < 1024; i++) {
		input[i] = '0' - '0';
	}
	char *output = (const char *)malloc(1024 * 4);
    //set input here
    sph_jh_context sc;
    #ifdef SPH_64
    memcpy(sc.H.wide, input, sizeof sc.H.wide);
    #endif
    DECL_STATE
    READ_STATE(sc);
    E8;
    WRITE_STATE(sc);
    #ifdef SPH_64
    memcpy(output, sc.H.wide, sizeof sc.H.wide);
    #endif
    for (int i = 63; i >= 0; i--) {	
		printf("%02x", output[i]);
	}
    //let majid push jh512, then copy its ouput hhere
    return 0;
}