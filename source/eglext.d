module eglext;
extern(System):
/*
** Copyright (c) 2013-2017 The Khronos Group Inc.
**
** Permission is hereby granted, free of charge, to any person obtaining a
** copy of this software and/or associated documentation files (the
** "Materials"), to deal in the Materials without restriction, including
** without limitation the rights to use, copy, modify, merge, publish,
** distribute, sublicense, and/or sell copies of the Materials, and to
** permit persons to whom the Materials are furnished to do so, subject to
** the following conditions:
**
** The above copyright notice and this permission notice shall be included
** in all copies or substantial portions of the Materials.
**
** THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
** EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
** MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
** IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
** CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
** TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
** MATERIALS OR THE USE OR OTHER DEALINGS IN THE MATERIALS.
*/
/*
** This header is generated from the Khronos EGL XML API Registry.
** The current version of the Registry, generator scripts
** used to make the header, and the header can be found at
**   http://www.khronos.org/registry/egl
**
** Khronos $Git commit SHA1: cb927ca98d $ on $Git commit date: 2019-08-08 01:05:38 -0700 $
*/

public import eglplatform;
public import egl;
enum EGL_EGLEXT_VERSION = 20190808;

/* Generated C header for:
 * API: egl
 * Versions considered: .*
 * Versions emitted: _nomatch_^
 * Default extensions included: egl
 * Additional extensions included: _nomatch_^
 * Extensions removed: _nomatch_^
 */

enum  EGL_CL_EVENT_HANDLE_KHR =           0x309C;
enum  EGL_SYNC_CL_EVENT_KHR =             0x30FE;
enum  EGL_SYNC_CL_EVENT_COMPLETE_KHR =    0x30FF;

alias EGLSyncKHR = void *;
alias EGLAttribKHR = ptrdiff_t; //intptr_t ;
alias PFNEGLCREATESYNC64KHRPROC = extern(System) EGLSyncKHR function (EGLDisplay dpy, EGLenum type, const EGLAttribKHR *attrib_list);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern EGLSyncKHR eglCreateSync64KHR (EGLDisplay dpy, EGLenum type, const EGLAttribKHR *attrib_list);
}

enum EGL_KHR_client_get_all_proc_addresses = 1;

enum EGL_KHR_config_attribs = 1;
enum EGL_CONFORMANT_KHR =                0x3042;
enum EGL_VG_COLORSPACE_LINEAR_BIT_KHR =  0x0020;
enum EGL_VG_ALPHA_FORMAT_PRE_BIT_KHR =   0x0040;

enum EGL_KHR_context_flush_control = 1;
enum EGL_CONTEXT_RELEASE_BEHAVIOR_NONE_KHR = 0;
enum EGL_CONTEXT_RELEASE_BEHAVIOR_KHR  = 0x2097;
enum EGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_KHR = 0x2098;

enum EGL_KHR_create_context = 1;
enum EGL_CONTEXT_MAJOR_VERSION_KHR     = 0x3098;
enum EGL_CONTEXT_MINOR_VERSION_KHR     = 0x30FB;
enum EGL_CONTEXT_FLAGS_KHR             = 0x30FC;
enum EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR = 0x30FD;
enum EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR = 0x31BD;
enum EGL_NO_RESET_NOTIFICATION_KHR     = 0x31BE;
enum EGL_LOSE_CONTEXT_ON_RESET_KHR     = 0x31BF;
enum EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR  = 0x00000001;
enum EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE_BIT_KHR = 0x00000002;
enum EGL_CONTEXT_OPENGL_ROBUST_ACCESS_BIT_KHR = 0x00000004;
enum EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR = 0x00000001;
enum EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT_KHR = 0x00000002;
enum EGL_OPENGL_ES3_BIT_KHR            = 0x00000040;

enum EGL_KHR_create_context_no_error = 1;
enum EGL_CONTEXT_OPENGL_NO_ERROR_KHR   = 0x31B3;

enum EGL_KHR_debug = 1;
alias EGLLabelKHR = void *;
alias EGLObjectKHR = void *;
alias EGLDEBUGPROCKHR =  extern(System) void function(EGLenum error,const char *command,EGLint messageType,EGLLabelKHR threadLabel,EGLLabelKHR objectLabel,const char* message);
enum EGL_OBJECT_THREAD_KHR             = 0x33B0;
enum EGL_OBJECT_DISPLAY_KHR            = 0x33B1;
enum EGL_OBJECT_CONTEXT_KHR            = 0x33B2;
enum EGL_OBJECT_SURFACE_KHR            = 0x33B3;
enum EGL_OBJECT_IMAGE_KHR              = 0x33B4;
enum EGL_OBJECT_SYNC_KHR               = 0x33B5;
enum EGL_OBJECT_STREAM_KHR             = 0x33B6;
enum EGL_DEBUG_MSG_CRITICAL_KHR        = 0x33B9;
enum EGL_DEBUG_MSG_ERROR_KHR           = 0x33BA;
enum EGL_DEBUG_MSG_WARN_KHR            = 0x33BB;
enum EGL_DEBUG_MSG_INFO_KHR            = 0x33BC;
enum EGL_DEBUG_CALLBACK_KHR            = 0x33B8;
alias PFNEGLDEBUGMESSAGECONTROLKHRPROC = extern(System) EGLint function(EGLDEBUGPROCKHR callback, const EGLAttrib *attrib_list);
alias PFNEGLQUERYDEBUGKHRPROC = extern(System) EGLBoolean function(EGLint attribute, EGLAttrib *value);
alias PFNEGLLABELOBJECTKHRPROC = extern(System) EGLint function(EGLDisplay display, EGLenum objectType, EGLObjectKHR object, EGLLabelKHR label);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLint eglDebugMessageControlKHR (EGLDEBUGPROCKHR callback, const EGLAttrib *attrib_list);
    extern(System) extern EGLBoolean eglQueryDebugKHR (EGLint attribute, EGLAttrib *value);
    extern(System) extern EGLint eglLabelObjectKHR (EGLDisplay display, EGLenum objectType, EGLObjectKHR object, EGLLabelKHR label);
}

enum EGL_KHR_display_reference = 1;
enum EGL_TRACK_REFERENCES_KHR          = 0x3352;
alias PFNEGLQUERYDISPLAYATTRIBKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLint name, EGLAttrib *value);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglQueryDisplayAttribKHR (EGLDisplay dpy, EGLint name, EGLAttrib *value);
}

enum EGL_KHR_fence_sync = 1;
alias EGLTimeKHR = khronos_utime_nanoseconds_t ;
version(KHRONOS_SUPPORT_INT64)
{
    enum EGL_SYNC_PRIOR_COMMANDS_COMPLETE_KHR = 0x30F0;
    enum EGL_SYNC_CONDITION_KHR            = 0x30F8;
    enum EGL_SYNC_FENCE_KHR                = 0x30F9;
    alias PFNEGLCREATESYNCKHRPROC = extern(System) EGLSyncKHR function(EGLDisplay dpy, EGLenum type, const EGLint *attrib_list);
    alias PFNEGLDESTROYSYNCKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSyncKHR sync);
    alias PFNEGLCLIENTWAITSYNCKHRPROC = extern(System) EGLint function(EGLDisplay dpy, EGLSyncKHR sync, EGLint flags, EGLTimeKHR timeout);
    alias PFNEGLGETSYNCATTRIBKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSyncKHR sync, EGLint attribute, EGLint *value);
    version(EGL_EGLEXT_PROTOTYPES)
    {
        extern(System) extern EGLSyncKHR eglCreateSyncKHR (EGLDisplay dpy, EGLenum type, const EGLint *attrib_list);
        extern(System) extern EGLBoolean eglDestroySyncKHR (EGLDisplay dpy, EGLSyncKHR sync);
        extern(System) extern EGLint eglClientWaitSyncKHR (EGLDisplay dpy, EGLSyncKHR sync, EGLint flags, EGLTimeKHR timeout);
        extern(System) extern EGLBoolean eglGetSyncAttribKHR (EGLDisplay dpy, EGLSyncKHR sync, EGLint attribute, EGLint *value);
    }
}
enum EGL_KHR_get_all_proc_addresses = 1;

enum EGL_KHR_gl_colorspace = 1;
enum EGL_GL_COLORSPACE_KHR             = 0x309D;
enum EGL_GL_COLORSPACE_SRGB_KHR        = 0x3089;
enum EGL_GL_COLORSPACE_LINEAR_KHR      = 0x308A;

enum EGL_KHR_gl_renderbuffer_image = 1;
enum EGL_GL_RENDERBUFFER_KHR           = 0x30B9;

enum EGL_KHR_gl_texture_2D_image = 1;
enum EGL_GL_TEXTURE_2D_KHR             = 0x30B1;
enum EGL_GL_TEXTURE_LEVEL_KHR          = 0x30BC;

enum EGL_KHR_gl_texture_3D_image = 1;
enum EGL_GL_TEXTURE_3D_KHR             = 0x30B2;
enum EGL_GL_TEXTURE_ZOFFSET_KHR        = 0x30BD;

