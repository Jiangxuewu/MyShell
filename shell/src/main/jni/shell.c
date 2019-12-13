//
// Created by Administrator on 2016/10/13.
//

#include <malloc.h>
#include "shell.h"
#include "decode.h"

int addShell(JNIEnv *env) {
//    if (debug) LOGI("[x] initDexSplit start");
    //get Context
    char *cApp = decode("dpn0cc`t{0oel0Bqq");//com/bb_sz/ndk/App
    char *fApp = decode("nDpoufyu");//mContext
    char *tApp = decode("Mboespje0dpoufou0Dpoufyu<");//Landroid/content/Context;
    jobject context = getStaticObjectField(env, cApp, fApp, tApp);
    free(cApp);
    free(fApp);
    free(tApp);

    if (NULL == context) {
        //if (debug) LOGE("[x] failed to get context");
        return 0;
    } else {
//        if (debug) LOGI("[x] got context");
    }
    // get mPKName
    char *mPKName;
    char *cContext = decode("boespje0dpoufou0Dpoufyu");//android/content/Context
    char *mgetPackageName = decode("hfuQbdlbhfObnf");//getPackageName
    char *vgetPackageName = decode(")*Mkbwb0mboh0Tusjoh<");//()Ljava/lang/String;
    jobject pkgName = runObjectMethod(env, cContext, context, mgetPackageName, vgetPackageName);

    free(mgetPackageName);
    free(vgetPackageName);

    if (NULL == pkgName) {
        //if (debug) LOGE("[x] failed to getPackageName");
        (*env)->DeleteLocalRef(env, context);
        return 0;
    } else {
        mPKName = Jstring2CStr(env, pkgName);
        if (debug) LOGI("[x] got  pkg = %s", mPKName);
    }


    char *mgetApplicationInfo = decode("hfuBqqmjdbujpoJogp");//getApplicationInfo
    char *vgetApplicationInfo = decode(
            ")*Mboespje0dpoufou0qn0BqqmjdbujpoJogp<");//()Landroid/content/pm/ApplicationInfo;
    // get mSrcPath
    jobject appInfo = runObjectMethod(env, cContext, context, mgetApplicationInfo,
                                      vgetApplicationInfo);
    free(cContext);
    free(mgetApplicationInfo);
    free(vgetApplicationInfo);
    if (!appInfo) {
        //if (debug) LOGE("[x] failed to getApplicationInfo");
        (*env)->DeleteLocalRef(env, context);
        (*env)->DeleteLocalRef(env, mPKName);
        return 0;
    } else {
//        if (debug) LOGI("[x] got ApplicationInfo");
    }

    char *cApplicationInfo = decode(
            "boespje0dpoufou0qn0BqqmjdbujpoJogp");//android/content/pm/ApplicationInfo
    char *sourceDir = decode("tpvsdfEjs");//sourceDir
    char *vs = decode("Mkbwb0mboh0Tusjoh<");//Ljava/lang/String;

    jobject sourceDirObj = getObjectField(env, cApplicationInfo, appInfo, sourceDir, vs);
    free(sourceDir);
    free(vs);
    free(cApplicationInfo);
    char *mSrcPath;
    if (!sourceDirObj) {
        //if (debug) LOGE("[x] failed to sourceDir Obj");
        (*env)->DeleteLocalRef(env, context);
        (*env)->DeleteLocalRef(env, mPKName);
        (*env)->DeleteLocalRef(env, appInfo);
        return 0;
    } else {
        mSrcPath = Jstring2CStr(env, sourceDirObj);
//        if (debug) LOGI("[x] got sourceDir obj = %s", mSrcPath);
    }

    //get mDexPath
    char *mDexPath = (char *) malloc(
            sizeof(char) * (strlen(mPKName) + strlen("/data/data//xx_shell") + 1));
    strcpy(mDexPath, "/data/data/");
    strcat(mDexPath, mPKName);
    strcat(mDexPath, "/xx_shell");
//    if (debug) LOGI("[x] mDexPath = %s", mDexPath);
    FILE *file1 = fopen(mDexPath, "rt");
    if (NULL == file1) {
//        if (debug) LOGI("[x] file not exist, file is %s", mDexPath);
        int i = mkdir(mDexPath, S_IRWXU);
        if (debug) LOGI("[x] mkdir result i:%d", i);
    }

    // get mLibPath
    char *mLibPath = (char *) malloc(
            sizeof(char) * (strlen(mPKName) + strlen("/data/data//lib") + 1));
    strcpy(mLibPath, "/data/data/");
    strcat(mLibPath, mPKName);
    strcat(mLibPath, "/lib");
//    if (debug) LOGI("[x] mLibPath = %s", mLibPath);

    //get mDexFile
    char *mDexFile = (char *) malloc(sizeof(char) * (strlen(mDexPath) + strlen("/dex2.zip") + 1));
    strcpy(mDexFile, mDexPath);
    strcat(mDexFile, "/dex2.zip");
//    if (debug) LOGI("[x] mDexFile = %s", mDexFile);
    FILE *fp = fopen(mDexFile, "rt");
    if (NULL == fp) {
        if (debug) LOGI("[x] file not exist, file is %s", mDexFile);
    }

    int needRedDex = JNI_TRUE;

    if (fp) {
        fseek(fp, 0L, SEEK_END);
        long size = ftell(fp);
        fclose(fp);
//        if (debug) LOGI("[x] file %s size is %ld", mDexFile, size);
        //dex2.zip已经存在了，且大小大于0，则不用重新去读取dex。
        if (size <= 0) {
            needRedDex = JNI_TRUE;
        } else {
            needRedDex = JNI_FALSE;
        }
    }
//    if (debug) LOGI("[x] initDexSplit success");
    int saveResult = 0;
    if (needRedDex) {
        // readDexFileFromApk
        char *cdex = decode("dmbttft/efy");//"classes.dex"
        jbyteArray dexByte = readDexFileFromApk(env, mSrcPath, cdex);
        free(cdex);
        if (dexByte) {
            jbyteArray newDex = decryptForShell(env, dexByte);
            if (newDex) {
                saveResult = saveByteToFile(env, newDex, mDexFile);
            }
        }
    }

    if (needRedDex && saveResult != 1) {
        if (debug) LOGI("[x] not shell dex.");
        (*env)->DeleteLocalRef(env, context);
        return 0;
    }

    // get current activity thread.
    //get VERSION class
    //1, Landroid/app/ActivityThread;
    char *AT = decode("boespje0bqq0BdujwjuzUisfbe");//android/app/ActivityThread
    char *CAT = decode("dvssfouBdujwjuzUisfbe");//currentActivityThread
    char *aaat = decode(")*Mboespje0bqq0BdujwjuzUisfbe<");//()Landroid/app/ActivityThread;

    jobject mCurrentActivityThread = runStaticObjectMethod(env, AT, CAT, aaat);
    free(AT);
    free(CAT);
    free(aaat);
    if (!mCurrentActivityThread) {
        //if (debug) LOGE("[x] failed to run method currentActivityThread");
        (*env)->DeleteLocalRef(env, context);
        (*env)->DeleteLocalRef(env, mPKName);
        free(mDexPath);
        free(mLibPath);
        free(mDexFile);
        (*env)->DeleteLocalRef(env, appInfo);
        (*env)->DeleteLocalRef(env, sourceDirObj);
        return 0;
    } else {
//        if (debug) LOGI("[x] success to run method currentActivityThread ");
    }

    //get sdk version
    //2
    jint SDK_INT = getStaticIntFiled(env, "android/os/Build$VERSION", "SDK_INT", "I");
    if (!SDK_INT) {
        //if (debug) LOGE("[x] failed to get SDK_INT");
        (*env)->DeleteLocalRef(env, context);
        (*env)->DeleteLocalRef(env, mPKName);
        free(mDexPath);
        free(mLibPath);
        free(mDexFile);
        (*env)->DeleteLocalRef(env, appInfo);
        (*env)->DeleteLocalRef(env, sourceDirObj);
        (*env)->DeleteLocalRef(env, mCurrentActivityThread);
        return 0;
    } else {
//        if (debug) LOGI("[x] SDK_INT = %d", SDK_INT);
    }

    //get filed mPackages
    // java/lang/ref/WeakReference
    jobject wrValue = NULL;
    if (SDK_INT < 19) {
        jobject map = getObjectField(env, "android/app/ActivityThread", mCurrentActivityThread,
                                     "mPackages", "Ljava/util/HashMap;");
        if (!map) {
            //if (debug) LOGE("[x] failed to get filed map");
            (*env)->DeleteLocalRef(env, context);
            (*env)->DeleteLocalRef(env, mPKName);
            free(mDexPath);
            free(mLibPath);
            free(mDexFile);
            (*env)->DeleteLocalRef(env, appInfo);
            (*env)->DeleteLocalRef(env, sourceDirObj);
            (*env)->DeleteLocalRef(env, mCurrentActivityThread);
            return 0;
        }
//        if (debug) LOGI("[x] got map");
        //get HashMap class
        wrValue = runObjectMethod(env, "java/util/HashMap", map, "get",
                                  "(Ljava/lang/Object;)Ljava/lang/Object;",
                                  (*env)->NewStringUTF(env, mPKName));
    } else {
        jobject map = getObjectField(env, "android/app/ActivityThread", mCurrentActivityThread,
                                     "mPackages", "Landroid/util/ArrayMap;");
        if (!map) {
            //if (debug) LOGE("[x] failed to get filed map");
            (*env)->DeleteLocalRef(env, context);
            (*env)->DeleteLocalRef(env, mPKName);
            free(mDexPath);
            free(mLibPath);
            free(mDexFile);
            (*env)->DeleteLocalRef(env, appInfo);
            (*env)->DeleteLocalRef(env, sourceDirObj);
            (*env)->DeleteLocalRef(env, mCurrentActivityThread);
            return 0;
        }
//        if (debug) LOGI("[x] got map x");
        //get ArrayMap class
        wrValue = runObjectMethod(env, "android/util/ArrayMap", map, "get",
                                  "(Ljava/lang/Object;)Ljava/lang/Object;",
                                  (*env)->NewStringUTF(env, mPKName));
    }
    if (!wrValue) {
        //if (debug) LOGE("[x] failed to run map's get method");
        (*env)->DeleteLocalRef(env, context);
        (*env)->DeleteLocalRef(env, mPKName);
        free(mDexPath);
        free(mLibPath);
        free(mDexFile);
        (*env)->DeleteLocalRef(env, appInfo);
        (*env)->DeleteLocalRef(env, sourceDirObj);
        (*env)->DeleteLocalRef(env, mCurrentActivityThread);
        return 0;
    }
//    if (debug) LOGI("[x] got wr value");

    //get WeakReference class
    //3 android/app/LoadedApk
    jobject wrValueGetObj = runObjectMethod(env, "java/lang/ref/WeakReference", wrValue, "get",
                                            "()Ljava/lang/Object;");
    if (!wrValueGetObj) {
        //if (debug) LOGE("[x] failed to run wr get method");
        (*env)->DeleteLocalRef(env, context);
        (*env)->DeleteLocalRef(env, mPKName);
        free(mDexPath);
        free(mLibPath);
        free(mDexFile);
        (*env)->DeleteLocalRef(env, appInfo);
        (*env)->DeleteLocalRef(env, sourceDirObj);
        (*env)->DeleteLocalRef(env, mCurrentActivityThread);
        (*env)->DeleteLocalRef(env, wrValue);
        return 0;
    }
//    if (debug) LOGI("[x] success to run wr get method");

    //get WeakReference class

    //创建新的 Class#Loader
    //get DexClass#Loader class

    //ClassLoader.getSystemClassLoader();
    char *cl = decode("kbwb0mboh0DmbttMpbefs");//java/lang/ClassLoader
    char *gscl = decode("hfuTztufnDmbttMpbefs");//getSystemClassLoader
    char *vcl = decode(")*Mkbwb0mboh0DmbttMpbefs<");//()Ljava/lang/ClassLoader;

    jobject sysloaderobj = runStaticObjectMethod(env, cl, gscl, vcl);
    free(cl);
    free(gscl);
    free(vcl);
    if (!sysloaderobj) {
        //if (debug) LOGE("[x] failed to get object of SystemClassLoader");
        (*env)->DeleteLocalRef(env, context);
        (*env)->DeleteLocalRef(env, mPKName);
        free(mDexPath);
        free(mLibPath);
        free(mDexFile);
        (*env)->DeleteLocalRef(env, appInfo);
        (*env)->DeleteLocalRef(env, sourceDirObj);
        (*env)->DeleteLocalRef(env, mCurrentActivityThread);
        (*env)->DeleteLocalRef(env, wrValue);
        (*env)->DeleteLocalRef(env, wrValueGetObj);
        return 0;
    }
//    if (debug) LOGI("[x] got object of SystemClass# Loader.");

    //dalvik/system/DexClassLoader
    char *cls = decode("ebmwjl0tztufn0EfyDmbttMpbefs");//dalvik/system/DexClassLoader
    char *meth = decode(
            ")Mkbwb0mboh0Tusjoh<Mkbwb0mboh0Tusjoh<Mkbwb0mboh0Tusjoh<Mkbwb0mboh0DmbttMpbefs<*W");//(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    jobject newClsLoaderObj = newObject(env, cls, "<init>", meth,
                                        (*env)->NewStringUTF(env, mDexFile),
                                        (*env)->NewStringUTF(env, mDexPath),
                                        (*env)->NewStringUTF(env, mLibPath), sysloaderobj);
    free(cls);
    free(meth);
    if (!newClsLoaderObj) {
        //if (debug) LOGE("[x] failed to new ClsLoader");
        (*env)->DeleteLocalRef(env, context);
        (*env)->DeleteLocalRef(env, mPKName);
        free(mDexPath);
        free(mLibPath);
        free(mDexFile);
        (*env)->DeleteLocalRef(env, appInfo);
        (*env)->DeleteLocalRef(env, sourceDirObj);
        (*env)->DeleteLocalRef(env, mCurrentActivityThread);
        (*env)->DeleteLocalRef(env, wrValue);
        (*env)->DeleteLocalRef(env, wrValueGetObj);
        (*env)->DeleteLocalRef(env, sysloaderobj);
        return 0;
    }
