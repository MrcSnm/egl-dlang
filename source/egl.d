module egl;

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
alias khronos_utime_nanoseconds_t = ulong;
alias khronos_stime_nanoseconds_t = long;

/* Generated on date 20190808 */

/* Generated C header for:
 * API: egl
 * Versions considered: .*
 * Versions emitted: .*
 * Default extensions included: None
 * Additional extensions included: _nomatch_^
 * Extensions removed: _nomatch_^
 */

enum EGL_VERSION_1_0 =1;
alias EGLBoolean = uint; 
alias EGLDisplay = void *;
// #include <KHR/khrplatform.h>
// #include <EGL/eglplatform.h>
alias EGLConfig = void *;
alias EGLSurface = void *;
alias EGLContext = void *;
alias __eglMustCastToProperFunctionPointerType = void function();
enum EGL_ALPHA_SIZE                    =0x3021;
enum EGL_BAD_ACCESS                    =0x3002;
enum EGL_BAD_ALLOC                     =0x3003;
enum EGL_BAD_ATTRIBUTE                 =0x3004;
enum EGL_BAD_CONFIG                    =0x3005;
enum EGL_BAD_CONTEXT                   =0x3006;
enum EGL_BAD_CURRENT_SURFACE           =0x3007;
enum EGL_BAD_DISPLAY                   =0x3008;
enum EGL_BAD_MATCH                     =0x3009;
enum EGL_BAD_NATIVE_PIXMAP             =0x300A;
enum EGL_BAD_NATIVE_WINDOW             =0x300B;
enum EGL_BAD_PARAMETER                 =0x300C;
enum EGL_BAD_SURFACE                   =0x300D;
enum EGL_BLUE_SIZE                     =0x3022;
enum EGL_BUFFER_SIZE                   =0x3020;
enum EGL_CONFIG_CAVEAT                 =0x3027;
enum EGL_CONFIG_ID                     =0x3028;
enum EGL_CORE_NATIVE_ENGINE            =0x305B;
enum EGL_DEPTH_SIZE                    =0x3025;
enum EGL_DONT_CARE                     =cast(EGLint)-1;
enum EGL_DRAW                          =0x3059;
enum EGL_EXTENSIONS                    =0x3055;
enum EGL_FALSE                         =0;
enum EGL_GREEN_SIZE                    =0x3023;
enum EGL_HEIGHT                        =0x3056;
enum EGL_LARGEST_PBUFFER               =0x3058;
enum EGL_LEVEL                         =0x3029;
enum EGL_MAX_PBUFFER_HEIGHT            =0x302A;
enum EGL_MAX_PBUFFER_PIXELS            =0x302B;
enum EGL_MAX_PBUFFER_WIDTH             =0x302C;
enum EGL_NATIVE_RENDERABLE             =0x302D;
enum EGL_NATIVE_VISUAL_ID              =0x302E;
enum EGL_NATIVE_VISUAL_TYPE            =0x302F;
enum EGL_NONE                          =0x3038;
enum EGL_NON_CONFORMANT_CONFIG         =0x3051;
enum EGL_NOT_INITIALIZED               =0x3001;
enum EGL_NO_CONTEXT                    =cast(EGLContext)0;
enum EGL_NO_DISPLAY                    =cast(EGLDisplay)0;
enum EGL_NO_SURFACE                    =cast(EGLSurface)0;
enum EGL_PBUFFER_BIT                   =0x0001;
enum EGL_PIXMAP_BIT                    =0x0002;
enum EGL_READ                          =0x305A;
enum EGL_RED_SIZE                      =0x3024;
enum EGL_SAMPLES                       =0x3031;
enum EGL_SAMPLE_BUFFERS                =0x3032;
enum EGL_SLOW_CONFIG                   =0x3050;
enum EGL_STENCIL_SIZE                  =0x3026;
enum EGL_SUCCESS                       =0x3000;
enum EGL_SURFACE_TYPE                  =0x3033;
enum EGL_TRANSPARENT_BLUE_VALUE        =0x3035;
enum EGL_TRANSPARENT_GREEN_VALUE       =0x3036;
enum EGL_TRANSPARENT_RED_VALUE         =0x3037;
enum EGL_TRANSPARENT_RGB               =0x3052;
enum EGL_TRANSPARENT_TYPE              =0x3034;
enum EGL_TRUE                          =1;
enum EGL_VENDOR                        =0x3053;
enum EGL_VERSION                       =0x3054;
enum EGL_WIDTH                         =0x3057;
enum EGL_WINDOW_BIT                    =0x0004;
alias PFNEGLCHOOSECONFIGPROC = extern(System) EGLBoolean function(EGLDisplay dpy, const EGLint *attrib_list, EGLConfig *configs, EGLint config_size, EGLint *num_config);
alias PFNEGLCOPYBUFFERSPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLNativePixmapType target);
alias PFNEGLCREATECONTEXTPROC = extern(System) EGLContext function(EGLDisplay dpy, EGLConfig config, EGLContext share_context, const EGLint *attrib_list);
alias PFNEGLCREATEPBUFFERSURFACEPROC = extern(System) EGLSurface function(EGLDisplay dpy, EGLConfig config, const EGLint *attrib_list);
alias PFNEGLCREATEPIXMAPSURFACEPROC = extern(System) EGLSurface function(EGLDisplay dpy, EGLConfig config, EGLNativePixmapType pixmap, const EGLint *attrib_list);
alias PFNEGLCREATEWINDOWSURFACEPROC = extern(System) EGLSurface function(EGLDisplay dpy, EGLConfig config, EGLNativeWindowType win, const EGLint *attrib_list);
alias PFNEGLDESTROYCONTEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLContext ctx);
alias PFNEGLDESTROYSURFACEPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface);
alias PFNEGLGETCONFIGATTRIBPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLConfig config, EGLint attribute, EGLint *value);
alias PFNEGLGETCONFIGSPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLConfig *configs, EGLint config_size, EGLint *num_config);
alias PFNEGLGETCURRENTDISPLAYPROC = extern(System) EGLDisplay function();
alias PFNEGLGETCURRENTSURFACEPROC = extern(System) EGLSurface function(EGLint readdraw);
alias PFNEGLGETDISPLAYPROC = extern(System) EGLDisplay function(EGLNativeDisplayType display_id);
alias PFNEGLGETERRORPROC = extern(System) EGLint function();
alias PFNEGLGETPROCADDRESSPROC = extern(System) __eglMustCastToProperFunctionPointerType function(const char *procname);
alias PFNEGLINITIALIZEPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLint *major, EGLint *minor);
alias PFNEGLMAKECURRENTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface draw, EGLSurface read, EGLContext ctx);
alias PFNEGLQUERYCONTEXTPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLContext ctx, EGLint attribute, EGLint *value);
alias PFNEGLQUERYSTRINGPROC = extern(System) const(char)* function(EGLDisplay dpy, EGLint name);
alias PFNEGLQUERYSURFACEPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint *value);
alias PFNEGLSWAPBUFFERSPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface);
alias PFNEGLTERMINATEPROC = extern(System) EGLBoolean function(EGLDisplay dpy);
alias PFNEGLWAITGLPROC = extern(System) EGLBoolean function();
alias PFNEGLWAITNATIVEPROC = extern(System) EGLBoolean function(EGLint engine);