enum EGL_KHR_gl_texture_cubemap_image = 1;
enum EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_X_KHR = 0x30B3;
enum EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_X_KHR = 0x30B4;
enum EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Y_KHR = 0x30B5;
enum EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_KHR = 0x30B6;
enum EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Z_KHR = 0x30B7;
enum EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_KHR = 0x30B8;

enum EGL_KHR_image = 1;
alias EGLImageKHR = void *;
enum EGL_NATIVE_PIXMAP_KHR             = 0x30B0;
enum EGL_NO_IMAGE_KHR                  = cast(EGLImageKHR)0;
alias PFNEGLCREATEIMAGEKHRPROC =  extern(System) EGLImageKHR function(EGLDisplay dpy, EGLContext ctx, EGLenum target, EGLClientBuffer buffer, const EGLint *attrib_list);
alias PFNEGLDESTROYIMAGEKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLImageKHR image);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLImageKHR eglCreateImageKHR (EGLDisplay dpy, EGLContext ctx, EGLenum target, EGLClientBuffer buffer, const EGLint *attrib_list);
    extern(System) extern EGLBoolean eglDestroyImageKHR (EGLDisplay dpy, EGLImageKHR image);
}

enum EGL_KHR_image_base = 1;
enum EGL_IMAGE_PRESERVED_KHR           = 0x30D2;

enum EGL_KHR_image_pixmap = 1;

enum EGL_KHR_lock_surface = 1;
enum EGL_READ_SURFACE_BIT_KHR          = 0x0001;
enum EGL_WRITE_SURFACE_BIT_KHR         = 0x0002;
enum EGL_LOCK_SURFACE_BIT_KHR          = 0x0080;
enum EGL_OPTIMAL_FORMAT_BIT_KHR        = 0x0100;
enum EGL_MATCH_FORMAT_KHR              = 0x3043;
enum EGL_FORMAT_RGB_565_EXACT_KHR      = 0x30C0;
enum EGL_FORMAT_RGB_565_KHR            = 0x30C1;
enum EGL_FORMAT_RGBA_8888_EXACT_KHR    = 0x30C2;
enum EGL_FORMAT_RGBA_8888_KHR          = 0x30C3;
enum EGL_MAP_PRESERVE_PIXELS_KHR       = 0x30C4;
enum EGL_LOCK_USAGE_HINT_KHR           = 0x30C5;
enum EGL_BITMAP_POINTER_KHR            = 0x30C6;
enum EGL_BITMAP_PITCH_KHR              = 0x30C7;
enum EGL_BITMAP_ORIGIN_KHR             = 0x30C8;
enum EGL_BITMAP_PIXEL_RED_OFFSET_KHR   = 0x30C9;
enum EGL_BITMAP_PIXEL_GREEN_OFFSET_KHR = 0x30CA;
enum EGL_BITMAP_PIXEL_BLUE_OFFSET_KHR  = 0x30CB;
enum EGL_BITMAP_PIXEL_ALPHA_OFFSET_KHR = 0x30CC;
enum EGL_BITMAP_PIXEL_LUMINANCE_OFFSET_KHR = 0x30CD;
enum EGL_LOWER_LEFT_KHR                = 0x30CE;
enum EGL_UPPER_LEFT_KHR                = 0x30CF;
alias PFNEGLLOCKSURFACEKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, const EGLint *attrib_list);
alias PFNEGLUNLOCKSURFACEKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglLockSurfaceKHR (EGLDisplay dpy, EGLSurface surface, const EGLint *attrib_list);
    extern(System) extern EGLBoolean eglUnlockSurfaceKHR (EGLDisplay dpy, EGLSurface surface);
}

enum EGL_KHR_lock_surface2 = 1;
enum EGL_BITMAP_PIXEL_SIZE_KHR         = 0x3110;

enum EGL_KHR_lock_surface3 = 1;
alias PFNEGLQUERYSURFACE64KHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLAttribKHR *value);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglQuerySurface64KHR (EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLAttribKHR *value);
}

enum EGL_KHR_mutable_render_buffer = 1;
enum EGL_MUTABLE_RENDER_BUFFER_BIT_KHR = 0x1000;

enum EGL_KHR_no_config_context = 1;
enum EGL_NO_CONFIG_KHR                 = cast(EGLConfig)0;

enum EGL_KHR_partial_update = 1;
enum EGL_BUFFER_AGE_KHR                = 0x313D;
alias PFNEGLSETDAMAGEREGIONKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint *rects, EGLint n_rects);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglSetDamageRegionKHR (EGLDisplay dpy, EGLSurface surface, EGLint *rects, EGLint n_rects);
}

enum EGL_KHR_platform_android = 1;
enum EGL_PLATFORM_ANDROID_KHR          = 0x3141;

enum EGL_KHR_platform_gbm = 1;
enum EGL_PLATFORM_GBM_KHR              = 0x31D7;

enum EGL_KHR_platform_wayland = 1;
enum EGL_PLATFORM_WAYLAND_KHR          = 0x31D8;

enum EGL_KHR_platform_x11 = 1;
enum EGL_PLATFORM_X11_KHR              = 0x31D5;
enum EGL_PLATFORM_X11_SCREEN_KHR       = 0x31D6;

enum EGL_KHR_reusable_sync = 1;
version(KHRONOS_SUPPORT_INT64)
{
    enum EGL_SYNC_STATUS_KHR               = 0x30F1;
    enum EGL_SIGNALED_KHR                  = 0x30F2;
    enum EGL_UNSIGNALED_KHR                = 0x30F3;
    enum EGL_TIMEOUT_EXPIRED_KHR           = 0x30F5;
    enum EGL_CONDITION_SATISFIED_KHR       = 0x30F6;
    enum EGL_SYNC_TYPE_KHR                 = 0x30F7;
    enum EGL_SYNC_REUSABLE_KHR             = 0x30FA;
    enum EGL_SYNC_FLUSH_COMMANDS_BIT_KHR   = 0x0001;
    enum EGL_FOREVER_KHR                   = 0xFFFFFFFFFFFFFFFFUL;
    enum EGL_NO_SYNC_KHR                   = cast(EGLSyncKHR)0;
    alias PFNEGLSIGNALSYNCKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSyncKHR sync, EGLenum mode);
    version(EGL_EGLEXT_PROTOTYPES)
    {
        extern(System) extern EGLBoolean eglSignalSyncKHR (EGLDisplay dpy, EGLSyncKHR sync, EGLenum mode);
    }
}

alias EGLStreamKHR = void *;
alias EGLuint64KHR = ulong;//khronos_uint64_t ;
version(KHRONOS_SUPPORT_INT64)
{
    enum EGL_NO_STREAM_KHR                 = cast(EGLStreamKHR)0;
    enum EGL_CONSUMER_LATENCY_USEC_KHR     = 0x3210;
    enum EGL_PRODUCER_FRAME_KHR            = 0x3212;
    enum EGL_CONSUMER_FRAME_KHR            = 0x3213;
    enum EGL_STREAM_STATE_KHR              = 0x3214;
    enum EGL_STREAM_STATE_CREATED_KHR      = 0x3215;
    enum EGL_STREAM_STATE_CONNECTING_KHR   = 0x3216;
    enum EGL_STREAM_STATE_EMPTY_KHR        = 0x3217;
    enum EGL_STREAM_STATE_NEW_FRAME_AVAILABLE_KHR = 0x3218;
    enum EGL_STREAM_STATE_OLD_FRAME_AVAILABLE_KHR = 0x3219;
    enum EGL_STREAM_STATE_DISCONNECTED_KHR = 0x321A;
    enum EGL_BAD_STREAM_KHR                = 0x321B;
    enum EGL_BAD_STATE_KHR                 = 0x321C;
    alias PFNEGLCREATESTREAMKHRPROC = extern(System) EGLStreamKHR function(EGLDisplay dpy, const EGLint *attrib_list);
    alias PFNEGLDESTROYSTREAMKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream);
    alias PFNEGLSTREAMATTRIBKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream, EGLenum attribute, EGLint value);
    alias PFNEGLQUERYSTREAMKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream, EGLenum attribute, EGLint *value);
    alias PFNEGLQUERYSTREAMU64KHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream, EGLenum attribute, EGLuint64KHR *value);
    version(EGL_EGLEXT_PROTOTYPES)
    {
        extern(System) extern EGLStreamKHR eglCreateStreamKHR (EGLDisplay dpy, const EGLint *attrib_list);
        extern(System) extern EGLBoolean eglDestroyStreamKHR (EGLDisplay dpy, EGLStreamKHR stream);
        extern(System) extern EGLBoolean eglStreamAttribKHR (EGLDisplay dpy, EGLStreamKHR stream, EGLenum attribute, EGLint value);
        extern(System) extern EGLBoolean eglQueryStreamKHR (EGLDisplay dpy, EGLStreamKHR stream, EGLenum attribute, EGLint *value);
        extern(System) extern EGLBoolean eglQueryStreamu64KHR (EGLDisplay dpy, EGLStreamKHR stream, EGLenum attribute, EGLuint64KHR *value);
    }
}