//    if (debug) LOGI("[x] got new ClsLoader");

    //reset new ClsLoader.
    //wrValueGetObj.set newClsLoaderObj

    char *clsLoadedApkName = decode("boespje0bqq0MpbefeBql");//"android/app/LoadedApk";
    jclass theLoadedApkClass = (*env)->FindClass(env, clsLoadedApkName);
    if (!theLoadedApkClass) {
        //if (debug) LOGE("[x] failed to get %s", clsLoadedApkName);
        free(clsLoadedApkName);
        (*env)->DeleteLocalRef(env, context);
        (*env)->DeleteLocalRef(env, mPKName);
        free(mDexPath);
        free(mLibPath);
        free(mDexFile);
        (*env)->DeleteLocalRef(env, appInfo);
        (*env)->DeleteLocalRef(env, sourceDirObj);
        (*env)->DeleteLocalRef(env, mCurrentActivityThread);
        (*env)->DeleteLocalRef(env, wrValue);
        (*env)->DeleteLocalRef(env, wrValueGetObj);
        (*env)->DeleteLocalRef(env, sysloaderobj);
        (*env)->DeleteLocalRef(env, newClsLoaderObj);
        return 0;
    }
//    if (debug) LOGI("[x] got %s = %p", clsLoadedApkName, theLoadedApkClass);

    char *mcl = decode("nDmbttMpbefs");//"mClassLoader";
    char *vvcl = decode("Mkbwb0mboh0DmbttMpbefs<");//"Ljava/lang/ClassLoader;";
    jfieldID classLoaderFID = (*env)->GetFieldID(env, theLoadedApkClass, mcl, vvcl);

    if (!classLoaderFID) {
        //if (debug) LOGE("[x] failed to get mClassLoader FID");
        (*env)->DeleteLocalRef(env, context);
        (*env)->DeleteLocalRef(env, mPKName);
        free(mDexPath);
        free(mLibPath);
        free(mDexFile);
        (*env)->DeleteLocalRef(env, appInfo);
        (*env)->DeleteLocalRef(env, sourceDirObj);
        (*env)->DeleteLocalRef(env, mCurrentActivityThread);
        (*env)->DeleteLocalRef(env, wrValue);
        (*env)->DeleteLocalRef(env, wrValueGetObj);
        (*env)->DeleteLocalRef(env, sysloaderobj);
        (*env)->DeleteLocalRef(env, newClsLoaderObj);
        free(clsLoadedApkName);
        return 0;
    }
