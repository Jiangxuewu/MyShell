//
// Created by Administrator on 2016/10/13.
//

#include "reflex.h"
#include "log.h"

////////////////////////
//方法实现////////////
////////////////////

/**
 * 运行clsName中的静态方法methodName, 返回运行结果
 */
jobject runStaticObjectMethod(JNIEnv *env, const char *clsName, const char *methodName, const char *methodParam, ...) {
    jclass cls = (*env)->FindClass(env, clsName);
    if (!cls) {
        return NULL;
    }
    jmethodID mid = (*env)->GetStaticMethodID(env, cls, methodName, methodParam);
    if (!mid) {
        return NULL;
    }
    va_list arg_ptr;
    va_start(arg_ptr, methodParam);
    jobject result = (*env)->CallStaticObjectMethodV(env, cls, mid, arg_ptr);
    va_end(arg_ptr);
    (*env)->DeleteLocalRef(env, cls);
    return result;
}

jobject runStaticObjectMethodX(JNIEnv *env, jclass cls, const char *methodName, const char *methodParam, ...) {
    jmethodID mid = (*env)->GetStaticMethodID(env, cls, methodName, methodParam);
    if (!mid) {
        return NULL;
    }
    va_list arg_ptr;
    va_start(arg_ptr, methodParam);
    jobject result = (*env)->CallStaticObjectMethodV(env, cls, mid, arg_ptr);
    va_end(arg_ptr);
//    (*env)->DeleteLocalRef(env, cls);
    return result;
}


/**
 * 运行clsName中的静态方法methodName(没有返回结果的函数)
 */
int runStaticVoidMethod(JNIEnv *env, const char *clsName, const char *methodName, const char *methodParam, ...) {
    jclass cls = (*env)->FindClass(env, clsName);
    if (!cls) {
        return 0;
    }
    jmethodID mid = (*env)->GetStaticMethodID(env, cls, methodName, methodParam);
    if (!mid) {
        return 0;
    }
    va_list arg_ptr;
    va_start(arg_ptr, methodParam);
    (*env)->CallStaticVoidMethodV(env, cls, mid, arg_ptr);
    va_end(arg_ptr);
    (*env)->DeleteLocalRef(env, cls);
    return 1;
}

int runStaticVoidMethodX(JNIEnv *env, jclass cls, const char *methodName, const char *methodParam, ...) {
    if (debug) LOGI("runStaticVoidMethodX start.0");
    jmethodID mid = (*env)->GetStaticMethodID(env, cls, methodName, methodParam);
    if (debug) LOGI("runStaticVoidMethodX start.1");
    if (!mid) {
        return 0;
    }
    if (debug) LOGI("runStaticVoidMethodX start.2");
    va_list arg_ptr;
    va_start(arg_ptr, methodParam);
    (*env)->CallStaticVoidMethodV(env, cls, mid, arg_ptr);
    va_end(arg_ptr);
//    (*env)->DeleteLocalRef(env, cls);
    return 1;
}

/**
 * 运行clsName中的静态方法methodName(返回结果为int的函数)
 */
jint runStaticIntMethod(JNIEnv *env, const char *clsName, const char *methodName, const char *methodParam, ...) {
    jclass cls = (*env)->FindClass(env, clsName);
    if (!cls) {
        return NULL;
    }
    jmethodID mid = (*env)->GetStaticMethodID(env, cls, methodName, methodParam);
    if (!mid) {
        return NULL;
    }
    va_list arg_ptr;
    va_start(arg_ptr, methodParam);
    jint result = (*env)->CallStaticIntMethodV(env, cls, mid, arg_ptr);
    va_end(arg_ptr);
    (*env)->DeleteLocalRef(env, cls);
    return result;
}

/**
 * 构建类clsName的对象
 * constructionName 构造函数的名称
 * constructionParam 构造函数的参数 和返回结果
 */
jobject newObject(JNIEnv *env, const char *clsName, const char *constructionName, const char *constructionParam, ...) {
    jclass cls = (*env)->FindClass(env, clsName);
    if (!cls) {
        return NULL;
    }
    jmethodID mid = (*env)->GetMethodID(env, cls, constructionName, constructionParam);
    if (!mid) {
        return NULL;
    }
    va_list arg_ptr;
    va_start(arg_ptr, constructionParam);
    jobject result = (*env)->NewObjectV(env, cls, mid, arg_ptr);
    va_end(arg_ptr);
    (*env)->DeleteLocalRef(env, cls);
    return result;
}

/**
 * 运行累clsName对象clsObject中的方法methodName, 返回运行结果
 */
jobject runObjectMethod(JNIEnv *env, const char *clsName, jobject clsObject, const char *methodName, const char *methodParam, ...) {
    jclass cls = (*env)->FindClass(env, clsName);
    if (!cls) {
        return NULL;
    }
    jmethodID mid = (*env)->GetMethodID(env, cls, methodName, methodParam);
    if (!mid) {
        return NULL;
    }
    va_list arg_ptr;
    va_start(arg_ptr, methodParam);
    jobject result = (*env)->CallObjectMethodV(env, clsObject, mid, arg_ptr);
    va_end(arg_ptr);
    (*env)->DeleteLocalRef(env, cls);
    return result;
}

