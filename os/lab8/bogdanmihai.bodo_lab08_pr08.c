#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr,"parametru invalid\n");
        return 1;
    }

    FILE *fp;
    FILE *out_fp = fopen(argv[2], "w");
    if (out_fp == NULL) {
        fprintf(stderr,"parametru invalid\n");
        return 1;
    }

    char line[100];
    fp = fopen(argv[1], "r");
    if (fp == NULL||ferror(fp)) {
        fprintf(stderr,"parametru invalid\n");
        return 1;
    }

    while (fgets(line, sizeof(line), fp)) {
        int i=0, num,sum=0,cnt=0;
        while (sscanf(line+i, "%d", &num) == 1) {
            i += snprintf(NULL, 0, "%d", num) + 1;
            sum+=num;
            cnt+=1;
        }
        fprintf(out_fp, "%d\n", (int) sum/cnt);
    }

    fclose(fp);
    fclose(out_fp);
    return 0;
}