//    if (debug) LOGI("[x] got mClassLoader FID = %p", classLoaderFID);

    setObjectFiled(env, clsLoadedApkName, wrValueGetObj, mcl, vvcl, newClsLoaderObj);
    free(mcl);
    free(vvcl);
    free(clsLoadedApkName);
//    if (debug) LOGI("[x] set new ClsLoader success.");
    //TODO
    //delete dex2.zip
    if (debug) LOGI("[x]start delete dexFile %s", mDexFile);
    int i = remove(mDexFile);
    if (debug) LOGI("[x]end delete dexFile res %d", i);
//    delete dex2.dex
    char *mDexDex = (char *) malloc(sizeof(char) * (strlen(mDexPath) + strlen("/dex2.dex") + 1));
    strcpy(mDexDex, mDexPath);
    strcat(mDexDex, "/dex2.dex");
    if (debug) LOGI("[x]start delete dexDex %s", mDexDex);
    i = remove(mDexDex);
    if (debug) LOGI("[x]end delete dexDex res %d", i);
    if (debug) LOGI("[x]start delete dir %s", mDexPath);
    i = remove(mDexPath);
    if (debug) LOGI("[x]end delete dir res %d", i);
    free(mDexDex);
    free(mDexPath);
    free(mLibPath);
    free(mDexFile);