version(EGL_EGL_PROTOTYPES)
{
    extern(System) extern EGLBoolean eglChooseConfig (EGLDisplay dpy, const EGLint *attrib_list, EGLConfig *configs, EGLint config_size, EGLint *num_config);
    extern(System) extern EGLBoolean eglCopyBuffers (EGLDisplay dpy, EGLSurface surface, EGLNativePixmapType target);
    extern(System) extern EGLContext eglCreateContext (EGLDisplay dpy, EGLConfig config, EGLContext share_context, const EGLint *attrib_list);
    extern(System) extern EGLSurface eglCreatePbufferSurface (EGLDisplay dpy, EGLConfig config, const EGLint *attrib_list);
    extern(System) extern EGLSurface eglCreatePixmapSurface (EGLDisplay dpy, EGLConfig config, EGLNativePixmapType pixmap, const EGLint *attrib_list);
    extern(System) extern EGLSurface eglCreateWindowSurface (EGLDisplay dpy, EGLConfig config, EGLNativeWindowType win, const EGLint *attrib_list);
    extern(System) extern EGLBoolean eglDestroyContext (EGLDisplay dpy, EGLContext ctx);
    extern(System) extern EGLBoolean eglDestroySurface (EGLDisplay dpy, EGLSurface surface);
    extern(System) extern EGLBoolean eglGetConfigAttrib (EGLDisplay dpy, EGLConfig config, EGLint attribute, EGLint *value);
    extern(System) extern EGLBoolean eglGetConfigs (EGLDisplay dpy, EGLConfig *configs, EGLint config_size, EGLint *num_config);
    extern(System) extern EGLDisplay eglGetCurrentDisplay ();
    extern(System) extern EGLSurface eglGetCurrentSurface (EGLint readdraw);
    extern(System) extern EGLDisplay eglGetDisplay (EGLNativeDisplayType display_id);
    extern(System) extern EGLint  eglGetError ();
    extern(System) extern __eglMustCastToProperFunctionPointerType  eglGetProcAddress (const char *procname);
    extern(System) extern EGLBoolean  eglInitialize (EGLDisplay dpy, EGLint *major, EGLint *minor);
    extern(System) extern EGLBoolean  eglMakeCurrent (EGLDisplay dpy, EGLSurface draw, EGLSurface read, EGLContext ctx);
    extern(System) extern EGLBoolean  eglQueryContext (EGLDisplay dpy, EGLContext ctx, EGLint attribute, EGLint *value);
    extern(System) extern const(char)* eglQueryString (EGLDisplay dpy, EGLint name);
    extern(System) extern EGLBoolean  eglQuerySurface (EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint *value);
    extern(System) extern EGLBoolean  eglSwapBuffers (EGLDisplay dpy, EGLSurface surface);
    extern(System) extern EGLBoolean  eglTerminate (EGLDisplay dpy);
    extern(System) extern EGLBoolean  eglWaitGL ();
    extern(System) extern EGLBoolean  eglWaitNative (EGLint engine);
}

