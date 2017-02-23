//
// Created by Administrator on 2016/10/13.
//

#include "log.h"
#include <string.h>


/**
 * 返回值 char* 这个代表char数组的首地址
 * Jstring2CStr 把java中的jstring的类型转化成一个c语言中的char 字符串
 */
char *Jstring2CStr(JNIEnv *env, jstring jstr) {
    char *rtn = NULL;
    jclass clsstring = (*env)->FindClass(env, "java/lang/String"); //String
    jstring strencode = (*env)->NewStringUTF(env, "GB2312"); // 得到一个java字符串 "GB2312"
    jmethodID mid = (*env)->GetMethodID(env, clsstring, "getBytes",
                                        "(Ljava/lang/String;)[B"); //[ String.getBytes("gb2312");
    jbyteArray barr = (jbyteArray) (*env)->CallObjectMethod(env, jstr, mid,
                                                            strencode); // String .getByte("GB2312");
    jsize alen = (*env)->GetArrayLength(env, barr); // byte数组的长度
    jbyte *ba = (*env)->GetByteArrayElements(env, barr, JNI_FALSE);
    if (alen > 0) {
        rtn = (char *) malloc(alen + 1); //""
        memcpy(rtn, ba, alen);
        rtn[alen] = 0;
    }
    (*env)->ReleaseByteArrayElements(env, barr, ba, 0); //
    return rtn;
}