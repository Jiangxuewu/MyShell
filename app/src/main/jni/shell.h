//
// Created by Administrator on 2016/10/13.
//

#include <jni.h>
#include <string.h>
#include <sys/stat.h>
#include "log.h"
#include "reflex.h"

#ifndef HELLO_JNICALLBACK_SHELL_H
#define HELLO_JNICALLBACK_SHELL_H


int addShell(JNIEnv *env);

int setApplication(JNIEnv *env);

int setApplicationX(JNIEnv *env, const char *application);

jbyteArray decryptForShell(JNIEnv *env, jbyteArray pVoid);

jbyteArray readDexFileFromApk(JNIEnv *env, const char *apk, const char *dex);

int saveByteToFile(JNIEnv *pInterface, jbyteArray pVoid, char *file);


#endif //HELLO_JNICALLBACK_SHELL_H
