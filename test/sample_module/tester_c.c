#include <stdio.h>
#include <string.h>
// include specified module here
// sample: #include <../../src/c/not.c>

int main(int argc, char *argv) {
	char line[1 << 20];
	while(scanf("%[^\n]\n", line) > 1) {
		// todo use line as an input for module
		/* sample
		   int input;
		   sscanf(line, "%d", &input);
		   printf("%d\n", not(input));
		 */
	}
}
