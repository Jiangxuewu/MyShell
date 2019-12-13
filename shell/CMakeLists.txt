cmake_minimum_required(VERSION 3.4.1)
project(sz_shell_a)

add_library(
            sz_shell_a
             SHARED
             src/main/jni/decode.c
             src/main/jni/log.c
             src/main/jni/reflex.c
             src/main/jni/shell.c
             src/main/jni/sz_shell_a.c
             )

find_library( log-lib
              log )

target_link_libraries(
                       sz_shell_a
                       ${log-lib}
                        )