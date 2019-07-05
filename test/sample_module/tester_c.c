#include <stdio.h>
#include <string.h>
// include specified module here
// sample: #include <../../src/c/not.c>

int main(int argc, char *argv) {
    string file_name = argv[0];
    strcat(file_name, ".dat")
    FILE *in_file;
    in_file = fopen(file_name,"r");
    file_name = argv[0];
    strcat(file_name, "_c.txt")
    FILE *out_file;
    out_file = fopen(file_name, "w");
    if (in_file == NULL) {
        printf(stderr, "Can not open %s", file_name);
    }
    if (out_file == NULL) {
        printf(stderr, "")
    }
    if (in_file && out_file) {
        string line;
        while(fscanf(in_file, "%[^\n]\n", line)) {
            // todo use line as an input for module
            /* sample
                int input;
                sscanf(line, "%d", &input);
                fprintf(out_file, "%d\n", not(input));
             */
        }
    }
}