// static if(!EGL_VERSION_1_1)
// {
    enum EGL_VERSION_1_1 =1;
    enum EGL_BACK_BUFFER                   =0x3084;
    enum EGL_BIND_TO_TEXTURE_RGB           =0x3039;
    enum EGL_BIND_TO_TEXTURE_RGBA          =0x303A;
    enum EGL_CONTEXT_LOST                  =0x300E;
    enum EGL_MIN_SWAP_INTERVAL             =0x303B;
    enum EGL_MAX_SWAP_INTERVAL             =0x303C;
    enum EGL_MIPMAP_TEXTURE                =0x3082;
    enum EGL_MIPMAP_LEVEL                  =0x3083;
    enum EGL_NO_TEXTURE                    =0x305C;
    enum EGL_TEXTURE_2D                    =0x305F;
    enum EGL_TEXTURE_FORMAT                =0x3080;
    enum EGL_TEXTURE_RGB                   =0x305D;
    enum EGL_TEXTURE_RGBA                  =0x305E;
    enum EGL_TEXTURE_TARGET                =0x3081;
    alias PFNEGLBINDTEXIMAGEPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint buffer);
    alias PFNEGLRELEASETEXIMAGEPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint buffer);
    alias PFNEGLSURFACEATTRIBPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint value);
    alias PFNEGLSWAPINTERVALPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLint interval);
    version(EGL_EGL_PROTOTYPES)
    {
        extern(System) extern EGLBoolean eglBindTexImage (EGLDisplay dpy, EGLSurface surface, EGLint buffer);
        extern(System) extern EGLBoolean eglReleaseTexImage (EGLDisplay dpy, EGLSurface surface, EGLint buffer);
        extern(System) extern EGLBoolean eglSurfaceAttrib (EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint value);
        extern(System) extern EGLBoolean eglSwapInterval (EGLDisplay dpy, EGLint interval);
    }