enum EGL_KHR_stream_attrib = 1;
version(KHRONOS_SUPPORT_INT64)
{
    alias PFNEGLCREATESTREAMATTRIBKHRPROC = extern(System) EGLStreamKHR function(EGLDisplay dpy, const EGLAttrib *attrib_list);
    alias PFNEGLSETSTREAMATTRIBKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream, EGLenum attribute, EGLAttrib value);
    alias PFNEGLQUERYSTREAMATTRIBKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream, EGLenum attribute, EGLAttrib *value);
    alias PFNEGLSTREAMCONSUMERACQUIREATTRIBKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream, const EGLAttrib *attrib_list);
    alias PFNEGLSTREAMCONSUMERRELEASEATTRIBKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream, const EGLAttrib *attrib_list);
    version(EGL_EGLEXT_PROTOTYPES)
    {
        extern(System) extern EGLStreamKHR eglCreateStreamAttribKHR (EGLDisplay dpy, const EGLAttrib *attrib_list);
        extern(System) extern EGLBoolean eglSetStreamAttribKHR (EGLDisplay dpy, EGLStreamKHR stream, EGLenum attribute, EGLAttrib value);
        extern(System) extern EGLBoolean eglQueryStreamAttribKHR (EGLDisplay dpy, EGLStreamKHR stream, EGLenum attribute, EGLAttrib *value);
        extern(System) extern EGLBoolean eglStreamConsumerAcquireAttribKHR (EGLDisplay dpy, EGLStreamKHR stream, const EGLAttrib *attrib_list);
        extern(System) extern EGLBoolean eglStreamConsumerReleaseAttribKHR (EGLDisplay dpy, EGLStreamKHR stream, const EGLAttrib *attrib_list);
    }
}

enum EGL_KHR_stream_consumer_gltexture = 1;
version(EGL_KHR_stream)
{
    enum EGL_CONSUMER_ACQUIRE_TIMEOUT_USEC_KHR = 0x321E;
    alias PFNEGLSTREAMCONSUMERGLTEXTUREEXTERNALKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream);
    alias PFNEGLSTREAMCONSUMERACQUIREKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream);
    alias PFNEGLSTREAMCONSUMERRELEASEKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream);
    version(EGL_EGLEXT_PROTOTYPES)
    {
        extern(System) extern EGLBoolean eglStreamConsumerGLTextureExternalKHR (EGLDisplay dpy, EGLStreamKHR stream);
        extern(System) extern EGLBoolean eglStreamConsumerAcquireKHR (EGLDisplay dpy, EGLStreamKHR stream);
        extern(System) extern EGLBoolean eglStreamConsumerReleaseKHR (EGLDisplay dpy, EGLStreamKHR stream);
    }
}

enum EGL_KHR_stream_cross_process_fd = 1;
alias EGLNativeFileDescriptorKHR = int;
version(EGL_KHR_stream)
{
    enum EGL_NO_FILE_DESCRIPTOR_KHR        = cast(EGLNativeFileDescriptorKHR)-1;
    alias PFNEGLGETSTREAMFILEDESCRIPTORKHRPROC = extern(System)  EGLNativeFileDescriptorKHR function (EGLDisplay dpy, EGLStreamKHR stream);
    alias PFNEGLCREATESTREAMFROMFILEDESCRIPTORKHRPROC = extern(System)  EGLStreamKHR function (EGLDisplay dpy, EGLNativeFileDescriptorKHR file_descriptor);
    version(EGL_EGLEXT_PROTOTYPES)
    {
        extern(System) extern EGLNativeFileDescriptorKHR eglGetStreamFileDescriptorKHR (EGLDisplay dpy, EGLStreamKHR stream);
        extern(System) extern EGLStreamKHR eglCreateStreamFromFileDescriptorKHR (EGLDisplay dpy, EGLNativeFileDescriptorKHR file_descriptor);
    }
}

version(EGL_KHR_stream)
{
    enum EGL_KHR_stream_fifo = 1;
    enum EGL_STREAM_FIFO_LENGTH_KHR        = 0x31FC;
    enum EGL_STREAM_TIME_NOW_KHR           = 0x31FD;
    enum EGL_STREAM_TIME_CONSUMER_KHR      = 0x31FE;
    enum EGL_STREAM_TIME_PRODUCER_KHR      = 0x31FF;
    alias PFNEGLQUERYSTREAMTIMEKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream, EGLenum attribute, EGLTimeKHR *value);
    version(EGL_EGLEXT_PROTOTYPES)
    {
        extern(System) extern EGLBoolean eglQueryStreamTimeKHR (EGLDisplay dpy, EGLStreamKHR stream, EGLenum attribute, EGLTimeKHR *value);
    }
}

enum EGL_KHR_stream_producer_aldatalocator = 1;
enum EGL_KHR_stream_producer_eglsurface = 1;
version(EGL_KHR_stream)
{
    enum EGL_STREAM_BIT_KHR                = 0x0800;
    alias PFNEGLCREATESTREAMPRODUCERSURFACEKHRPROC = extern(System) EGLSurface function(EGLDisplay dpy, EGLConfig config, EGLStreamKHR stream, const EGLint *attrib_list);
    version(EGL_EGLEXT_PROTOTYPES)
    {
        extern(System) extern EGLSurface eglCreateStreamProducerSurfaceKHR (EGLDisplay dpy, EGLConfig config, EGLStreamKHR stream, const EGLint *attrib_list);
    }
}

enum EGL_KHR_surfaceless_context = 1;

enum EGL_KHR_swap_buffers_with_damage = 1;
alias PFNEGLSWAPBUFFERSWITHDAMAGEKHRPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint *rects, EGLint n_rects);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglSwapBuffersWithDamageKHR (EGLDisplay dpy, EGLSurface surface, EGLint *rects, EGLint n_rects);
}

enum EGL_KHR_vg_parent_image = 1;
enum EGL_VG_PARENT_IMAGE_KHR           = 0x30BA;

enum EGL_KHR_wait_sync = 1;
alias PFNEGLWAITSYNCKHRPROC = extern(System) EGLint function(EGLDisplay dpy, EGLSyncKHR sync, EGLint flags);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLint eglWaitSyncKHR (EGLDisplay dpy, EGLSyncKHR sync, EGLint flags);
}

enum EGL_ANDROID_GLES_layers = 1;

enum EGL_ANDROID_blob_cache = 1;
alias EGLsizeiANDROID = ptrdiff_t; //khronos_ssize_t;
alias EGLSetBlobFuncANDROID = extern(System) void function(const void *key, EGLsizeiANDROID keySize, const void *value, EGLsizeiANDROID valueSize);
alias EGLGetBlobFuncANDROID =  extern(System) EGLsizeiANDROID function(const void *key, EGLsizeiANDROID keySize, void *value, EGLsizeiANDROID valueSize);
alias PFNEGLSETBLOBCACHEFUNCSANDROIDPROC = extern(System) void function(EGLDisplay dpy, EGLSetBlobFuncANDROID set, EGLGetBlobFuncANDROID get);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern void eglSetBlobCacheFuncsANDROID (EGLDisplay dpy, EGLSetBlobFuncANDROID set, EGLGetBlobFuncANDROID get);
}

enum EGL_ANDROID_create_native_client_buffer = 1;
enum EGL_NATIVE_BUFFER_USAGE_ANDROID   = 0x3143;
enum EGL_NATIVE_BUFFER_USAGE_PROTECTED_BIT_ANDROID = 0x00000001;
enum EGL_NATIVE_BUFFER_USAGE_RENDERBUFFER_BIT_ANDROID = 0x00000002;
enum EGL_NATIVE_BUFFER_USAGE_TEXTURE_BIT_ANDROID = 0x00000004;
alias PFNEGLCREATENATIVECLIENTBUFFERANDROIDPROC = extern(System) EGLClientBuffer function (const EGLint *attrib_list);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLClientBuffer eglCreateNativeClientBufferANDROID (const EGLint *attrib_list);
}

enum EGL_ANDROID_framebuffer_target = 1;
enum EGL_FRAMEBUFFER_TARGET_ANDROID    = 0x3147;

enum EGL_ANDROID_front_buffer_auto_refresh = 1;
enum EGL_FRONT_BUFFER_AUTO_REFRESH_ANDROID = 0x314C;

