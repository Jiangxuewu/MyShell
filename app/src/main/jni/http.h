//
// Created by Administrator on 2016/10/18.
//

#include "log.h"
#include <string.h>
#include <stdio.h>

#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <unistd.h>
#include <jni.h>
#include "log.h"

#ifndef HELLO_JNICALLBACK_HTTP_H
#define HELLO_JNICALLBACK_HTTP_H

char * _httpReq(const char *content, const char *host, const int port);
jbyteArray httpReq(JNIEnv *env, const char *content, const char *host, const int port);

#endif //HELLO_JNICALLBACK_HTTP_H
