module eglplatform;

/*
** Copyright (c) 2007-2016 The Khronos Group Inc.
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

/* Platform-specific types and definitions for egl.h
 * $Revision: 30994 $ on $Date: 2015-04-30 13:36:48 -0700 (Thu, 30 Apr 2015) $
 *
 * Adopters may modify khrplatform.h and this file to suit their platform.
 * You are encouraged to submit all modifications to the Khronos group so that
 * they can be included in future versions of this file.  Please submit changes
 * by sending them to the public Khronos Bugzilla (http://khronos.org/bugzilla)
 * by filing a bug against product "EGL" component "Registry".
 */


/* Macros used in EGL function prototype declarations.
 *
 * EGL functions should be prototyped as:
 *
 * EGLAPI return-type EGLAPIENTRY eglFunction(arguments);
 * typedef return-type (EXPAPIENTRYP PFNEGLFUNCTIONPROC) (arguments);
 *
 * KHRONOS_APICALL and KHRONOS_APIENTRY are defined in KHR/khrplatform.h
 */


// #ifndef EGLAPIENTRY
// #define EGLAPIENTRY  KHRONOS_APIENTRY
// #endif
// #define EGLAPIENTRYP EGLAPIENTRY*

// #if defined(MESA_EGL_NO_X11_HEADERS) && !defined(EGL_NO_X11)
// #warning "`MESA_EGL_NO_X11_HEADERS` is deprecated, and doesn't work with the unmodified Khronos header"
// #warning "Please use `EGL_NO_X11` instead, as `MESA_EGL_NO_X11_HEADERS` will be removed soon"
// #define EGL_NO_X11
// #endif

/* The types NativeDisplayType, NativeWindowType, and NativePixmapType
 * are aliases of window-system-dependent types, such as X Display * or
 * Windows Device Context. They must be defined in platform-specific
 * code below. The EGL-prefixed versions of Native*Type are the same
 * types, renamed in EGL 1.3 so all types in the API start with "EGL".
 *
 * Khronos STRONGLY RECOMMENDS that you use the default definitions
 * provided below, since these changes affect both binary and source
 * portability of applications using EGL running on different EGL
 * implementations.
 */

version(NintendoSwitch)
{
    alias EGLNativeDisplayType = void*;
    alias EGLNativePixmapType = ubyte*; //khronos_uint8_t*;
    alias EGLNativeWindowType = void*;
}
else version(Windows)
{
    public import core.sys.windows.windows;
    alias EGLNativeDisplayType = HDC;
    alias EGLNativePixmapType = HBITMA;
    alias EGLNativeWindowType = HWND;
}
else version(Emscripten)
{
    alias EGLNativeDisplayType = int;
    alias EGLNativePixmapType = int;
    alias EGLNativeWindowType = int;
}
else version(Symbian)
{
    alias EGLNativeDisplayType = int   ;
    alias EGLNativePixmapType = void *;
    alias EGLNativeWindowType = void *;
}
else version(Wayland)
{
    struct wl_display;
    struct wl_egl_pixmap;
    struct wl_egl_window;

    alias EGLNativeDisplayType = wl_display*;
    alias EGLNativePixmapType = wl_egl_pixmap*;
    alias EGLNativeWindowType = wl_egl_window*;

}
else version(GBM) //#elif defined(__GBM__)
{
    struct gbm_device;
    struct gbm_bo;

    alias EGLNativeDisplayType  = gbm_device*;
    alias EGLNativePixmapType   = gbm_bo*;
    alias EGLNativeWindowType   = void*;
}
else version(Android)
{

    struct ANativeWindow;
    struct egl_native_pixmap_t;

    alias EGLNativeDisplayType = void*;
    alias EGLNativePixmapType = egl_native_pixmap_t*;
    alias EGLNativeWindowType = ANativeWindow*;

}
else version(USE_OZONE)
{
    alias EGLNativeDisplayType = intptr_t;
    alias EGLNativePixmapType = intptr_t;
    alias EGLNativeWindowType = intptr_t;
}
else version(EGL_NO_X11)
{
    alias EGLNativeDisplayType= void*;
    alias EGLNativePixmapType = khronos_uintptr_t;
    alias EGLNativeWindowType = khronos_uintptr_t;
}
else version(USE_X11)
{

    // /* X11 (tentative)  */
    // #include <X11/Xlib.h>
    // #include <X11/Xutil.h>

    // typedef Display *EGLNativeDisplayType;
    // alias EGLNativePixmapType = Pixmap;
    // alias EGLNativeWindowType = Window;
}
else version(OSX)
{
    alias EGLNativeDisplayType = int;
    alias EGLNativePixmapType = void*;
    alias EGLNativeWindowType = void*;

}
else version(Haiku)
{
    static assert(false, "Implement that.");
    // #include <kernel/image.h>
    // typedef void              *EGLNativeDisplayType;
    // alias EGLNativePixmapType = khronos_uintptr_t;
    // alias EGLNativeWindowType = khronos_uintptr_t;

}
else static assert(false, "Platform not recognized");

/* EGL 1.2 types, renamed for consistency in EGL 1.3 */
alias NativeDisplayType = EGLNativeDisplayType;
alias NativePixmapType = EGLNativePixmapType;
alias NativeWindowType = EGLNativeWindowType;


/* Define EGLint. This must be a signed integral type large enough to contain
 * all legal attribute names and values passed into and out of EGL, whether
 * their type is boolean, bitmask, enumerant (symbolic constant), integer,
 * handle, or other.  While in general a 32-bit integer will suffice, if
 * handles are 64 bit types, then EGLint should be defined as a signed 64-bit
 * integer type.
 */
alias EGLint = int; //khronos_int32_t;