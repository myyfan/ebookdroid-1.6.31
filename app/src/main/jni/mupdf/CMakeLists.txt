#参考链接:https://blog.csdn.net/huang_yx005/article/details/53423299
#1.cmake verson，指定cmake版本
 cmake_minimum_required(VERSION 3.2)

#2.project name，指定项目的名称，一般和项目的文件夹名称对应
#PROJECT(ebookdroid)
set(MY_FREETYPE_C_INCLUDES   
${PROJECT_SOURCE_DIR}/mupdf/freetype-overlay/include
        ${PROJECT_SOURCE_DIR}/mupdf/freetype/include
        )

set(MY_FREETYPE_CFLAGS  -DFT2_BUILD_LIBRARY -DDARWIN_NO_CARBON)

set(MY_FREETYPE_SRC_FILES  
        freetype/src/base/ftsystem.c
        freetype/src/base/ftinit.c
        freetype/src/base/ftdebug.c
        freetype/src/base/ftbase.c
        freetype/src/base/ftbbox.c
        freetype/src/base/ftglyph.c
        freetype/src/base/ftbitmap.c
        freetype/src/base/ftcid.c
        freetype/src/base/ftfstype.c
        freetype/src/base/ftgasp.c
        freetype/src/base/ftgxval.c
        freetype/src/base/ftlcdfil.c
        freetype/src/base/ftmm.c
        freetype/src/base/ftotval.c
        freetype/src/base/ftpatent.c
        freetype/src/base/ftstroke.c
        freetype/src/base/ftsynth.c
        freetype/src/base/fttype1.c
        freetype/src/base/ftxf86.c
        freetype/src/cff/cff.c
        freetype/src/cid/type1cid.c
        freetype/src/sfnt/sfnt.c
        freetype/src/truetype/truetype.c
        freetype/src/type1/type1.c
        freetype/src/raster/raster.c
        freetype/src/smooth/smooth.c
        freetype/src/cache/ftcache.c
        freetype/src/gzip/ftgzip.c
        freetype/src/gzip/inflate.c
        freetype/src/gxvalid/gxvalid.c
        freetype/src/otvalid/otvalid.c
        freetype/src/psaux/psaux.c
        freetype/src/pshinter/pshinter.c
        freetype/src/psnames/psnames.c

#	freetype/src/base/ftpfr.c 
#	freetype/src/base/ftbdf.c 
#	freetype/src/base/ftwinfnt.c 

#	freetype/src/autofit/autofit.c 
#	freetype/src/pfr/pfr.c 
#	freetype/src/type42/type42.c 
#	freetype/src/pcf/pcf.c 
#	freetype/src/bdf/bdf.c 
#	freetype/src/winfonts/winfnt.c 
#	freetype/src/lzw/ftlzw.c 
        )
set(MY_JBIG2DEC_CFLAGS  -DHAVE_CONFIG_H)
set(MY_JBIG2DEC_SRC_FILES
        jbig2dec/jbig2.c
        jbig2dec/jbig2_arith.c
        jbig2dec/jbig2_arith_iaid.c
        jbig2dec/jbig2_arith_int.c
        jbig2dec/jbig2_generic.c
        jbig2dec/jbig2_halftone.c
        jbig2dec/jbig2_huffman.c
        jbig2dec/jbig2_image.c
        jbig2dec/jbig2_image_pbm.c
        jbig2dec/jbig2_metadata.c
        jbig2dec/jbig2_mmr.c
        jbig2dec/jbig2_page.c
        jbig2dec/jbig2_refinement.c
        jbig2dec/jbig2_segment.c
        jbig2dec/jbig2_symbol_dict.c
        jbig2dec/jbig2_text.c
        jbig2dec/jbig2dec.c
        jbig2dec/sha1.c
        jbig2dec/memento.c

#	jbig2dec/getopt.c
#	jbig2dec/getopt1.c
#	jbig2dec/memcmp.c
#	jbig2dec/snprintf.c
#   jbig2dec/jbig2_image_png.c
        )