enum EGL_ANDROID_get_frame_timestamps = 1;
alias EGLnsecsANDROID = khronos_stime_nanoseconds_t ;
enum EGL_TIMESTAMP_PENDING_ANDROID     = cast(EGLnsecsANDROID)-2;
enum EGL_TIMESTAMP_INVALID_ANDROID     = cast(EGLnsecsANDROID)-1;
enum EGL_TIMESTAMPS_ANDROID            = 0x3430;
enum EGL_COMPOSITE_DEADLINE_ANDROID    = 0x3431;
enum EGL_COMPOSITE_INTERVAL_ANDROID    = 0x3432;
enum EGL_COMPOSITE_TO_PRESENT_LATENCY_ANDROID = 0x3433;
enum EGL_REQUESTED_PRESENT_TIME_ANDROID = 0x3434;
enum EGL_RENDERING_COMPLETE_TIME_ANDROID = 0x3435;
enum EGL_COMPOSITION_LATCH_TIME_ANDROID = 0x3436;
enum EGL_FIRST_COMPOSITION_START_TIME_ANDROID = 0x3437;
enum EGL_LAST_COMPOSITION_START_TIME_ANDROID = 0x3438;
enum EGL_FIRST_COMPOSITION_GPU_FINISHED_TIME_ANDROID = 0x3439;
enum EGL_DISPLAY_PRESENT_TIME_ANDROID  = 0x343A;
enum EGL_DEQUEUE_READY_TIME_ANDROID    = 0x343B;
enum EGL_READS_DONE_TIME_ANDROID       = 0x343C;
alias PFNEGLGETCOMPOSITORTIMINGSUPPORTEDANDROIDPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint name);
alias PFNEGLGETCOMPOSITORTIMINGANDROIDPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint numTimestamps,  const EGLint *names, EGLnsecsANDROID *values);
alias PFNEGLGETNEXTFRAMEIDANDROIDPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLuint64KHR *frameId);
alias PFNEGLGETFRAMETIMESTAMPSUPPORTEDANDROIDPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint timestamp);
alias PFNEGLGETFRAMETIMESTAMPSANDROIDPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLuint64KHR frameId, EGLint numTimestamps,  const EGLint *timestamps, EGLnsecsANDROID *values);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglGetCompositorTimingSupportedANDROID (EGLDisplay dpy, EGLSurface surface, EGLint name);
    extern(System) extern EGLBoolean eglGetCompositorTimingANDROID (EGLDisplay dpy, EGLSurface surface, EGLint numTimestamps,  const EGLint *names, EGLnsecsANDROID *values);
    extern(System) extern EGLBoolean eglGetNextFrameIdANDROID (EGLDisplay dpy, EGLSurface surface, EGLuint64KHR *frameId);
    extern(System) extern EGLBoolean eglGetFrameTimestampSupportedANDROID (EGLDisplay dpy, EGLSurface surface, EGLint timestamp);
    extern(System) extern EGLBoolean eglGetFrameTimestampsANDROID (EGLDisplay dpy, EGLSurface surface, EGLuint64KHR frameId, EGLint numTimestamps,  const EGLint *timestamps, EGLnsecsANDROID *values);
}

enum EGL_ANDROID_get_native_client_buffer = 1;
struct AHardwareBuffer;
alias  PFNEGLGETNATIVECLIENTBUFFERANDROIDPROC = extern(System)EGLClientBuffer function(const AHardwareBuffer *buffer);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLClientBuffer eglGetNativeClientBufferANDROID (const AHardwareBuffer *buffer);
}

enum EGL_ANDROID_image_native_buffer = 1;
enum EGL_NATIVE_BUFFER_ANDROID         = 0x3140;

enum EGL_ANDROID_native_fence_sync = 1;
enum EGL_SYNC_NATIVE_FENCE_ANDROID     = 0x3144;
enum EGL_SYNC_NATIVE_FENCE_FD_ANDROID  = 0x3145;
enum EGL_SYNC_NATIVE_FENCE_SIGNALED_ANDROID = 0x3146;
enum EGL_NO_NATIVE_FENCE_FD_ANDROID    = -1;
alias PFNEGLDUPNATIVEFENCEFDANDROIDPROC = extern(System) EGLint function(EGLDisplay dpy, EGLSyncKHR sync);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLint eglDupNativeFenceFDANDROID (EGLDisplay dpy, EGLSyncKHR sync);
}

enum EGL_ANDROID_presentation_time = 1;
alias PFNEGLPRESENTATIONTIMEANDROIDPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLnsecsANDROID time);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglPresentationTimeANDROID (EGLDisplay dpy, EGLSurface surface, EGLnsecsANDROID time);
}

enum EGL_ANDROID_recordable = 1;
enum EGL_RECORDABLE_ANDROID            = 0x3142;

enum EGL_ANGLE_d3d_share_handle_client_buffer = 1;
enum EGL_D3D_TEXTURE_2D_SHARE_HANDLE_ANGLE = 0x3200;

enum EGL_ANGLE_device_d3d = 1;
enum EGL_D3D9_DEVICE_ANGLE             = 0x33A0;
enum EGL_D3D11_DEVICE_ANGLE            = 0x33A1;

enum EGL_ANGLE_query_surface_pointer = 1;
alias PFNEGLQUERYSURFACEPOINTERANGLEPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint attribute, void **value);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglQuerySurfacePointerANGLE (EGLDisplay dpy, EGLSurface surface, EGLint attribute, void **value);
}

enum EGL_ANGLE_surface_d3d_texture_2d_share_handle = 1;

enum EGL_ANGLE_window_fixed_size = 1;
enum EGL_FIXED_SIZE_ANGLE              = 0x3201;

enum EGL_ARM_implicit_external_sync = 1;
enum EGL_SYNC_PRIOR_COMMANDS_IMPLICIT_EXTERNAL_ARM = 0x328A;

enum EGL_ARM_pixmap_multisample_discard = 1;
enum EGL_DISCARD_SAMPLES_ARM           = 0x3286;

enum EGL_EXT_bind_to_front = 1;
enum EGL_FRONT_BUFFER_EXT              = 0x3464;

enum EGL_EXT_buffer_age = 1;
enum EGL_BUFFER_AGE_EXT                = 0x313D;

enum EGL_EXT_client_extensions = 1;

enum EGL_EXT_client_sync = 1;
enum EGL_SYNC_CLIENT_EXT               = 0x3364;
enum EGL_SYNC_CLIENT_SIGNAL_EXT        = 0x3365;
alias PFNEGLCLIENTSIGNALSYNCEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSync sync, const EGLAttrib *attrib_list);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglClientSignalSyncEXT (EGLDisplay dpy, EGLSync sync, const EGLAttrib *attrib_list);
}

enum EGL_EXT_compositor = 1;
enum EGL_PRIMARY_COMPOSITOR_CONTEXT_EXT = 0x3460;
enum EGL_EXTERNAL_REF_ID_EXT           = 0x3461;
enum EGL_COMPOSITOR_DROP_NEWEST_FRAME_EXT = 0x3462;
enum EGL_COMPOSITOR_KEEP_NEWEST_FRAME_EXT = 0x3463;
alias PFNEGLCOMPOSITORSETCONTEXTLISTEXTPROC = extern(System) EGLBoolean function(const EGLint *external_ref_ids, EGLint num_entries);
alias PFNEGLCOMPOSITORSETCONTEXTATTRIBUTESEXTPROC = extern(System) EGLBoolean function(EGLint external_ref_id, const EGLint *context_attributes, EGLint num_entries);
alias PFNEGLCOMPOSITORSETWINDOWLISTEXTPROC = extern(System) EGLBoolean function(EGLint external_ref_id, const EGLint *external_win_ids, EGLint num_entries);
alias PFNEGLCOMPOSITORSETWINDOWATTRIBUTESEXTPROC = extern(System) EGLBoolean function(EGLint external_win_id, const EGLint *window_attributes, EGLint num_entries);
alias PFNEGLCOMPOSITORBINDTEXWINDOWEXTPROC = extern(System) EGLBoolean function(EGLint external_win_id);
alias PFNEGLCOMPOSITORSETSIZEEXTPROC = extern(System) EGLBoolean function(EGLint external_win_id, EGLint width, EGLint height);
alias PFNEGLCOMPOSITORSWAPPOLICYEXTPROC = extern(System) EGLBoolean function(EGLint external_win_id, EGLint policy);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglCompositorSetContextListEXT (const EGLint *external_ref_ids, EGLint num_entries);
    extern(System) extern EGLBoolean eglCompositorSetContextAttributesEXT (EGLint external_ref_id, const EGLint *context_attributes, EGLint num_entries);
    extern(System) extern EGLBoolean eglCompositorSetWindowListEXT (EGLint external_ref_id, const EGLint *external_win_ids, EGLint num_entries);
    extern(System) extern EGLBoolean eglCompositorSetWindowAttributesEXT (EGLint external_win_id, const EGLint *window_attributes, EGLint num_entries);
    extern(System) extern EGLBoolean eglCompositorBindTexWindowEXT (EGLint external_win_id);
    extern(System) extern EGLBoolean eglCompositorSetSizeEXT (EGLint external_win_id, EGLint width, EGLint height);
    extern(System) extern EGLBoolean eglCompositorSwapPolicyEXT (EGLint external_win_id, EGLint policy);
}

enum EGL_EXT_create_context_robustness = 1;
enum EGL_CONTEXT_OPENGL_ROBUST_ACCESS_EXT = 0x30BF;
enum EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_EXT = 0x3138;
enum EGL_NO_RESET_NOTIFICATION_EXT     = 0x31BE;
enum EGL_LOSE_CONTEXT_ON_RESET_EXT     = 0x31BF;