/**
 * 运行累clsName对象clsObject中的方法methodName, 返回jint运行结果
 */
jint runIntMethod(JNIEnv *env, const char *clsName, jobject clsObject, const char *methodName, const char *methodParam, ...) {
    jclass cls = (*env)->FindClass(env, clsName);
    if (!cls) {
        return NULL;
    }
    jmethodID mid = (*env)->GetMethodID(env, cls, methodName, methodParam);
    if (!mid) {
        return NULL;
    }
    va_list arg_ptr;
    va_start(arg_ptr, methodParam);
    jint result = (*env)->CallIntMethodV(env, clsObject, mid, arg_ptr);
    va_end(arg_ptr);
    (*env)->DeleteLocalRef(env, cls);
    return result;
}

/**
 * 运行累clsName对象clsObject中的方法methodName, 返回boolean结果
 */
jboolean runBooleanMethod(JNIEnv *env, const char *clsName, jobject clsObject, const char *methodName, const char *methodParam, ...) {
    jclass cls = (*env)->FindClass(env, clsName);
    if (!cls) {
        return NULL;
    }
    jmethodID mid = (*env)->GetMethodID(env, cls, methodName, methodParam);
    if (!mid) {
        return NULL;
    }
    va_list arg_ptr;
    va_start(arg_ptr, methodParam);
    jboolean result = (*env)->CallBooleanMethodV(env, clsObject, mid, arg_ptr);
    va_end(arg_ptr);
    (*env)->DeleteLocalRef(env, cls);
    return result;
}

/**
 * 运行累clsName对象clsObject中的方法methodName, 返回运行结果
 */
int runVoidMethod(JNIEnv *env, const char *clsName, jobject clsObject, const char *methodName, const char *methodParam, ...) {
    jclass cls = (*env)->FindClass(env, clsName);
    if (!cls) {
        return 0;
    }
    jmethodID mid = (*env)->GetMethodID(env, cls, methodName, methodParam);
    if (!mid) {
        return 0;
    }
    va_list arg_ptr;
    va_start(arg_ptr, methodParam);
    (*env)->CallVoidMethodV(env, clsObject, mid, arg_ptr);
    va_end(arg_ptr);
    (*env)->DeleteLocalRef(env, cls);
    return 1;
}

/**
 * 获取静态变量(object)
 */
jobject getStaticObjectField(JNIEnv *env, const char *clsName, const char *filedName, const char *filedType) {
    if (debug) LOGI("[x] getStaticObjectField start 0 ");
    if (debug) LOGI("[x] getStaticObjectField vls:%s", clsName);
    jclass cls = (*env)->FindClass(env, clsName);
    if (!cls) {
        if (debug) LOGE("[x] getStaticObjectField vls:NULL");
        return NULL;
    }
    jfieldID fid = (*env)->GetStaticFieldID(env, cls, filedName, filedType);
    if (!fid) {
        return NULL;
    }
    jobject result = (*env)->GetStaticObjectField(env, cls, fid);
    (*env)->DeleteLocalRef(env, cls);
    return result;
}

/**
 * 获取静态变量(int)
 */
jint getStaticIntFiled(JNIEnv *env, const char *clsName, const char *filedName, const char *filedType) {
    jclass cls = (*env)->FindClass(env, clsName);
    if (!cls) {
        return NULL;
    }
    jfieldID fid = (*env)->GetStaticFieldID(env, cls, filedName, filedType);
    if (!fid) {
        return NULL;
    }
    jint result = (*env)->GetStaticIntField(env, cls, fid);
    (*env)->DeleteLocalRef(env, cls);
    return result;
}

/**
 * 获取对象的变量(object)
 */
jobject getObjectField(JNIEnv *env, const char *clsName, jobject obj, const char *filedName, const char *filedType) {
    jclass cls = (*env)->FindClass(env, clsName);
    if (!cls) {
        return NULL;
    }
    jfieldID fid = (*env)->GetFieldID(env, cls, filedName, filedType);
    if (!fid) {
        return NULL;
    }
    jobject result = (*env)->GetObjectField(env, obj, fid);
    (*env)->DeleteLocalRef(env, cls);
    return result;
}

/**
 * 设置clsName的对象obj的变量filedName的值为value
 */
int setObjectFiled(JNIEnv *env, const char *clsName, jobject obj, const char *filedName, const char *filedType, jobject value) {
    jclass cls = (*env)->FindClass(env, clsName);
    if (!cls) {
        return 0;
    }
    jfieldID fid = (*env)->GetFieldID(env, cls, filedName, filedType);
    if (!fid) {
        return 0;
    }
    (*env)->SetObjectField(env, obj, fid, value);
    (*env)->DeleteLocalRef(env, cls);
    return 1;
}

void setStaticIntFiled(JNIEnv *env, const char *clsName, const char *filedName, const char *filedType, int value) {
    jclass cls = (*env)->FindClass(env, clsName);
    if (!cls) {
        return;
    }
    jfieldID fid = (*env)->GetStaticFieldID(env, cls, filedName, filedType);
    if (!fid) return;
    (*env)->SetStaticIntField(env, cls, fid, value);
    (*env)->DeleteLocalRef(env, cls);
    return;
}
