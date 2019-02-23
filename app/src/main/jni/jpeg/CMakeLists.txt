#参考链接:https://blog.csdn.net/huang_yx005/article/details/53423299
#1.cmake verson，指定cmake版本
 cmake_minimum_required(VERSION 3.2)

#2.project name，指定项目的名称，一般和项目的文件夹名称对应
#PROJECT(ebookdroid)

#设置生成的so动态库最后输出的路径，set后面两个参数，
# 前面一个是命令，后面是路径。

 #3.head file path，头文件目录

include_directories(
        .
)
set(LOCAL_SRC_FILES
        jcapimin.c
jcapistd.c
jcarith.c
jctrans.c
jcparam.c
jdatadst.c
jcinit.c
jcmaster.c
jcmarker.c
jcmainct.c
jcprepct.c
jccoefct.c
jccolor.c
jcsample.c
jchuff.c
jcdctmgr.c
jfdctfst.c
jfdctflt.c
jfdctint.c
jdapimin.c
jdapistd.c
jdarith.c
jdtrans.c
jdatasrc.c
jdmaster.c
jdinput.c
jdmarker.c
jdhuff.c
jdmainct.c
jdcoefct.c
jdpostct.c
jddctmgr.c
jidctfst.c
jidctflt.c
jidctint.c
jdsample.c
jdcolor.c
jquant1.c
jquant2.c
jdmerge.c
jaricom.c
jcomapi.c
jutils.c
jerror.c
jmemmgr.c
jmemnobs.c

)

#添加环境变量(可选, added by 编程小翁, 博客园)
set(CMAKE_C_FLAGS  ${CMAKE_C_FLAGS})
#set(CMAKE_CXX_FLAGS  ${CMAKE_CXX_FLAGS} -DHAVE_INTTYPES_H)
#add_definitions(-DHAVE_INTTYPES_H -DUNIX -fexceptions -DHAS_WCHAR )
#4.设置生成so库的名称，并为源文件提供一个相对路径
add_library( # Sets the name of the library. # 设置库的名称，也就是生成的so名称，在java代码中加载so库需要与此一致
             jpeg
             # Sets the library as a shared library.# 将library设置为一个共享库
             SHARED
             # Provides a relative path to your source file(s).#为源文件提供一个相对路径,可以使用通配符，也可以一个一个文件的引入
                #demo.cpp
                ${LOCAL_SRC_FILES} #引用上面设置到通配符


             )
#find_library(log_lib log)
#target_link_libraries(djvu ${log_lib})


 #5.set environment variable，设置环境变量，编译用到的源文件全部都要放到这里，否则编译能够通过，但是执行的时候会出现各种问题，比如"symbol lookup error xxxxx , undefined symbol"
# SET(TEST_MATH
# ${DIR_SRCS}
# )

 #6.add executable file，添加要编译的可执行文件
 #ADD_EXECUTABLE(${PROJECT_NAME} ${TEST_MATH})

 #7.add link library，添加可执行文件所需要的库，比如我们用到了libm.so（命名规则：lib+name+.so），就添加该库的名称
 #TARGET_LINK_LIBRARIES(${PROJECT_NAME} m)