enum EGL_EXT_device_base = 1;
alias EGLDeviceEXT = void *;
enum EGL_NO_DEVICE_EXT                 = cast(EGLDeviceEXT)0;
enum EGL_BAD_DEVICE_EXT                = 0x322B;
enum EGL_DEVICE_EXT                    = 0x322C;
alias PFNEGLQUERYDEVICEATTRIBEXTPROC = extern(System) EGLBoolean function(EGLDeviceEXT device, EGLint attribute, EGLAttrib *value);
alias PFNEGLQUERYDEVICESTRINGEXTPROC = extern(System) const(char)* function(EGLDeviceEXT device, EGLint name);
alias PFNEGLQUERYDEVICESEXTPROC = extern(System) EGLBoolean function(EGLint max_devices, EGLDeviceEXT *devices, EGLint *num_devices);
alias PFNEGLQUERYDISPLAYATTRIBEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLint attribute, EGLAttrib *value);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglQueryDeviceAttribEXT (EGLDeviceEXT device, EGLint attribute, EGLAttrib *value);
    extern(System) extern const(char)* eglQueryDeviceStringEXT (EGLDeviceEXT device, EGLint name);
    extern(System) extern EGLBoolean eglQueryDevicesEXT (EGLint max_devices, EGLDeviceEXT *devices, EGLint *num_devices);
    extern(System) extern EGLBoolean eglQueryDisplayAttribEXT (EGLDisplay dpy, EGLint attribute, EGLAttrib *value);
}

enum EGL_EXT_device_drm = 1;
enum EGL_DRM_DEVICE_FILE_EXT           = 0x3233;
enum EGL_DRM_MASTER_FD_EXT             = 0x333C;

enum EGL_EXT_device_enumeration = 1;

enum EGL_EXT_device_openwf = 1;
enum EGL_OPENWF_DEVICE_ID_EXT          = 0x3237;

enum EGL_EXT_device_query = 1;

enum EGL_EXT_gl_colorspace_bt2020_linear = 1;
enum EGL_GL_COLORSPACE_BT2020_LINEAR_EXT = 0x333F;

enum EGL_EXT_gl_colorspace_bt2020_pq = 1;
enum EGL_GL_COLORSPACE_BT2020_PQ_EXT   = 0x3340;

enum EGL_EXT_gl_colorspace_display_p3 = 1;
enum EGL_GL_COLORSPACE_DISPLAY_P3_EXT  = 0x3363;

enum EGL_EXT_gl_colorspace_display_p3_linear = 1;
enum EGL_GL_COLORSPACE_DISPLAY_P3_LINEAR_EXT = 0x3362;

enum EGL_EXT_gl_colorspace_display_p3_passthrough = 1;
enum EGL_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH_EXT = 0x3490;

enum EGL_EXT_gl_colorspace_scrgb = 1;
enum EGL_GL_COLORSPACE_SCRGB_EXT       = 0x3351;

enum EGL_EXT_gl_colorspace_scrgb_linear = 1;
enum EGL_GL_COLORSPACE_SCRGB_LINEAR_EXT = 0x3350;

enum EGL_EXT_image_dma_buf_import = 1;
enum EGL_LINUX_DMA_BUF_EXT             = 0x3270;
enum EGL_LINUX_DRM_FOURCC_EXT          = 0x3271;
enum EGL_DMA_BUF_PLANE0_FD_EXT         = 0x3272;
enum EGL_DMA_BUF_PLANE0_OFFSET_EXT     = 0x3273;
enum EGL_DMA_BUF_PLANE0_PITCH_EXT      = 0x3274;
enum EGL_DMA_BUF_PLANE1_FD_EXT         = 0x3275;
enum EGL_DMA_BUF_PLANE1_OFFSET_EXT     = 0x3276;
enum EGL_DMA_BUF_PLANE1_PITCH_EXT      = 0x3277;
enum EGL_DMA_BUF_PLANE2_FD_EXT         = 0x3278;
enum EGL_DMA_BUF_PLANE2_OFFSET_EXT     = 0x3279;
enum EGL_DMA_BUF_PLANE2_PITCH_EXT      = 0x327A;
enum EGL_YUV_COLOR_SPACE_HINT_EXT      = 0x327B;
enum EGL_SAMPLE_RANGE_HINT_EXT         = 0x327C;
enum EGL_YUV_CHROMA_HORIZONTAL_SITING_HINT_EXT = 0x327D;
enum EGL_YUV_CHROMA_VERTICAL_SITING_HINT_EXT = 0x327E;
enum EGL_ITU_REC601_EXT                = 0x327F;
enum EGL_ITU_REC709_EXT                = 0x3280;
enum EGL_ITU_REC2020_EXT               = 0x3281;
enum EGL_YUV_FULL_RANGE_EXT            = 0x3282;
enum EGL_YUV_NARROW_RANGE_EXT          = 0x3283;
enum EGL_YUV_CHROMA_SITING_0_EXT       = 0x3284;
enum EGL_YUV_CHROMA_SITING_0_5_EXT     = 0x3285;

enum EGL_EXT_image_dma_buf_import_modifiers = 1;
enum EGL_DMA_BUF_PLANE3_FD_EXT         = 0x3440;
enum EGL_DMA_BUF_PLANE3_OFFSET_EXT     = 0x3441;
enum EGL_DMA_BUF_PLANE3_PITCH_EXT      = 0x3442;
enum EGL_DMA_BUF_PLANE0_MODIFIER_LO_EXT = 0x3443;
enum EGL_DMA_BUF_PLANE0_MODIFIER_HI_EXT = 0x3444;
enum EGL_DMA_BUF_PLANE1_MODIFIER_LO_EXT = 0x3445;
enum EGL_DMA_BUF_PLANE1_MODIFIER_HI_EXT = 0x3446;
enum EGL_DMA_BUF_PLANE2_MODIFIER_LO_EXT = 0x3447;
enum EGL_DMA_BUF_PLANE2_MODIFIER_HI_EXT = 0x3448;
enum EGL_DMA_BUF_PLANE3_MODIFIER_LO_EXT = 0x3449;
enum EGL_DMA_BUF_PLANE3_MODIFIER_HI_EXT = 0x344A;
alias PFNEGLQUERYDMABUFFORMATSEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLint max_formats, EGLint *formats, EGLint *num_formats);
alias PFNEGLQUERYDMABUFMODIFIERSEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLint format, EGLint max_modifiers, EGLuint64KHR *modifiers, EGLBoolean *external_only, EGLint *num_modifiers);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglQueryDmaBufFormatsEXT (EGLDisplay dpy, EGLint max_formats, EGLint *formats, EGLint *num_formats);
    extern(System) extern EGLBoolean eglQueryDmaBufModifiersEXT (EGLDisplay dpy, EGLint format, EGLint max_modifiers, EGLuint64KHR *modifiers, EGLBoolean *external_only, EGLint *num_modifiers);
}

enum EGL_EXT_image_gl_colorspace = 1;
enum EGL_GL_COLORSPACE_DEFAULT_EXT     = 0x314D;

enum EGL_EXT_image_implicit_sync_control = 1;
enum EGL_IMPORT_SYNC_TYPE_EXT          = 0x3470;
enum EGL_IMPORT_IMPLICIT_SYNC_EXT      = 0x3471;
enum EGL_IMPORT_EXPLICIT_SYNC_EXT      = 0x3472;

enum EGL_EXT_multiview_window = 1;
enum EGL_MULTIVIEW_VIEW_COUNT_EXT      = 0x3134;

enum EGL_EXT_output_base = 1;
alias EGLOutputLayerEXT = void *;
alias EGLOutputPortEXT = void *;
enum EGL_NO_OUTPUT_LAYER_EXT           = cast(EGLOutputLayerEXT)0;
enum EGL_NO_OUTPUT_PORT_EXT            = cast(EGLOutputPortEXT)0;
enum EGL_BAD_OUTPUT_LAYER_EXT          = 0x322D;
enum EGL_BAD_OUTPUT_PORT_EXT           = 0x322E;
enum EGL_SWAP_INTERVAL_EXT             = 0x322F;
alias PFNEGLGETOUTPUTLAYERSEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, const EGLAttrib *attrib_list, EGLOutputLayerEXT *layers, EGLint max_layers, EGLint *num_layers);
alias PFNEGLGETOUTPUTPORTSEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, const EGLAttrib *attrib_list, EGLOutputPortEXT *ports, EGLint max_ports, EGLint *num_ports);
alias PFNEGLOUTPUTLAYERATTRIBEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLOutputLayerEXT layer, EGLint attribute, EGLAttrib value);
alias PFNEGLQUERYOUTPUTLAYERATTRIBEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLOutputLayerEXT layer, EGLint attribute, EGLAttrib *value);
alias PFNEGLQUERYOUTPUTLAYERSTRINGEXTPROC =  extern(System) const(char)* function(EGLDisplay dpy, EGLOutputLayerEXT layer, EGLint name);
alias PFNEGLOUTPUTPORTATTRIBEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLOutputPortEXT port, EGLint attribute, EGLAttrib value);
alias PFNEGLQUERYOUTPUTPORTATTRIBEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLOutputPortEXT port, EGLint attribute, EGLAttrib *value);
alias PFNEGLQUERYOUTPUTPORTSTRINGEXTPROC =  extern(System) const(char)* function(EGLDisplay dpy, EGLOutputPortEXT port, EGLint name);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglGetOutputLayersEXT (EGLDisplay dpy, const EGLAttrib *attrib_list, EGLOutputLayerEXT *layers, EGLint max_layers, EGLint *num_layers);
    extern(System) extern EGLBoolean eglGetOutputPortsEXT (EGLDisplay dpy, const EGLAttrib *attrib_list, EGLOutputPortEXT *ports, EGLint max_ports, EGLint *num_ports);
    extern(System) extern EGLBoolean eglOutputLayerAttribEXT (EGLDisplay dpy, EGLOutputLayerEXT layer, EGLint attribute, EGLAttrib value);
    extern(System) extern EGLBoolean eglQueryOutputLayerAttribEXT (EGLDisplay dpy, EGLOutputLayerEXT layer, EGLint attribute, EGLAttrib *value);
    extern(System) extern  const(char)* eglQueryOutputLayerStringEXT (EGLDisplay dpy, EGLOutputLayerEXT layer, EGLint name);
    extern(System) extern EGLBoolean eglOutputPortAttribEXT (EGLDisplay dpy, EGLOutputPortEXT port, EGLint attribute, EGLAttrib value);
    extern(System) extern EGLBoolean eglQueryOutputPortAttribEXT (EGLDisplay dpy, EGLOutputPortEXT port, EGLint attribute, EGLAttrib *value);
    extern(System) extern  const(char)* eglQueryOutputPortStringEXT (EGLDisplay dpy, EGLOutputPortEXT port, EGLint name);
}

