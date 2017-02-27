//
// Created by Administrator on 2016/10/13.
//
#include <jni.h>
#include <stdio.h>


#ifndef HELLO_JNICALLBACK_REFLEX_H
#define HELLO_JNICALLBACK_REFLEX_H


////////////////////////
//方法声明////////////
////////////////////

jobject runStaticObjectMethod(JNIEnv *env, const char *clsName, const char *methodName, const char *methodParam, ...);

jobject runStaticObjectMethodX(JNIEnv *env, jclass cls, const char *methodName, const char *methodParam, ...);

int runStaticVoidMethod(JNIEnv *env, const char *clsName, const char *methodName, const char *methodParam, ...);

int runStaticVoidMethodX(JNIEnv *env, jclass cls, const char *methodName, const char *methodParam, ...);

jint runStaticIntMethod(JNIEnv *env, const char *clsName, const char *methodName, const char *methodParam, ...);

jobject newObject(JNIEnv *env, const char *clsName, const char *constructionName, const char *constructionParam, ...);

jobject runObjectMethod(JNIEnv *env, const char *clsName, jobject clsObject, const char *methodName, const char *methodParam, ...);

jint runIntMethod(JNIEnv *env, const char *clsName, jobject clsObject, const char *methodName, const char *methodParam, ...);

jboolean runBooleanMethod(JNIEnv *env, const char *clsName, jobject clsObject, const char *methodName, const char *methodParam, ...);

int runVoidMethod(JNIEnv *env, const char *clsName, jobject clsObject, const char *methodName, const char *methodParam, ...);

jobject getStaticObjectField(JNIEnv *env, const char *clsName, const char *filedName, const char *filedType);

jobject getObjectField(JNIEnv *env, const char *clsName, jobject obj, const char *filedName, const char *filedType);

jint getStaticIntFiled(JNIEnv *env, const char *clsName, const char *filedName, const char *filedType);

int setObjectFiled(JNIEnv *env, const char *clsName, jobject obj, const char *filedName, const char *filedType, jobject value);

void setStaticIntFiled(JNIEnv *env, const char *clsName, const char *filedName, const char *filedType, int value);

#endif //HELLO_JNICALLBACK_REFLEX_H