set(MY_OPENJPEG_SRC_FILES  
        openjpeg/bio.c
        openjpeg/cio.c
        openjpeg/cidx_manager.c
        openjpeg/dwt.c
        openjpeg/event.c
        openjpeg/image.c
        openjpeg/j2k.c
        openjpeg/j2k_lib.c
        openjpeg/jp2.c
        openjpeg/jpt.c
        openjpeg/jpwl/crc.c
        openjpeg/mct.c
        openjpeg/mqc.c
        openjpeg/openjpeg.c
        openjpeg/phix_manager.c
        openjpeg/pi.c
        openjpeg/ppix_manager.c
        openjpeg/raw.c
        openjpeg/t1.c
        openjpeg/t2.c
        openjpeg/tcd.c
        openjpeg/tgt.c
        openjpeg/thix_manager.c
        openjpeg/tpix_manager.c
        )
set(MY_MUPDF_C_INCLUDES  
freetype/include
../jpeg
jbig2dec
openjpeg
mupdf/fitz
mupdf/pdf
mupdf/xps
mupdf/generated
.
        )
set(MY_MUPDF_CFLAGS  -DAA_BITS=8)
set(MY_MUPDF_SRC_FILES  
mupdf/pdf/pdf_annot.c 
mupdf/pdf/pdf_cmap.c 
mupdf/pdf/pdf_cmap_load.c 
mupdf/pdf/pdf_cmap_parse.c 
mupdf/pdf/pdf_cmap_table.c 
mupdf/pdf/pdf_colorspace.c 
mupdf/pdf/pdf_crypt.c 
mupdf/pdf/pdf_encoding.c 
mupdf/pdf/pdf_event.c 
mupdf/pdf/pdf_font.c 
mupdf/pdf/pdf_fontfile.c 
mupdf/pdf/pdf_form.c 
mupdf/pdf/pdf_function.c 
mupdf/pdf/pdf_image.c 
mupdf/pdf/pdf_interpret.c 
mupdf/pdf/pdf_js_none.c 
mupdf/pdf/pdf_lex.c 
mupdf/pdf/pdf_metrics.c 
mupdf/pdf/pdf_nametree.c 
mupdf/pdf/pdf_object.c 
mupdf/pdf/pdf_outline.c 
mupdf/pdf/pdf_page.c 
mupdf/pdf/pdf_parse.c 
mupdf/pdf/pdf_pattern.c 
mupdf/pdf/pdf_repair.c 
mupdf/pdf/pdf_shade.c 
mupdf/pdf/pdf_store.c 
mupdf/pdf/pdf_stream.c 
mupdf/pdf/pdf_type3.c 
mupdf/pdf/pdf_unicode.c 
mupdf/pdf/pdf_write.c 
mupdf/pdf/pdf_xobject.c 
mupdf/pdf/pdf_xref_aux.c 
mupdf/pdf/pdf_xref.c 
mupdf/xps/xps_common.c 
mupdf/xps/xps_doc.c 
mupdf/xps/xps_glyphs.c 
mupdf/xps/xps_gradient.c 
mupdf/xps/xps_image.c 
mupdf/xps/xps_outline.c 
mupdf/xps/xps_path.c 
mupdf/xps/xps_resource.c 
mupdf/xps/xps_tile.c 
mupdf/xps/xps_util.c 
mupdf/xps/xps_xml.c 
mupdf/xps/xps_zip.c 
mupdf/draw/draw_affine.c 
mupdf/draw/draw_blend.c 
mupdf/draw/draw_device.c 
mupdf/draw/draw_edge.c 
mupdf/draw/draw_glyph.c 
mupdf/draw/draw_mesh.c 
mupdf/draw/draw_paint.c 
mupdf/draw/draw_path.c 
mupdf/draw/draw_simple_scale.c 
mupdf/draw/draw_unpack.c 
mupdf/fitz/base_context.c 
mupdf/fitz/base_error.c 
mupdf/fitz/base_hash.c 
mupdf/fitz/base_memory.c 
mupdf/fitz/base_string.c 
mupdf/fitz/base_geometry.c 
mupdf/fitz/base_trans.c 
mupdf/fitz/crypt_aes.c 
mupdf/fitz/crypt_arc4.c 
mupdf/fitz/crypt_md5.c 
mupdf/fitz/crypt_sha2.c 
mupdf/fitz/doc_document.c 
mupdf/fitz/doc_outline.c 
mupdf/fitz/doc_link.c 
mupdf/fitz/stm_buffer.c 
mupdf/fitz/stm_comp_buf.c 
mupdf/fitz/stm_open.c 
mupdf/fitz/stm_read.c 
mupdf/fitz/filt_basic.c 
mupdf/fitz/filt_dctd.c 
mupdf/fitz/filt_faxd.c 
mupdf/fitz/filt_flate.c 
mupdf/fitz/filt_lzwd.c 
mupdf/fitz/filt_predict.c 
mupdf/fitz/filt_jbig2d.c 
mupdf/fitz/image_png.c 
mupdf/fitz/image_save.c 
mupdf/fitz/image_md5.c 
mupdf/fitz/image_jpeg.c 
mupdf/fitz/image_jpx.c 
mupdf/fitz/image_tiff.c 
mupdf/fitz/res_bitmap.c 
mupdf/fitz/res_colorspace.c 
mupdf/fitz/res_font.c 
mupdf/fitz/res_halftone.c 
mupdf/fitz/res_shade.c 
mupdf/fitz/res_store.c 
mupdf/fitz/res_pixmap.c 
mupdf/fitz/res_text.c 
mupdf/fitz/res_path.c 
mupdf/fitz/dev_list.c 
mupdf/fitz/dev_null.c 
mupdf/fitz/dev_text.c 
mupdf/fitz/dev_bbox.c
)
set(LOCAL_CFLAGS  
${MY_FREETYPE_CFLAGS}
${MY_JBIG2DEC_CFLAGS}
${MY_MUPDF_CFLAGS}
        )
