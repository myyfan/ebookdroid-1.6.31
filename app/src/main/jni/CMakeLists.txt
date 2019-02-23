#参考链接:https://blog.csdn.net/huang_yx005/article/details/53423299
#1.cmake verson，指定cmake版本
 cmake_minimum_required(VERSION 3.2)

#2.project name，指定项目的名称，一般和项目的文件夹名称对应
#PROJECT(ebookdroid)

#设置生成的so动态库最后输出的路径，set后面两个参数，
# 前面一个是命令，后面是路径。
 #set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/../jniLibs/${ANDROID_ABI})
 #3.head file path，头文件目录


set(CMAKE_C_FLAGS -DHAVE_CONFIG_H -DTHREADMODEL=POSIXTHREADS -DDEBUGLVL=4 -D__ANDROID__ )
#set(CMAKE_C_FLAGS -DHAVE_CONFIG_H -DTHREADMODEL=POSIXTHREADS -DDEBUGLVL=4 -D__ANDROID__ -O3)
#4.设置生成so库的名称，并为源文件提供一个相对路径
#set(CMAKE_CXX_STANDARD_LIBRARIES c++_shared)
add_subdirectory(jpeg)
add_subdirectory(mupdf)
add_subdirectory(djvu)
add_subdirectory(ebookdroid)
 #5.set environment variable，设置环境变量，编译用到的源文件全部都要放到这里，否则编译能够通过，但是执行的时候会出现各种问题，比如"symbol lookup error xxxxx , undefined symbol"
# SET(TEST_MATH
# ${DIR_SRCS}
# )

 #6.add executable file，添加要编译的可执行文件
 #ADD_EXECUTABLE(${PROJECT_NAME} ${TEST_MATH})

 #7.add link library，添加可执行文件所需要的库，比如我们用到了libm.so（命名规则：lib+name+.so），就添加该库的名称
 #TARGET_LINK_LIBRARIES(${PROJECT_NAME} m)