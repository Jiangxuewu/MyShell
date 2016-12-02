#include "reflex.h"
#include "log.h"
#include "shell.h"


JNIEXPORT void JNICALL
Java_com_bb_1sz_ndk_App_jniCreate(JNIEnv *env, jclass type) {
    if (debug) LOGI("[x] jniCreate start");
    setApplication(env);
    if (debug) LOGI("[x] jniCreate end");

}

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *reserved) {
    FILE *log = fopen("/sdcard/TM/t.m", "rt");
    debug = log ? JNI_TRUE : JNI_FALSE;
    LOGI("[x] JNI start, d is %d", debug);
    JNIEnv *env;
    (*vm)->AttachCurrentThread(vm, &env, 0);
    addShell(env);
    LOGI("[x] JNI end");
    return JNI_VERSION_1_6;
}
