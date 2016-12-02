//
// Created by Administrator on 2016/11/22.
//

#include <pthread.h>


#include <unistd.h>
#include "log.h"
#include <sys/system_properties.h>


void startFork(char * pd) {
    pid_t pid = fork();

    char s_version[10];
    __system_property_get("ro.build.version.sdk", s_version);
    LOGE("app uninstall,current sdkversion = %s", s_version);
    LOGE("app uninstall,current pkg = %s", pd);

    if (pid < 0) {
        LOGD("current crate process failure");
    } else if (pid > 0) {
        // 说明克隆进程成功，而且该代码运行在父进程中
        LOGD("crate process success,current parent pid = %d", pid);
    } else {
        // 说明克隆进程成功，而且代码运行在子进程中
        LOGD("crate process success,current child pid = %d", pid);
        while (JNI_TRUE) {
            FILE* file = fopen(pd, "rt");
            if (file == NULL) {
                // 应用被卸载了，通知系统打开用户反馈的网页
                if (s_version >= 17) {
                    // Android4.2系统之后支持多用户操作，所以得指定用户
                    execlp("am", "am", "start", "--user", "0", "-a",
                           "android.intent.action.VIEW", "-d",
                           "http://www.qq.com", (char*) NULL);
                    LOGE("app run normal 2");
                } else {
                    // Android4.2以前的版本无需指定用户
                    execlp("am", "am", "start", "-a",
                           "android.intent.action.VIEW", "-d",
                           "http://www.bb-sz.com", (char*) NULL);
                    LOGE("app run normal 1");
                }
            } else {
                // 应用没有被卸载
                LOGE("app run normal");
            }
            sleep(1);
        }
    }
}