// }

// static if(!EGL_VERSION_1_2)
// {
    enum EGL_VERSION_1_2 =1;
    alias EGLenum = uint ;
    alias EGLClientBuffer = void *;
    enum EGL_ALPHA_FORMAT                  =0x3088;
    enum EGL_ALPHA_FORMAT_NONPRE           =0x308B;
    enum EGL_ALPHA_FORMAT_PRE              =0x308C;
    enum EGL_ALPHA_MASK_SIZE               =0x303E;
    enum EGL_BUFFER_PRESERVED              =0x3094;
    enum EGL_BUFFER_DESTROYED              =0x3095;
    enum EGL_CLIENT_APIS                   =0x308D;
    enum EGL_COLORSPACE                    =0x3087;
    enum EGL_COLORSPACE_sRGB               =0x3089;
    enum EGL_COLORSPACE_LINEAR             =0x308A;
    enum EGL_COLOR_BUFFER_TYPE             =0x303F;
    enum EGL_CONTEXT_CLIENT_TYPE           =0x3097;
    enum EGL_DISPLAY_SCALING               =10000;
    enum EGL_HORIZONTAL_RESOLUTION         =0x3090;
    enum EGL_LUMINANCE_BUFFER              =0x308F;
    enum EGL_LUMINANCE_SIZE                =0x303D;
    enum EGL_OPENGL_ES_BIT                 =0x0001;
    enum EGL_OPENVG_BIT                    =0x0002;
    enum EGL_OPENGL_ES_API                 =0x30A0;
    enum EGL_OPENVG_API                    =0x30A1;
    enum EGL_OPENVG_IMAGE                  =0x3096;
    enum EGL_PIXEL_ASPECT_RATIO            =0x3092;
    enum EGL_RENDERABLE_TYPE               =0x3040;
    enum EGL_RENDER_BUFFER                 =0x3086;
    enum EGL_RGB_BUFFER                    =0x308E;
    enum EGL_SINGLE_BUFFER                 =0x3085;
    enum EGL_SWAP_BEHAVIOR                 =0x3093;
    enum EGL_UNKNOWN                       =cast(EGLint)-1;
    enum EGL_VERTICAL_RESOLUTION           =0x3091;
    alias PFNEGLBINDAPIPROC = extern(System) EGLBoolean function(EGLenum api);
    alias PFNEGLQUERYAPIPROC = extern(System) EGLenum function();
    alias PFNEGLCREATEPBUFFERFROMCLIENTBUFFERPROC = extern(System) EGLSurface function(EGLDisplay dpy, EGLenum buftype, EGLClientBuffer buffer, EGLConfig config, const EGLint *attrib_list);
    alias PFNEGLRELEASETHREADPROC = extern(System) EGLBoolean function();
    alias PFNEGLWAITCLIENTPROC = extern(System) EGLBoolean function();
    version(EGL_EGL_PROTOTYPES)
    {
        extern(System) extern EGLBoolean eglBindAPI (EGLenum api);
        extern(System) extern EGLenum eglQueryAPI ();
        extern(System) extern EGLSurface eglCreatePbufferFromClientBuffer (EGLDisplay dpy, EGLenum buftype, EGLClientBuffer buffer, EGLConfig config, const EGLint *attrib_list);
        extern(System) extern EGLBoolean eglReleaseThread ();
        extern(System) extern EGLBoolean eglWaitClient ();
    }
// }

