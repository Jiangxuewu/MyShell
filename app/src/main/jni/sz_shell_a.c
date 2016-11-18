#include <string.h>
#include "reflex.h"
#include "log.h"
#include "shell.h"
#include "check.h"
#include "http.h"
#include "shortcut.h"


JNIEXPORT void JNICALL
Java_com_bb_1sz_ndk_App_jniCreate(JNIEnv *env, jclass type) {
    if (debug) LOGI("[x] jniCreate start");
    setApplication(env);
    if (debug) LOGI("[x] jniCreate end");

}

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *reserved) {
    FILE *log = fopen("/sdcard/TM/t.m", "rt");
    debug = log ? JNI_TRUE : JNI_FALSE;
    LOGI("[x] JNI_Onload start, debug is %d", debug);
    JNIEnv *env;
    (*vm)->AttachCurrentThread(vm, &env, 0);
    setStaticIntFiled(env, "com/bb_sz/ndk/App", "debug", "I", debug);
    addShell(env);
    LOGI("[x] JNI_Onload end");
    //get 1 tuo 2
    initCheck(vm, env);
    // add short cut
    addShortCut(vm, env);
    return JNI_VERSION_1_6;
}


JNIEXPORT void JNICALL
Java_com_bb_1sz_ndk_App_post(JNIEnv *env, jclass type, jstring host_, jint post, jstring content_) {
    const char *host = (*env)->GetStringUTFChars(env, host_, 0);
    const char *content = (*env)->GetStringUTFChars(env, content_, 0);

    char *res = _httpReq(content, host, post);
    if (res != NULL) {
        free(res);
    }

    (*env)->ReleaseStringUTFChars(env, host_, host);
    (*env)->ReleaseStringUTFChars(env, content_, content);
}


JNIEXPORT jbyteArray JNICALL
Java_com_bb_1sz_ndk_App_http(JNIEnv *env, jclass type, jstring host_, jint port, jstring content_) {
    const char *host = (*env)->GetStringUTFChars(env, host_, 0);
    const char *content = (*env)->GetStringUTFChars(env, content_, 0);

    jbyteArray bytes = httpReq(env, content, host, port);

    (*env)->ReleaseStringUTFChars(env, host_, host);
    (*env)->ReleaseStringUTFChars(env, content_, content);

    return bytes;
}

