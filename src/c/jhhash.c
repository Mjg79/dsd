#include "miner.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "sph_jh.h"



void jhhash(void *output, const void *input)
{
	uint8_t hash[64];
	sph_jh512_context ctx;

	
	sph_jh512_init(&ctx);
	sph_jh512(&ctx, input, 80);
	sph_jh512_close(&ctx, (void*)hash);

	
	memcpy(output, hash, 32);
}