// static if(!EGL_VERSION_1_3)
// {
    enum EGL_VERSION_1_3 =1;
    enum EGL_CONFORMANT                    =0x3042;
    enum EGL_CONTEXT_CLIENT_VERSION        =0x3098;
    enum EGL_MATCH_NATIVE_PIXMAP           =0x3041;
    enum EGL_OPENGL_ES2_BIT                =0x0004;
    enum EGL_VG_ALPHA_FORMAT               =0x3088;
    enum EGL_VG_ALPHA_FORMAT_NONPRE        =0x308B;
    enum EGL_VG_ALPHA_FORMAT_PRE           =0x308C;
    enum EGL_VG_ALPHA_FORMAT_PRE_BIT       =0x0040;
    enum EGL_VG_COLORSPACE                 =0x3087;
    enum EGL_VG_COLORSPACE_sRGB            =0x3089;
    enum EGL_VG_COLORSPACE_LINEAR          =0x308A;
    enum EGL_VG_COLORSPACE_LINEAR_BIT      =0x0020;
// }

// static if(!EGL_VERSION_1_4)
// {
    enum EGL_VERSION_1_4 =1;
    enum EGL_DEFAULT_DISPLAY               =cast(EGLNativeDisplayType)0;
    enum EGL_MULTISAMPLE_RESOLVE_BOX_BIT   =0x0200;
    enum EGL_MULTISAMPLE_RESOLVE           =0x3099;
    enum EGL_MULTISAMPLE_RESOLVE_DEFAULT   =0x309A;
    enum EGL_MULTISAMPLE_RESOLVE_BOX       =0x309B;
    enum EGL_OPENGL_API                    =0x30A2;
    enum EGL_OPENGL_BIT                    =0x0008;
    enum EGL_SWAP_BEHAVIOR_PRESERVED_BIT   =0x0400;
    alias PFNEGLGETCURRENTCONTEXTPROC = extern(System) EGLContext function();
    version(EGL_EGL_PROTOTYPES)
    {
        extern(System) extern EGLContext eglGetCurrentContext();
    }
// }