set(LOCAL_C_INCLUDES  
${MY_FREETYPE_C_INCLUDES}
${MY_MUPDF_C_INCLUDES}
        )
set(LOCAL_LDLIBS  
${MY_FREETYPE_LDLIBS}
${MY_MUPDF_LDLIBS}
        )
set(LOCAL_SRC_FILES
        ${MY_OPENJPEG_SRC_FILES}
        ${MY_FREETYPE_SRC_FILES}
        ${MY_JBIG2DEC_SRC_FILES}
        ${MY_MUPDF_SRC_FILES}
        )
#设置生成的so动态库最后输出的路径，set后面两个参数，
# 前面一个是命令，后面是路径。

 #3.head file path，头文件目录
include_directories(${LOCAL_C_INCLUDES})

#添加环境变量(可选, added by 编程小翁, 博客园)
set(CMAKE_C_FLAGS  ${CMAKE_C_FLAGS} ${LOCAL_CFLAGS})
set(CMAKE_SHARED_LINKER_FLAGS  "-lz" )
#set(CMAKE_STATIC_LINKER_FLAGS  -lz)#-lc -lz -llog
#set(CMAKE_CXX_FLAGS  ${CMAKE_CXX_FLAGS} -DHAVE_INTTYPES_H)
#add_definitions(-DHAVE_INTTYPES_H -DUNIX -fexceptions -DHAS_WCHAR )
#4.设置生成so库的名称，并为源文件提供一个相对路径
add_library( # Sets the name of the library. # 设置库的名称，也就是生成的so名称，在java代码中加载so库需要与此一致
             mupdf
             # Sets the library as a shared library.# 将library设置为一个共享库
             SHARED
             # Provides a relative path to your source file(s).#为源文件提供一个相对路径,可以使用通配符，也可以一个一个文件的引入
                #demo.cpp
                ${LOCAL_SRC_FILES} #引用上面设置到通配符


             )
#find_library(log_lib log)
#find_library(z_lib z)
#target_link_libraries(mupdf z) #${z_lib}


 #5.set environment variable，设置环境变量，编译用到的源文件全部都要放到这里，否则编译能够通过，但是执行的时候会出现各种问题，比如"symbol lookup error xxxxx , undefined symbol"
# SET(TEST_MATH
# ${DIR_SRCS}
# )

 #6.add executable file，添加要编译的可执行文件
 #ADD_EXECUTABLE(${PROJECT_NAME} ${TEST_MATH})

 #7.add link library，添加可执行文件所需要的库，比如我们用到了libm.so（命名规则：lib+name+.so），就添加该库的名称
 #TARGET_LINK_LIBRARIES(${PROJECT_NAME} m)