enum EGL_EXT_output_drm = 1;
enum EGL_DRM_CRTC_EXT                  = 0x3234;
enum EGL_DRM_PLANE_EXT                 = 0x3235;
enum EGL_DRM_CONNECTOR_EXT             = 0x3236;

enum EGL_EXT_output_openwf = 1;
enum EGL_OPENWF_PIPELINE_ID_EXT        = 0x3238;
enum EGL_OPENWF_PORT_ID_EXT            = 0x3239;

enum EGL_EXT_pixel_format_float = 1;
enum EGL_COLOR_COMPONENT_TYPE_EXT      = 0x3339;
enum EGL_COLOR_COMPONENT_TYPE_FIXED_EXT = 0x333A;
enum EGL_COLOR_COMPONENT_TYPE_FLOAT_EXT = 0x333B;

enum EGL_EXT_platform_base = 1;
alias PFNEGLGETPLATFORMDISPLAYEXTPROC = extern(System) EGLDisplay function(EGLenum platform, void *native_display, const EGLint *attrib_list);
alias PFNEGLCREATEPLATFORMWINDOWSURFACEEXTPROC = extern(System) EGLSurface function(EGLDisplay dpy, EGLConfig config, void *native_window, const EGLint *attrib_list);
alias PFNEGLCREATEPLATFORMPIXMAPSURFACEEXTPROC = extern(System) EGLSurface function(EGLDisplay dpy, EGLConfig config, void *native_pixmap, const EGLint *attrib_list);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLDisplay eglGetPlatformDisplayEXT (EGLenum platform, void *native_display, const EGLint *attrib_list);
    extern(System) extern EGLSurface eglCreatePlatformWindowSurfaceEXT (EGLDisplay dpy, EGLConfig config, void *native_window, const EGLint *attrib_list);
    extern(System) extern EGLSurface eglCreatePlatformPixmapSurfaceEXT (EGLDisplay dpy, EGLConfig config, void *native_pixmap, const EGLint *attrib_list);
}

enum EGL_EXT_platform_device = 1;
enum EGL_PLATFORM_DEVICE_EXT           = 0x313F;

enum EGL_EXT_platform_wayland = 1;
enum EGL_PLATFORM_WAYLAND_EXT          = 0x31D8;

enum EGL_EXT_platform_x11 = 1;
enum EGL_PLATFORM_X11_EXT              = 0x31D5;
enum EGL_PLATFORM_X11_SCREEN_EXT       = 0x31D6;

enum EGL_EXT_protected_content = 1;
enum EGL_PROTECTED_CONTENT_EXT         = 0x32C0;

enum EGL_EXT_protected_surface = 1;

enum EGL_EXT_stream_consumer_egloutput = 1;
alias PFNEGLSTREAMCONSUMEROUTPUTEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream, EGLOutputLayerEXT layer);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglStreamConsumerOutputEXT (EGLDisplay dpy, EGLStreamKHR stream, EGLOutputLayerEXT layer);
}

enum EGL_EXT_surface_CTA861_3_metadata = 1;
enum EGL_CTA861_3_MAX_CONTENT_LIGHT_LEVEL_EXT = 0x3360;
enum EGL_CTA861_3_MAX_FRAME_AVERAGE_LEVEL_EXT = 0x3361;

enum EGL_EXT_surface_SMPTE2086_metadata = 1;
enum EGL_SMPTE2086_DISPLAY_PRIMARY_RX_EXT = 0x3341;
enum EGL_SMPTE2086_DISPLAY_PRIMARY_RY_EXT = 0x3342;
enum EGL_SMPTE2086_DISPLAY_PRIMARY_GX_EXT = 0x3343;
enum EGL_SMPTE2086_DISPLAY_PRIMARY_GY_EXT = 0x3344;
enum EGL_SMPTE2086_DISPLAY_PRIMARY_BX_EXT = 0x3345;
enum EGL_SMPTE2086_DISPLAY_PRIMARY_BY_EXT = 0x3346;
enum EGL_SMPTE2086_WHITE_POINT_X_EXT   = 0x3347;
enum EGL_SMPTE2086_WHITE_POINT_Y_EXT   = 0x3348;
enum EGL_SMPTE2086_MAX_LUMINANCE_EXT   = 0x3349;
enum EGL_SMPTE2086_MIN_LUMINANCE_EXT   = 0x334A;
enum EGL_METADATA_SCALING_EXT          = 50000;

enum EGL_EXT_swap_buffers_with_damage = 1;
alias PFNEGLSWAPBUFFERSWITHDAMAGEEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint *rects, EGLint n_rects);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglSwapBuffersWithDamageEXT (EGLDisplay dpy, EGLSurface surface, EGLint *rects, EGLint n_rects);
}

enum EGL_EXT_sync_reuse = 1;
alias PFNEGLUNSIGNALSYNCEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSync sync, const EGLAttrib *attrib_list);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglUnsignalSyncEXT (EGLDisplay dpy, EGLSync sync, const EGLAttrib *attrib_list);
}

enum EGL_EXT_yuv_surface = 1;
enum EGL_YUV_ORDER_EXT                 = 0x3301;
enum EGL_YUV_NUMBER_OF_PLANES_EXT      = 0x3311;
enum EGL_YUV_SUBSAMPLE_EXT             = 0x3312;
enum EGL_YUV_DEPTH_RANGE_EXT           = 0x3317;
enum EGL_YUV_CSC_STANDARD_EXT          = 0x330A;
enum EGL_YUV_PLANE_BPP_EXT             = 0x331A;
enum EGL_YUV_BUFFER_EXT                = 0x3300;
enum EGL_YUV_ORDER_YUV_EXT             = 0x3302;
enum EGL_YUV_ORDER_YVU_EXT             = 0x3303;
enum EGL_YUV_ORDER_YUYV_EXT            = 0x3304;
enum EGL_YUV_ORDER_UYVY_EXT            = 0x3305;
enum EGL_YUV_ORDER_YVYU_EXT            = 0x3306;
enum EGL_YUV_ORDER_VYUY_EXT            = 0x3307;
enum EGL_YUV_ORDER_AYUV_EXT            = 0x3308;
enum EGL_YUV_SUBSAMPLE_4_2_0_EXT       = 0x3313;
enum EGL_YUV_SUBSAMPLE_4_2_2_EXT       = 0x3314;
enum EGL_YUV_SUBSAMPLE_4_4_4_EXT       = 0x3315;
enum EGL_YUV_DEPTH_RANGE_LIMITED_EXT   = 0x3318;
enum EGL_YUV_DEPTH_RANGE_FULL_EXT      = 0x3319;
enum EGL_YUV_CSC_STANDARD_601_EXT      = 0x330B;
enum EGL_YUV_CSC_STANDARD_709_EXT      = 0x330C;
enum EGL_YUV_CSC_STANDARD_2020_EXT     = 0x330D;
enum EGL_YUV_PLANE_BPP_0_EXT           = 0x331B;
enum EGL_YUV_PLANE_BPP_8_EXT           = 0x331C;
enum EGL_YUV_PLANE_BPP_10_EXT          = 0x331D;

enum EGL_HI_clientpixmap = 1;
struct EGLClientPixmapHI {
    void  *pData;
    EGLint iWidth;
    EGLint iHeight;
    EGLint iStride;
};
enum EGL_CLIENT_PIXMAP_POINTER_HI      = 0x8F74;
alias PFNEGLCREATEPIXMAPSURFACEHIPROC = extern(System) EGLSurface function(EGLDisplay dpy, EGLConfig config, EGLClientPixmapHI *pixmap);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLSurface eglCreatePixmapSurfaceHI (EGLDisplay dpy, EGLConfig config, EGLClientPixmapHI *pixmap);
}

enum EGL_HI_colorformats = 1;
enum EGL_COLOR_FORMAT_HI               = 0x8F70;
enum EGL_COLOR_RGB_HI                  = 0x8F71;
enum EGL_COLOR_RGBA_HI                 = 0x8F72;
enum EGL_COLOR_ARGB_HI                 = 0x8F73;

enum EGL_IMG_context_priority = 1;
enum EGL_CONTEXT_PRIORITY_LEVEL_IMG    = 0x3100;
enum EGL_CONTEXT_PRIORITY_HIGH_IMG     = 0x3101;
enum EGL_CONTEXT_PRIORITY_MEDIUM_IMG   = 0x3102;
enum EGL_CONTEXT_PRIORITY_LOW_IMG      = 0x3103;

