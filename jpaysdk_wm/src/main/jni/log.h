//
// Created by Administrator on 2016/10/13.
//
#include <jni.h>
#include <stdio.h>
#include <android/log.h>

#ifndef HELLO_JNICALLBACK_LOG_H
#define HELLO_JNICALLBACK_LOG_H

static const char *kTAG = "SKY_Ndk";
int debug;

#define LOGD(...) \
  ((void)__android_log_print(ANDROID_LOG_DEBUG, kTAG, __VA_ARGS__))
#define LOGI(...) \
  ((void)__android_log_print(ANDROID_LOG_DEBUG, kTAG, __VA_ARGS__))
#define LOGE(...) \
  ((void)__android_log_print(ANDROID_LOG_ERROR, kTAG, __VA_ARGS__))


char *Jstring2CStr(JNIEnv *env, jstring jstr);


#endif //HELLO_JNICALLBACK_LOG_H