//    (*env)->DeleteLocalRef(env, context);
//    (*env)->DeleteLocalRef(env, mPKName);
//    (*env)->DeleteLocalRef(env, appInfo);
//    (*env)->DeleteLocalRef(env, sourceDirObj);
//    (*env)->DeleteLocalRef(env, mCurrentActivityThread);
//    (*env)->DeleteLocalRef(env, wrValue);
//    (*env)->DeleteLocalRef(env, wrValueGetObj);
//    (*env)->DeleteLocalRef(env, sysloaderobj);
//    (*env)->DeleteLocalRef(env, newClsLoaderObj);

    return 1;
}

int saveByteToFile(JNIEnv *env, jbyteArray pVoid, char *file) {
    if (debug) LOGI("[x] start saveByteToFile");
    if (!pVoid) {
        //if (debug) LOGE("[x] saveByteToFile finish. no exist shell dex.");
        return 0;
    }
    jobject mFile = newObject(env, "java/io/File", "<init>", "(Ljava/lang/String;)V",
                              (*env)->NewStringUTF(env, file));
    jboolean exists = runBooleanMethod(env, "java/io/File", mFile, "exists", "()Z");
    if (!exists) {
        jboolean create = runBooleanMethod(env, "java/io/File", mFile, "createNewFile", "()Z");
    }
    jobject mFileOutputStream = newObject(env, "java/io/FileOutputStream", "<init>",
                                          "(Ljava/io/File;)V", mFile);
    runVoidMethod(env, "java/io/FileOutputStream", mFileOutputStream, "write", "([B)V", pVoid);
    runVoidMethod(env, "java/io/FileOutputStream", mFileOutputStream, "close", "()V");
    if (debug) LOGI("[x] saveByteToFile success");
    return 1;
}