enum EGL_IMG_image_plane_attribs = 1;
enum EGL_NATIVE_BUFFER_MULTIPLANE_SEPARATE_IMG = 0x3105;
enum EGL_NATIVE_BUFFER_PLANE_OFFSET_IMG = 0x3106;

enum EGL_MESA_drm_image = 1;
enum EGL_DRM_BUFFER_FORMAT_MESA        = 0x31D0;
enum EGL_DRM_BUFFER_USE_MESA           = 0x31D1;
enum EGL_DRM_BUFFER_FORMAT_ARGB32_MESA = 0x31D2;
enum EGL_DRM_BUFFER_MESA               = 0x31D3;
enum EGL_DRM_BUFFER_STRIDE_MESA        = 0x31D4;
enum EGL_DRM_BUFFER_USE_SCANOUT_MESA   = 0x00000001;
enum EGL_DRM_BUFFER_USE_SHARE_MESA     = 0x00000002;
enum EGL_DRM_BUFFER_USE_CURSOR_MESA    = 0x00000004;
alias PFNEGLCREATEDRMIMAGEMESAPROC = extern(System) EGLImageKHR function(EGLDisplay dpy, const EGLint *attrib_list);
alias PFNEGLEXPORTDRMIMAGEMESAPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLImageKHR image, EGLint *name, EGLint *handle, EGLint *stride);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLImageKHR eglCreateDRMImageMESA (EGLDisplay dpy, const EGLint *attrib_list);
    extern(System) extern EGLBoolean eglExportDRMImageMESA (EGLDisplay dpy, EGLImageKHR image, EGLint *name, EGLint *handle, EGLint *stride);
}

enum EGL_MESA_image_dma_buf_export = 1;
alias PFNEGLEXPORTDMABUFIMAGEQUERYMESAPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLImageKHR image, int *fourcc, int *num_planes, EGLuint64KHR *modifiers);
alias PFNEGLEXPORTDMABUFIMAGEMESAPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLImageKHR image, int *fds, EGLint *strides, EGLint *offsets);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglExportDMABUFImageQueryMESA (EGLDisplay dpy, EGLImageKHR image, int *fourcc, int *num_planes, EGLuint64KHR *modifiers);
    extern(System) extern EGLBoolean eglExportDMABUFImageMESA (EGLDisplay dpy, EGLImageKHR image, int *fds, EGLint *strides, EGLint *offsets);
}

enum EGL_MESA_platform_gbm = 1;
enum EGL_PLATFORM_GBM_MESA             = 0x31D7;

enum EGL_MESA_platform_surfaceless = 1;
enum EGL_PLATFORM_SURFACELESS_MESA     = 0x31DD;

enum EGL_MESA_query_driver = 1;
alias PFNEGLGETDISPLAYDRIVERCONFIGPROC = extern(System) char * function (EGLDisplay dpy);
alias PFNEGLGETDISPLAYDRIVERNAMEPROC = extern(System) const(char)* function (EGLDisplay dpy);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern char* eglGetDisplayDriverConfig (EGLDisplay dpy);
    extern(System) extern const(char)* eglGetDisplayDriverName (EGLDisplay dpy);
}

enum EGL_NOK_swap_region = 1;
alias PFNEGLSWAPBUFFERSREGIONNOKPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint numRects, const EGLint *rects);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglSwapBuffersRegionNOK (EGLDisplay dpy, EGLSurface surface, EGLint numRects, const EGLint *rects);
}

enum EGL_NOK_swap_region2 = 1;
alias PFNEGLSWAPBUFFERSREGION2NOKPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint numRects, const EGLint *rects);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglSwapBuffersRegion2NOK (EGLDisplay dpy, EGLSurface surface, EGLint numRects, const EGLint *rects);
}

enum EGL_NOK_texture_from_pixmap = 1;
enum EGL_Y_INVERTED_NOK                = 0x307F;

enum EGL_NV_3dvision_surface = 1;
enum EGL_AUTO_STEREO_NV                = 0x3136;

enum EGL_NV_context_priority_realtime = 1;
enum EGL_CONTEXT_PRIORITY_REALTIME_NV  = 0x3357;

enum EGL_NV_coverage_sample = 1;
enum EGL_COVERAGE_BUFFERS_NV           = 0x30E0;
enum EGL_COVERAGE_SAMPLES_NV           = 0x30E1;

enum EGL_NV_coverage_sample_resolve = 1;
enum EGL_COVERAGE_SAMPLE_RESOLVE_NV    = 0x3131;
enum EGL_COVERAGE_SAMPLE_RESOLVE_DEFAULT_NV = 0x3132;
enum EGL_COVERAGE_SAMPLE_RESOLVE_NONE_NV = 0x3133;

enum EGL_NV_cuda_event = 1;
enum EGL_CUDA_EVENT_HANDLE_NV          = 0x323B;
enum EGL_SYNC_CUDA_EVENT_NV            = 0x323C;
enum EGL_SYNC_CUDA_EVENT_COMPLETE_NV   = 0x323D;

enum EGL_NV_depth_nonlinear = 1;
enum EGL_DEPTH_ENCODING_NV             = 0x30E2;
enum EGL_DEPTH_ENCODING_NONE_NV        = 0;
enum EGL_DEPTH_ENCODING_NONLINEAR_NV   = 0x30E3;

enum EGL_NV_device_cuda = 1;
enum EGL_CUDA_DEVICE_NV                = 0x323A;

enum EGL_NV_native_query = 1;
alias PFNEGLQUERYNATIVEDISPLAYNVPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLNativeDisplayType *display_id);
alias PFNEGLQUERYNATIVEWINDOWNVPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surf, EGLNativeWindowType *window);
alias PFNEGLQUERYNATIVEPIXMAPNVPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surf, EGLNativePixmapType *pixmap);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglQueryNativeDisplayNV (EGLDisplay dpy, EGLNativeDisplayType *display_id);
    extern(System) extern EGLBoolean eglQueryNativeWindowNV (EGLDisplay dpy, EGLSurface surf, EGLNativeWindowType *window);
    extern(System) extern EGLBoolean eglQueryNativePixmapNV (EGLDisplay dpy, EGLSurface surf, EGLNativePixmapType *pixmap);
}

enum EGL_NV_post_convert_rounding = 1;

enum EGL_NV_post_sub_buffer = 1;
enum EGL_POST_SUB_BUFFER_SUPPORTED_NV  = 0x30BE;
alias PFNEGLPOSTSUBBUFFERNVPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint x, EGLint y, EGLint width, EGLint height);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglPostSubBufferNV (EGLDisplay dpy, EGLSurface surface, EGLint x, EGLint y, EGLint width, EGLint height);
}

enum EGL_NV_quadruple_buffer = 1;
enum EGL_QUADRUPLE_BUFFER_NV           = 0x3231;

enum EGL_NV_robustness_video_memory_purge = 1;
enum EGL_GENERATE_RESET_ON_VIDEO_MEMORY_PURGE_NV = 0x334C;

enum EGL_NV_stream_consumer_gltexture_yuv = 1;
enum EGL_YUV_PLANE0_TEXTURE_UNIT_NV    = 0x332C;
enum EGL_YUV_PLANE1_TEXTURE_UNIT_NV    = 0x332D;
enum EGL_YUV_PLANE2_TEXTURE_UNIT_NV    = 0x332E;
alias PFNEGLSTREAMCONSUMERGLTEXTUREEXTERNALATTRIBSNVPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream, const EGLAttrib *attrib_list);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglStreamConsumerGLTextureExternalAttribsNV (EGLDisplay dpy, EGLStreamKHR stream, const EGLAttrib *attrib_list);
}

enum EGL_NV_stream_cross_display = 1;
enum EGL_STREAM_CROSS_DISPLAY_NV       = 0x334E;

enum EGL_NV_stream_cross_object = 1;
enum EGL_STREAM_CROSS_OBJECT_NV        = 0x334D;

enum EGL_NV_stream_cross_partition = 1;
enum EGL_STREAM_CROSS_PARTITION_NV     = 0x323F;

enum EGL_NV_stream_cross_process = 1;
enum EGL_STREAM_CROSS_PROCESS_NV       = 0x3245;

enum EGL_NV_stream_cross_system = 1;
enum EGL_STREAM_CROSS_SYSTEM_NV        = 0x334F;

enum EGL_NV_stream_dma = 1;
enum EGL_STREAM_DMA_NV                 = 0x3371;
enum EGL_STREAM_DMA_SERVER_NV          = 0x3372;

enum EGL_NV_stream_fifo_next = 1;
enum EGL_PENDING_FRAME_NV              = 0x3329;
enum EGL_STREAM_TIME_PENDING_NV        = 0x332A;

enum EGL_NV_stream_fifo_synchronous = 1;
enum EGL_STREAM_FIFO_SYNCHRONOUS_NV    = 0x3336;

enum EGL_NV_stream_flush = 1;
alias PFNEGLSTREAMFLUSHNVPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglStreamFlushNV (EGLDisplay dpy, EGLStreamKHR stream);
}