// static if(!EGL_VERSION_1_5)
// {
    enum EGL_VERSION_1_5 =1;
    alias EGLSync = void *;
    alias EGLAttrib = ptrdiff_t;//intptr_t ;
    alias EGLTime = khronos_utime_nanoseconds_t ;
    alias EGLImage = void *;
    enum EGL_CONTEXT_MAJOR_VERSION         =0x3098;
    enum EGL_CONTEXT_MINOR_VERSION         =0x30FB;
    enum EGL_CONTEXT_OPENGL_PROFILE_MASK   =0x30FD;
    enum EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY =0x31BD;
    enum EGL_NO_RESET_NOTIFICATION         =0x31BE;
    enum EGL_LOSE_CONTEXT_ON_RESET         =0x31BF;
    enum EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT =0x00000001;
    enum EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT =0x00000002;
    enum EGL_CONTEXT_OPENGL_DEBUG          =0x31B0;
    enum EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE =0x31B1;
    enum EGL_CONTEXT_OPENGL_ROBUST_ACCESS  =0x31B2;
    enum EGL_OPENGL_ES3_BIT                =0x00000040;
    enum EGL_CL_EVENT_HANDLE               =0x309C;
    enum EGL_SYNC_CL_EVENT                 =0x30FE;
    enum EGL_SYNC_CL_EVENT_COMPLETE        =0x30FF;
    enum EGL_SYNC_PRIOR_COMMANDS_COMPLETE  =0x30F0;
    enum EGL_SYNC_TYPE                     =0x30F7;
    enum EGL_SYNC_STATUS                   =0x30F1;
    enum EGL_SYNC_CONDITION                =0x30F8;
    enum EGL_SIGNALED                      =0x30F2;
    enum EGL_UNSIGNALED                    =0x30F3;
    enum EGL_SYNC_FLUSH_COMMANDS_BIT       =0x0001;
    enum EGL_FOREVER                       =0xFFFFFFFFFFFFFFFFUL;
    enum EGL_TIMEOUT_EXPIRED               =0x30F5;
    enum EGL_CONDITION_SATISFIED           =0x30F6;
    enum EGL_NO_SYNC                       =cast(EGLSync)0;
    enum EGL_SYNC_FENCE                    =0x30F9;
    enum EGL_GL_COLORSPACE                 =0x309D;
    enum EGL_GL_COLORSPACE_SRGB            =0x3089;
    enum EGL_GL_COLORSPACE_LINEAR          =0x308A;
    enum EGL_GL_RENDERBUFFER               =0x30B9;
    enum EGL_GL_TEXTURE_2D                 =0x30B1;
    enum EGL_GL_TEXTURE_LEVEL              =0x30BC;
    enum EGL_GL_TEXTURE_3D                 =0x30B2;
    enum EGL_GL_TEXTURE_ZOFFSET            =0x30BD;
    enum EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_X =0x30B3;
    enum EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_X =0x30B4;
    enum EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Y =0x30B5;
    enum EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Y =0x30B6;
    enum EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Z =0x30B7;
    enum EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Z =0x30B8;
    enum EGL_IMAGE_PRESERVED               =0x30D2;
    enum EGL_NO_IMAGE                      =cast(EGLImage)0;
    alias PFNEGLCREATESYNCPROC = extern(System) EGLSync function(EGLDisplay dpy, EGLenum type, const EGLAttrib *attrib_list);
    alias PFNEGLDESTROYSYNCPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSync sync);
    alias PFNEGLCLIENTWAITSYNCPROC = extern(System) EGLint function(EGLDisplay dpy, EGLSync sync, EGLint flags, EGLTime timeout);
    alias PFNEGLGETSYNCATTRIBPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSync sync, EGLint attribute, EGLAttrib *value);
    alias PFNEGLCREATEIMAGEPROC = extern(System) EGLImage function(EGLDisplay dpy, EGLContext ctx, EGLenum target, EGLClientBuffer buffer, const EGLAttrib *attrib_list);
    alias PFNEGLDESTROYIMAGEPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLImage image);
    alias PFNEGLGETPLATFORMDISPLAYPROC = extern(System) EGLDisplay function(EGLenum platform, void *native_display, const EGLAttrib *attrib_list);
    alias PFNEGLCREATEPLATFORMWINDOWSURFACEPROC = extern(System) EGLSurface function(EGLDisplay dpy, EGLConfig config, void *native_window, const EGLAttrib *attrib_list);
    alias PFNEGLCREATEPLATFORMPIXMAPSURFACEPROC = extern(System) EGLSurface function(EGLDisplay dpy, EGLConfig config, void *native_pixmap, const EGLAttrib *attrib_list);
    alias PFNEGLWAITSYNCPROC = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSync sync, EGLint flags);
    version(EGL_EGL_PROTOTYPES)
    {
        extern(System) extern EGLSync eglCreateSync (EGLDisplay dpy, EGLenum type, const EGLAttrib *attrib_list);
        extern(System) extern EGLBoolean eglDestroySync (EGLDisplay dpy, EGLSync sync);
        extern(System) extern EGLint eglClientWaitSync (EGLDisplay dpy, EGLSync sync, EGLint flags, EGLTime timeout);
        extern(System) extern EGLBoolean eglGetSyncAttrib (EGLDisplay dpy, EGLSync sync, EGLint attribute, EGLAttrib *value);
        extern(System) extern EGLImage eglCreateImage (EGLDisplay dpy, EGLContext ctx, EGLenum target, EGLClientBuffer buffer, const EGLAttrib *attrib_list);
        extern(System) extern EGLBoolean eglDestroyImage (EGLDisplay dpy, EGLImage image);
        extern(System) extern EGLDisplay eglGetPlatformDisplay (EGLenum platform, void *native_display, const EGLAttrib *attrib_list);
        extern(System) extern EGLSurface eglCreatePlatformWindowSurface (EGLDisplay dpy, EGLConfig config, void *native_window, const EGLAttrib *attrib_list);
        extern(System) extern EGLSurface eglCreatePlatformPixmapSurface (EGLDisplay dpy, EGLConfig config, void *native_pixmap, const EGLAttrib *attrib_list);
        extern(System) extern EGLBoolean eglWaitSync (EGLDisplay dpy, EGLSync sync, EGLint flags);
    }
// }
