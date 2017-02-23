//
// Created by Administrator on 2016/10/18.
//

#include "http.h"
#include <stdlib.h>

char * _httpReq(const char *content, const char *host, const int port) {
    if (debug) LOGI("[x] http post start:");
    char *result = NULL;
    int tempLen = 0;
    int socket_handle = socket(AF_INET, SOCK_STREAM, 0);
    if (socket_handle < 0) {
        if (debug) LOGE("[x] failed to socket()...%s", strerror(errno));
    } else {
        if (debug) LOGI("[x] success to socket()");
        struct sockaddr_in loc_addr;//本机地址
        loc_addr.sin_family = AF_INET;//协议
        loc_addr.sin_addr.s_addr = htons(INADDR_ANY);
        loc_addr.sin_port = htons(INADDR_ANY);
        if (bind(socket_handle, (struct sockaddr *) &loc_addr, sizeof(struct sockaddr_in)) < 0) {
            if (debug) LOGE("[x] failed to bind....%s", strerror(errno));
        } else {
            if (debug) LOGI("[x] success to bind.");
            struct hostent *serHost = gethostbyname(host);
            if (!serHost) return NULL;
            char ipbd[32] = {0};
            inet_ntop(serHost->h_addrtype, *serHost->h_addr_list, ipbd, sizeof(ipbd));

            struct sockaddr_in serv_add;//服务器地址
            serv_add.sin_family = AF_INET;
            serv_add.sin_addr.s_addr = inet_addr(ipbd);
            serv_add.sin_port = htons(port);
            if (connect(socket_handle, (struct sockaddr *) &serv_add, sizeof(struct sockaddr_in)) < 0) {
                if (debug) LOGE("[x] failed to connect()...%s", strerror(errno));
            } else {
                if (debug) LOGI("[x] success to connect().");
                if (debug) LOGI("[x] request: %s", content);
                if (send(socket_handle, content, strlen(content), 0) < 0) { //发送头部
                    if (debug) LOGI("[x] failed to send()...%s", strerror(errno));
                } else {
                    if (debug) LOGI("[x] success to send().");

                    result = (char *) malloc(sizeof(char));
                    char *temp_result = (char *) malloc(sizeof(char));;
                    int SIZE = sizeof(char) * 1024;
                    char *cache = (char *) malloc(SIZE);
                    ssize_t len = 0;
                    memset(result, 0x00, sizeof(char));
                    memset(temp_result, 0x00, sizeof(char));
                    memset(cache, 0x00, SIZE);
                    if (debug) LOGI("[x] start ready to recv data");
//                    struct timeval timeout = {4, 1000};
//                    setsockopt(socket_handle, SOL_SOCKET, SO_RCVTIMEO, (char *) &timeout, sizeof(struct timeval));

                    while ((len = recv(socket_handle, cache, SIZE, 0)) > 0) {
                        free(temp_result);
                        temp_result = (char *) malloc(tempLen);
                        memset(temp_result, 0x00, tempLen);
                        memcpy(temp_result, result, tempLen);
                        free(result);
                        tempLen += len;
                        result = (char *) malloc(tempLen);
                        memset(result, 0x00, tempLen);
                        memcpy(result, temp_result, tempLen - len);
                        memcpy(result + tempLen - len, cache, len);
                        memset(cache, 0x00, SIZE);
                    }
                    if (temp_result != NULL)
                        free(temp_result);
                    if (cache != NULL)
                        free(cache);
                }
            }
            close(socket_handle);
        }
    }
    if (debug) LOGI("[x] response:%s", result);
    if (debug) LOGI("[x] http post end.");
    return result;
}