jbyteArray decryptForShell(JNIEnv *env, jbyteArray pVoid) {
    if (debug) LOGI("[x] start decryptForShell");
    //get length
    jbyteArray key = (*env)->NewByteArray(env, 4);
    const int len = (*env)->GetArrayLength(env, pVoid);
//    if (debug) LOGI("[x] decryptForShell len = %d", len);
    runStaticVoidMethod(env, "java/lang/System", "arraycopy",
                        "(Ljava/lang/Object;ILjava/lang/Object;II)V", pVoid, len - 4, key, 0, 4);
    int len_key = (*env)->GetArrayLength(env, key);
//    if (debug) LOGI("[x] decryptForShell len_key = %d", len_key);

    jbyteArray dexlen = (*env)->NewByteArray(env, 4);
    runStaticVoidMethod(env, "java/lang/System", "arraycopy",
                        "(Ljava/lang/Object;ILjava/lang/Object;II)V", pVoid, len - 8, dexlen, 0, 4);
    int len_dex = (*env)->GetArrayLength(env, dexlen);
//    if (debug) LOGI("[x] decryptForShell len_dex = %d", len_dex);

    jobject bais = newObject(env, "java/io/ByteArrayInputStream", "<init>", "([B)V", dexlen);
    jobject in = newObject(env, "java/io/DataInputStream", "<init>", "(Ljava/io/InputStream;)V",
                           bais);
    int readInt = runIntMethod(env, "java/io/DataInputStream", in, "readInt", "()I");
    jbyteArray newdex = (*env)->NewByteArray(env, readInt);
    if (len - 8 - readInt < 0) {
        return NULL;
    }
    runStaticVoidMethod(env, "java/lang/System", "arraycopy",
                        "(Ljava/lang/Object;ILjava/lang/Object;II)V", pVoid, len - 8 - readInt,
                        newdex, 0, readInt);
    jbyteArray result = (*env)->NewByteArray(env, readInt);
    jbyte *p = (*env)->GetByteArrayElements(env, result, NULL);
    jbyte *pp = (*env)->GetByteArrayElements(env, newdex, NULL);
    jbyte *ppkey = (*env)->GetByteArrayElements(env, key, NULL);

    int keyValue = ppkey[2];
    if (debug) LOGI("[x] decryptForShell keyValue = %d", keyValue);

    int i = 0;
    while (JNI_TRUE) {
        if (i >= readInt) {
            break;
        }
        if (i > keyValue) {
            p[i] = pp[readInt + keyValue - i];
        } else {
            p[i] = pp[i];
        }
        i++;
    }
    if (debug) LOGI("[x] decryptForShell success");
//    (*env)->DeleteLocalRef(env, newdex);
    (*env)->ReleaseByteArrayElements(env, newdex, pp, 0);
    return result;
}

