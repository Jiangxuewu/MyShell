//
// Created by Administrator on 2016/11/24.
//

#include "decode.h"
#include "log.h"
#include <string.h>

//解密
char *decode(char *src) {
    int count = strlen(src);
    size_t len = sizeof(char) * (count + 1);
    char *encode = (char *) malloc(len);
    int i = 0;
    for (i = 0; i < count; i++) {
            encode[i] = src[i] - 1;
    }
    encode[i] = '\0';
//    LOGE("src = %s, decode = %s###", src, encode);
    return encode;
}

//加密
char *encrypt(char *src) {
    int count = strlen(src);
    size_t len = sizeof(char) * (count + 1);
    char *encode = (char *) malloc(len);
    int i;
    for (i = 0; i < count; i++) {
            encode[i] = src[i] + 1;
    }
    encode[i] = '\0';
    LOGE("src = %s, encrypt = %s###", src, encode);
    return encode;
}

char *test(char *src) {

    char *a = encrypt(src);

    return decode(a);

}