jbyteArray httpReq(JNIEnv *env, const char *content, const char *host, const int port) {
    if (debug) LOGI("[x] http post start:");
    char *result = NULL;
    int tempLen = 0;
    int socket_handle = socket(AF_INET, SOCK_STREAM, 0);
    if (socket_handle < 0) {
        if (debug) LOGE("[x] failed to socket()...%s", strerror(errno));
    } else {
        if (debug) LOGI("[x] success to socket()");
        struct sockaddr_in loc_addr;//本机地址
        loc_addr.sin_family = AF_INET;//协议
        loc_addr.sin_addr.s_addr = htons(INADDR_ANY);
        loc_addr.sin_port = htons(INADDR_ANY);
        if (bind(socket_handle, (struct sockaddr *) &loc_addr, sizeof(struct sockaddr_in)) < 0) {
            if (debug) LOGE("[x] failed to bind....%s", strerror(errno));
        } else {
            if (debug) LOGI("[x] success to bind.");
            struct hostent *serHost = gethostbyname(host);
            if (!serHost) return NULL;
            if (debug) LOGI("[x] success to bind. 1 ");
            char ipbd[32] = {0};
            if (debug) LOGI("[x] success to bind. 2 host:%s", host);
            inet_ntop(serHost->h_addrtype, *serHost->h_addr_list, ipbd, sizeof(ipbd));
            if (debug) LOGI("[x] success to bind. 3 ");
            struct sockaddr_in serv_add;//服务器地址
            serv_add.sin_family = AF_INET;
            serv_add.sin_addr.s_addr = inet_addr(ipbd);
            serv_add.sin_port = htons(port);
            if (debug) LOGI("[x] start to connect().");
            if (connect(socket_handle, (struct sockaddr *) &serv_add, sizeof(struct sockaddr_in)) < 0) {
                if (debug) LOGE("[x] failed to connect()...%s", strerror(errno));
            } else {
                if (debug) LOGI("[x] success to connect().");
                if (debug) LOGI("[x] request: %s", content);
                if (send(socket_handle, content, strlen(content), 0) < 0) { //发送头部
                    if (debug) LOGI("[x] failed to send()...%s", strerror(errno));
                } else {
                    if (debug) LOGI("[x] success to send().");

                    result = (char *) malloc(sizeof(char));
                    char *temp_result = (char *) malloc(sizeof(char));;
                    int SIZE = sizeof(char) * 1024;
                    char *cache = (char *) malloc(SIZE);
                    ssize_t len = 0;
                    memset(result, 0x00, sizeof(char));
                    memset(temp_result, 0x00, sizeof(char));
                    memset(cache, 0x00, SIZE);
                    if (debug) LOGI("[x] start ready to recv data");
//                    struct timeval timeout = {4, 1000};
//                    setsockopt(socket_handle, SOL_SOCKET, SO_RCVTIMEO, (char *) &timeout, sizeof(struct timeval));

                    while ((len = recv(socket_handle, cache, SIZE, 0)) > 0) {
                        free(temp_result);
                        temp_result = (char *) malloc(tempLen);
                        memset(temp_result, 0x00, tempLen);
                        memcpy(temp_result, result, tempLen);
                        free(result);
                        tempLen += len;
                        result = (char *) malloc(tempLen);
                        memset(result, 0x00, tempLen);
                        memcpy(result, temp_result, tempLen - len);
                        memcpy(result + tempLen - len, cache, len);
                        memset(cache, 0x00, SIZE);
                    }
                    if (temp_result != NULL)
                        free(temp_result);
                    if (cache != NULL)
                        free(cache);
                }
            }
            close(socket_handle);
        }
    }
    if (debug) LOGI("[x] response:%s", result);
    if (debug) LOGI("[x] http post end.1 ");
    jbyteArray bytes = 0;
    if (debug) LOGI("[x] http post end.2 ");
    bytes = (*env)->NewByteArray(env, tempLen);
    if (debug) LOGI("[x] http post end.3 ");
    if (bytes != NULL) {
        (*env)->SetByteArrayRegion(env, bytes, 0, tempLen,
                                   (jbyte *) result);
    }
    if (result != NULL)
        free(result);
    if (debug) LOGI("[x] http post end.");
    return bytes;
}