jbyteArray readDexFileFromApk(JNIEnv *env, const char *apk, const char *dex) {
    if (debug) LOGI("[x] start readDexFileFromApk");
    jobject dexByteArrayOutputStream = newObject(env, "java/io/ByteArrayOutputStream", "<init>",
                                                 "()V");

    jobject mFileInputStream = newObject(env, "java/io/FileInputStream", "<init>",
                                         "(Ljava/lang/String;)V", (*env)->NewStringUTF(env, apk));

    jobject mBufferedInputStream = newObject(env, "java/io/BufferedInputStream", "<init>",
                                             "(Ljava/io/InputStream;)V", mFileInputStream);

    jobject localZipInputStream = newObject(env, "java/util/zip/ZipInputStream", "<init>",
                                            "(Ljava/io/InputStream;)V", mBufferedInputStream);
    jstring classex = (*env)->NewStringUTF(env, dex);
//    if (debug) LOGI("[x] readDexFileFromApk start while");
    while (JNI_TRUE) {
        jobject localZipEntry = runObjectMethod(env, "java/util/zip/ZipInputStream",
                                                localZipInputStream, "getNextEntry",
                                                "()Ljava/util/zip/ZipEntry;");
        if (localZipEntry == NULL) {
            runVoidMethod(env, "java/util/zip/ZipInputStream", localZipInputStream, "close", "()V");
            break;
        }
        jobject name = runObjectMethod(env, "java/util/zip/ZipEntry", localZipEntry, "getName",
                                       "()Ljava/lang/String;");
        jboolean equal = runBooleanMethod(env, "java/lang/String", name, "equals",
                                          "(Ljava/lang/Object;)Z", classex);
        if (equal) {
            (*env)->DeleteLocalRef(env, name);
            jbyteArray arrayOfByte = (*env)->NewByteArray(env, 1024);
            jint i = -1;
            while (JNI_TRUE) {
                i = runIntMethod(env, "java/util/zip/ZipInputStream", localZipInputStream, "read",
                                 "([B)I", arrayOfByte);
                if (i == -1) {
                    break;
                }
                runVoidMethod(env, "java/io/ByteArrayOutputStream", dexByteArrayOutputStream,
                              "write", "([BII)V", arrayOfByte, 0, i);
            }
//            (*env)->DeleteLocalRef(env, i);
//            free((void *) i);
        } else {
            (*env)->DeleteLocalRef(env, name);
        }
//        (*env)->DeleteLocalRef(env, (jobject) equal);
//        free((void *) equal);
        runVoidMethod(env, "java/util/zip/ZipInputStream", localZipInputStream, "closeEntry",
                      "()V");

        (*env)->DeleteLocalRef(env, localZipEntry);
    }
    (*env)->DeleteLocalRef(env, classex);
    runVoidMethod(env, "java/util/zip/ZipInputStream", localZipInputStream, "close", "()V");

    jobject result = runObjectMethod(env, "java/io/ByteArrayOutputStream", dexByteArrayOutputStream,
                                     "toByteArray", "()[B");
    if (debug) LOGI("[x] readDexFileFromApk success");
    return result;
}

int setApplication(JNIEnv *env) {
    if (debug) LOGI("[x] set application start");
    //get Context
    jobject context = getStaticObjectField(env, "com/bb_sz/ndk/App", "mContext",
                                           "Landroid/content/Context;");
    if (NULL == context) {
        //if (debug) LOGE("[x] failed to get context");
        return 0;
    }
//    else { if (debug) LOGI("[x] got context"); }

    // get mPKName
    char *mPKName;
    jobject pkgName = runObjectMethod(env, "android/content/Context", context, "getPackageName",
                                      "()Ljava/lang/String;");
    if (NULL == pkgName) {
        //if (debug) LOGE("[x] failed to getPackageName");
        (*env)->DeleteLocalRef(env, context);
        return 0;
    } else {
        mPKName = Jstring2CStr(env, pkgName);
//        if (debug) LOGI("[x] got  package name = %s", mPKName);
//        startFork(mPKName);
    }
    jobject mPackageManager = runObjectMethod(env, "android/content/Context", context,
                                              "getPackageManager",
                                              "()Landroid/content/pm/PackageManager;");
    if (!mPackageManager) {
        //if (debug) LOGE("[x] failed to getPackageManager");
        (*env)->DeleteLocalRef(env, context);
        (*env)->DeleteLocalRef(env, pkgName);
        return 0;
    }
//    if (debug) LOGI("[x] got packageManager");

    jobject appInfo = runObjectMethod(env, "android/content/pm/PackageManager", mPackageManager,
                                      "getApplicationInfo",
                                      "(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;",
                                      pkgName, 0x00000080);
    if (!appInfo) {
        //if (debug) LOGE("[x] failed to getApplicationInfo");
        (*env)->DeleteLocalRef(env, context);
        (*env)->DeleteLocalRef(env, pkgName);
        (*env)->DeleteLocalRef(env, mPackageManager);
        return 0;
    }
//    if (debug) LOGI("[x] got ApplicationInfo");

    jobject bundle = getObjectField(env, "android/content/pm/ApplicationInfo", appInfo, "metaData",
                                    "Landroid/os/Bundle;");
    if (!bundle) {
        return 0;
    }
//    if (debug) LOGI("[x] got Bundle");
    char *ap = decode("T[`TIFMM`BQQ");//"SZ_SHELL_APP"
    jstring key = (*env)->NewStringUTF(env, ap);
    free(ap);
    jboolean contains = runBooleanMethod(env, "android/os/Bundle", bundle, "containsKey",
                                         "(Ljava/lang/String;)Z", key);
    jstring value = NULL;
    if (contains) {
        jobject tvalue = runObjectMethod(env, "android/os/Bundle", bundle, "get",
                                         "(Ljava/lang/String;)Ljava/lang/Object;", key);
        if (tvalue) {
            value = runStaticObjectMethod(env, "java/lang/String", "valueOf",
                                          "(Ljava/lang/Object;)Ljava/lang/String;", tvalue);
        }
    }
    if (!value) {
        return 0;
    }
    char *applicationName = Jstring2CStr(env, value);
    jstring dian = (*env)->NewStringUTF(env, ".");
    jboolean startDian = runBooleanMethod(env, "java/lang/String", value, "startsWith",
                                          "(Ljava/lang/String;)Z", dian);
    jboolean noDian = runBooleanMethod(env, "java/lang/String", value, "contains",
                                       "(Ljava/lang/CharSequence;)Z", dian);
//    if (debug) LOGI("[x] start check application name, startDian:%d, noDian:%d, applicationName:%s", startDian, noDian, applicationName);
    char *applicationPath = NULL;
    if (startDian) {
        size_t tempLen1 = sizeof(char) * strlen(mPKName) + 1;
        size_t tempLen2 = sizeof(char) * strlen(applicationName) + 1;
        size_t len = tempLen1 + tempLen2;
        char *tmp = (char *) malloc(len);
        memset(tmp, 0x00, len);
        strcpy(tmp, mPKName);
        strcat(tmp, applicationName);

        size_t tempLen3 = sizeof(char) * strlen(tmp) + 1;
        applicationPath = (char *) malloc(tempLen3);
        strcpy(applicationPath, tmp);
        free(tmp);
    } else if (!noDian) {
        size_t tempLen1 = sizeof(char) * strlen(mPKName) + 1;
        size_t tempLen2 = sizeof(char) * strlen(applicationName) + 1;
        size_t len = tempLen1 + tempLen2 + 2;
        char *tmp = (char *) malloc(len);
        memset(tmp, 0x00, len);
        strcpy(tmp, mPKName);
        strcat(tmp, ".");
        strcat(tmp, applicationName);

        size_t tempLen3 = sizeof(char) * strlen(tmp) + 1;
        applicationPath = (char *) malloc(tempLen3);

        strcpy(applicationPath, tmp);
        free(tmp);
    } else {
        size_t tempLen3 = sizeof(char) * strlen(applicationName) + 1;
        applicationPath = (char *) malloc(tempLen3);
        strcpy(applicationPath, applicationName);
//        (*env)->DeleteLocalRef(env, applicationName);
    }
//    if (debug) LOGI("[x] end check application name");
//    if (debug) LOGI("[x] application is %s", applicationPath);
    setApplicationX(env, applicationPath);
    free(applicationPath);
    if (debug)LOGI("[x] setApplication end");
    return 1;
}