enum EGL_NV_stream_frame_limits = 1;
enum EGL_PRODUCER_MAX_FRAME_HINT_NV    = 0x3337;
enum EGL_CONSUMER_MAX_FRAME_HINT_NV    = 0x3338;

enum EGL_NV_stream_metadata = 1;
enum EGL_MAX_STREAM_METADATA_BLOCKS_NV = 0x3250;
enum EGL_MAX_STREAM_METADATA_BLOCK_SIZE_NV = 0x3251;
enum EGL_MAX_STREAM_METADATA_TOTAL_SIZE_NV = 0x3252;
enum EGL_PRODUCER_METADATA_NV          = 0x3253;
enum EGL_CONSUMER_METADATA_NV          = 0x3254;
enum EGL_PENDING_METADATA_NV           = 0x3328;
enum EGL_METADATA0_SIZE_NV             = 0x3255;
enum EGL_METADATA1_SIZE_NV             = 0x3256;
enum EGL_METADATA2_SIZE_NV             = 0x3257;
enum EGL_METADATA3_SIZE_NV             = 0x3258;
enum EGL_METADATA0_TYPE_NV             = 0x3259;
enum EGL_METADATA1_TYPE_NV             = 0x325A;
enum EGL_METADATA2_TYPE_NV             = 0x325B;
enum EGL_METADATA3_TYPE_NV             = 0x325C;
alias PFNEGLQUERYDISPLAYATTRIBNVPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLint attribute, EGLAttrib *value);
alias PFNEGLSETSTREAMMETADATANVPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream, EGLint n, EGLint offset, EGLint size, const void *data);
alias PFNEGLQUERYSTREAMMETADATANVPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream, EGLenum name, EGLint n, EGLint offset, EGLint size, void *data);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglQueryDisplayAttribNV (EGLDisplay dpy, EGLint attribute, EGLAttrib *value);
    extern(System) extern EGLBoolean eglSetStreamMetadataNV (EGLDisplay dpy, EGLStreamKHR stream, EGLint n, EGLint offset, EGLint size, const void *data);
    extern(System) extern EGLBoolean eglQueryStreamMetadataNV (EGLDisplay dpy, EGLStreamKHR stream, EGLenum name, EGLint n, EGLint offset, EGLint size, void *data);
}

enum EGL_NV_stream_origin = 1;
enum EGL_STREAM_FRAME_ORIGIN_X_NV      = 0x3366;
enum EGL_STREAM_FRAME_ORIGIN_Y_NV      = 0x3367;
enum EGL_STREAM_FRAME_MAJOR_AXIS_NV    = 0x3368;
enum EGL_CONSUMER_AUTO_ORIENTATION_NV  = 0x3369;
enum EGL_PRODUCER_AUTO_ORIENTATION_NV  = 0x336A;
enum EGL_LEFT_NV                       = 0x336B;
enum EGL_RIGHT_NV                      = 0x336C;
enum EGL_TOP_NV                        = 0x336D;
enum EGL_BOTTOM_NV                     = 0x336E;
enum EGL_X_AXIS_NV                     = 0x336F;
enum EGL_Y_AXIS_NV                     = 0x3370;

enum EGL_NV_stream_remote = 1;
enum EGL_STREAM_STATE_INITIALIZING_NV  = 0x3240;
enum EGL_STREAM_TYPE_NV                = 0x3241;
enum EGL_STREAM_PROTOCOL_NV            = 0x3242;
enum EGL_STREAM_ENDPOINT_NV            = 0x3243;
enum EGL_STREAM_LOCAL_NV               = 0x3244;
enum EGL_STREAM_PRODUCER_NV            = 0x3247;
enum EGL_STREAM_CONSUMER_NV            = 0x3248;
enum EGL_STREAM_PROTOCOL_FD_NV         = 0x3246;

enum EGL_NV_stream_reset = 1;
enum EGL_SUPPORT_RESET_NV              = 0x3334;
enum EGL_SUPPORT_REUSE_NV              = 0x3335;
alias PFNEGLRESETSTREAMNVPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLStreamKHR stream);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglResetStreamNV (EGLDisplay dpy, EGLStreamKHR stream);
}

enum EGL_NV_stream_socket = 1;
enum EGL_STREAM_PROTOCOL_SOCKET_NV     = 0x324B;
enum EGL_SOCKET_HANDLE_NV              = 0x324C;
enum EGL_SOCKET_TYPE_NV                = 0x324D;

enum EGL_NV_stream_socket_inet = 1;
enum EGL_SOCKET_TYPE_INET_NV           = 0x324F;

enum EGL_NV_stream_socket_unix = 1;
enum EGL_SOCKET_TYPE_UNIX_NV           = 0x324E;

enum EGL_NV_stream_sync = 1;
enum EGL_SYNC_NEW_FRAME_NV             = 0x321F;
alias PFNEGLCREATESTREAMSYNCNVPROC = extern(System) EGLSyncKHR function(EGLDisplay dpy, EGLStreamKHR stream, EGLenum type, const EGLint *attrib_list);
version(EGL_EGLEXT_PROTOTYPES)
{
    extern(System) extern EGLSyncKHR eglCreateStreamSyncNV (EGLDisplay dpy, EGLStreamKHR stream, EGLenum type, const EGLint *attrib_list);
}

enum EGL_NV_sync = 1;
alias EGLSyncNV = void *;
alias EGLTimeNV = khronos_utime_nanoseconds_t ;
version(KHRONOS_SUPPORT_INT64)
{
    enum EGL_SYNC_PRIOR_COMMANDS_COMPLETE_NV = 0x30E6;
    enum EGL_SYNC_STATUS_NV                = 0x30E7;
    enum EGL_SIGNALED_NV                   = 0x30E8;
    enum EGL_UNSIGNALED_NV                 = 0x30E9;
    enum EGL_SYNC_FLUSH_COMMANDS_BIT_NV    = 0x0001;
    enum EGL_FOREVER_NV                    = 0xFFFFFFFFFFFFFFFFUL;
    enum EGL_ALREADY_SIGNALED_NV           = 0x30EA;
    enum EGL_TIMEOUT_EXPIRED_NV            = 0x30EB;
    enum EGL_CONDITION_SATISFIED_NV        = 0x30EC;
    enum EGL_SYNC_TYPE_NV                  = 0x30ED;
    enum EGL_SYNC_CONDITION_NV             = 0x30EE;
    enum EGL_SYNC_FENCE_NV                 = 0x30EF;
    enum EGL_NO_SYNC_NV                    = cast(EGLSyncNV)0;
    alias PFNEGLCREATEFENCESYNCNVPROC = extern(System) EGLSyncNV function(EGLDisplay dpy, EGLenum condition, const EGLint *attrib_list);
    alias PFNEGLDESTROYSYNCNVPROC = extern(System) EGLBoolean function(EGLSyncNV sync);
    alias PFNEGLFENCENVPROC = extern(System) EGLBoolean function(EGLSyncNV sync);
    alias PFNEGLCLIENTWAITSYNCNVPROC = extern(System) EGLint function(EGLSyncNV sync, EGLint flags, EGLTimeNV timeout);
    alias PFNEGLSIGNALSYNCNVPROC = extern(System) EGLBoolean function(EGLSyncNV sync, EGLenum mode);
    alias PFNEGLGETSYNCATTRIBNVPROC = extern(System) EGLBoolean function(EGLSyncNV sync, EGLint attribute, EGLint *value);
    version(EGL_EGLEXT_PROTOTYPES)
    {
        extern(System) extern EGLSyncNV eglCreateFenceSyncNV (EGLDisplay dpy, EGLenum condition, const EGLint *attrib_list);
        extern(System) extern EGLBoolean eglDestroySyncNV (EGLSyncNV sync);
        extern(System) extern EGLBoolean eglFenceNV (EGLSyncNV sync);
        extern(System) extern EGLint eglClientWaitSyncNV (EGLSyncNV sync, EGLint flags, EGLTimeNV timeout);
        extern(System) extern EGLBoolean eglSignalSyncNV (EGLSyncNV sync, EGLenum mode);
        extern(System) extern EGLBoolean eglGetSyncAttribNV (EGLSyncNV sync, EGLint attribute, EGLint *value);
    }
    
}

enum EGL_NV_system_time = 1;
alias EGLuint64NV = khronos_utime_nanoseconds_t ;
version(KHRONOS_SUPPORT_INT64)
{
    alias PFNEGLGETSYSTEMTIMEFREQUENCYNVPROC =  extern(System) EGLuint64NV function();
    alias PFNEGLGETSYSTEMTIMENVPROC =  extern(System) EGLuint64NV function();
    version(EGL_EGLEXT_PROTOTYPES)
    {
        extern EGLuint64NV eglGetSystemTimeFrequencyNV ();
        extern EGLuint64NV eglGetSystemTimeNV ();
    }
}
enum EGL_NV_triple_buffer = 1;
enum EGL_TRIPLE_BUFFER_NV              = 0x3230;

enum EGL_TIZEN_image_native_buffer = 1;
enum EGL_NATIVE_BUFFER_TIZEN           = 0x32A0;

enum EGL_TIZEN_image_native_surface = 1;
enum EGL_NATIVE_SURFACE_TIZEN          = 0x32A1;