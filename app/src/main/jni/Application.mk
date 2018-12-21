APP_ABI := arm64-v8a armeabi armeabi-v7a mips  x86 x86_64
 APP_PLATFORM := android-16
APP_CFLAGS := -DHAVE_CONFIG_H -DTHREADMODEL=POSIXTHREADS -DDEBUGLVL=0 -D__ANDROID__
APP_CFLAGS += -O3

APP_MODULES := jpeg libdjvu mupdf ebookdroid