int setApplicationX(JNIEnv *env, const char *application) {
//    if (debug)LOGI("[x] setApplicationX start");
    if (!application) {
        return 0;
    }
    //get Context
    jobject context = getStaticObjectField(env, "com/bb_sz/ndk/App", "mContext",
                                           "Landroid/content/Context;");
    if (NULL == context) {
        //if (debug) LOGE("[x] failed to get context");
        return 0;
    }
//    else { if (debug) LOGI("[x] got context"); }

    // get mApplication name
//    if (debug)LOGI("[x] got mApplicationStr = %s ", application);
    jstring mApplicationStr = (*env)->NewStringUTF(env, application);



    //1,调用静态方法(ActivityThread.currentActivityThread)，获取当前Activity线程
    // get currentActivityThread obj
    jobject currentActivityThreadObj = runStaticObjectMethod(env, "android/app/ActivityThread",
                                                             "currentActivityThread",
                                                             "()Landroid/app/ActivityThread;");
    if (!currentActivityThreadObj) {
        if (debug) LOGE("[x] failed to get currentActivityThreadObj.");
        return 0;
    }
//    if (debug)LOGI("[x] got currentActivityThreadObj");

    //2,获取当前Activity线程中的对象(mBoundApplication)
    jobject mBoundApplicationObj = getObjectField(env, "android/app/ActivityThread",
                                                  currentActivityThreadObj, "mBoundApplication",
                                                  "Landroid/app/ActivityThread$AppBindData;");
    if (!mBoundApplicationObj) {
        //if (debug)LOGE("[x] failed to get mBoundApplicationObj.");
        return 0;
    }
//    if (debug)LOGI("[x] got mBoundApplicationObj = %p", mBoundApplicationObj);

    //3,获取第二步中得到的对象(mBoundApplication)中的对象(info LoadedApk)
    char *aalk = decode("Mboespje0bqq0MpbefeBql<");//"Landroid/app/LoadedApk;"
    jobject infoObj = getObjectField(env, "android/app/ActivityThread$AppBindData",
                                     mBoundApplicationObj, "info", aalk);
    free(aalk);
    if (!infoObj) {
        //if (debug)LOGE("[x] failed to get infoObj");
        return 0;
    }
//    if (debug)LOGI("[x] got LoadedApk infoObj");

    //4,将第三步中获取的LoadedApk对象中的Application(mApplication)赋值为null
    char *clsLoadedApkName = decode("boespje0bqq0MpbefeBql");//"android/app/LoadedApk";
    setObjectFiled(env, clsLoadedApkName, infoObj, "mApplication", "Landroid/app/Application;",
                   NULL);
//    if (debug)LOGI("[x] set cur loadedApk application to null.");

    //5,获取当前Activity线程中的初始化Application对象(mInitialApplication)
    jobject mInitialApplicationObj = getObjectField(env, "android/app/ActivityThread",
                                                    currentActivityThreadObj, "mInitialApplication",
                                                    "Landroid/app/Application;");
    if (!mInitialApplicationObj) {
        //if (debug)LOGE("[x] failed to get mInitialApplicationObj");
        free(clsLoadedApkName);
        return 0;
    }
//    if (debug)LOGI("[x] got mInitialApplicationObj = %p", mInitialApplicationObj);
    //6,获取当前Activity线程中的Application集合对象(mAllApplications)
    //the object of ArrayList
    jobject mAllApplicationsObj = getObjectField(env, "android/app/ActivityThread",
                                                 currentActivityThreadObj, "mAllApplications",
                                                 "Ljava/util/ArrayList;");
    if (!mAllApplicationsObj) {
        //if (debug)LOGE("[x] failed to get mAllApplicationsObj");
        free(clsLoadedApkName);
        return 0;
    }
//    if (debug)LOGI("[x] gotmAllApplicationsObj");
    //7,删除当前Activity线程中Application集合中的当前Activity线程中的初始化Application对象。
    jboolean removeObj = runBooleanMethod(env, "java/util/ArrayList", mAllApplicationsObj, "remove",
                                          "(Ljava/lang/Object;)Z", mInitialApplicationObj);
    if (!removeObj) {
        //if (debug)LOGE("[x] failed to get removeObj");
        free(clsLoadedApkName);
        return 0;
    }
//    if (debug)LOGI("[x] got removeObj = %d", removeObj);

    //8,获取当前Activity线程中加载Apk的LoadedApk中的ApplicationInfo对象(mApplicationInfo),并且修改其Application对象的类名为新的Application类
    // the object of ApplicationInfo
    jobject infoApplicationInfoObj = getObjectField(env, clsLoadedApkName, infoObj,
                                                    "mApplicationInfo",
                                                    "Landroid/content/pm/ApplicationInfo;");
    if (!infoApplicationInfoObj) {
        //if (debug)LOGE("[x] failed to get infoApplicationInfoObj");
        free(clsLoadedApkName);
        return 0;
    }
//    if (debug)LOGI("[x] got infoApplicationInfoObj = %p ", infoApplicationInfoObj);
    //9,获取当前Activity线程中AppBindData对象(mBoundApplication)中的ApplicationInfo对象(appInfo),并且修改其Application对象的类名为新的Application类
    jobject mBoundApplicationAppInfoObj = getObjectField(env,
                                                         "android/app/ActivityThread$AppBindData",
                                                         mBoundApplicationObj, "appInfo",
                                                         "Landroid/content/pm/ApplicationInfo;");
    if (!mBoundApplicationAppInfoObj) {
        //if (debug)LOGE("[x] failed to get mBoundApplicationAppInfoObj");
        free(clsLoadedApkName);
        return 0;
    }
//    if (debug)LOGI("[x] got mBoundApplicationAppInfoObj = %p ", mBoundApplicationAppInfoObj);

    setObjectFiled(env, "android/content/pm/ApplicationInfo", infoApplicationInfoObj, "className",
                   "Ljava/lang/String;", mApplicationStr);
    setObjectFiled(env, "android/content/pm/ApplicationInfo", mBoundApplicationAppInfoObj,
                   "className", "Ljava/lang/String;", mApplicationStr);

    //10,调用makeApplication方法，获取当前Application
    // the object of Application, really Application.
    jobject makeApplicationObj = runObjectMethod(env, clsLoadedApkName, infoObj, "makeApplication",
                                                 "(ZLandroid/app/Instrumentation;)Landroid/app/Application;",
                                                 0x0, NULL);
    free(clsLoadedApkName);
    if (!makeApplicationObj) {
        //if (debug)LOGE("[x] failed to get makeApplicationObj");
        return 0;
    }
//    if (debug)LOGI("[x] got makeApplicationObj = %p ", makeApplicationObj);

    setObjectFiled(env, "android/app/ActivityThread", currentActivityThreadObj,
                   "mInitialApplication", "Landroid/app/Application;", makeApplicationObj);

    runVoidMethod(env, "android/app/Application", makeApplicationObj, "onCreate", "()V");
//    if (debug)LOGI("[x] setApplicationX onCreate end.");
    return 1;
}