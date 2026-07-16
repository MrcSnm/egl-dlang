module eglmesaext;

/**************************************************************************
 *
 * Copyright 2008 VMware, Inc.
 * All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sub license, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice (including the
 * next paragraph) shall be included in all copies or substantial portions
 * of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 **************************************************************************/


extern(C):
public import eglplatform;
public import egl;
public import eglext;

//#ifndef EGL_WL_bind_wayland_display
enum EGL_WL_bind_wayland_display = 1;

enum EGL_WAYLAND_BUFFER_WL  = 0x31D5; /* eglCreateImageKHR target */
enum EGL_WAYLAND_PLANE_WL   = 0x31D6; /* eglCreateImageKHR target */

enum EGL_WAYLAND_Y_INVERTED_WL  = 0x31DB; /* eglQueryWaylandBufferWL attribute */

enum EGL_TEXTURE_Y_U_V_WL   = 0x31D7;
enum EGL_TEXTURE_Y_UV_WL    = 0x31D8;
enum EGL_TEXTURE_Y_XUXV_WL  = 0x31D9;
enum EGL_TEXTURE_EXTERNAL_WL    = 0x31DA;

struct wl_display;
struct wl_resource;

version(EGLExt) 
{
    extern(System)
    {
        extern EGLBoolean eglBindWaylandDisplayWL(EGLDisplay dpy, wl_display *display);
        extern EGLBoolean eglUnbindWaylandDisplayWL(EGLDisplay dpy, wl_display *display);
        extern EGLBoolean eglQueryWaylandBufferWL(EGLDisplay dpy, wl_resource *buffer, EGLint attribute, EGLint *value);
        alias PFNEGLBINDWAYLANDDISPLAYWL = EGLBoolean function(EGLDisplay dpy, wl_display *display);
        alias PFNEGLUNBINDWAYLANDDISPLAYWL = EGLBoolean function(EGLDisplay dpy, wl_display *display);
        alias PFNEGLQUERYWAYLANDBUFFERWL = EGLBoolean function(EGLDisplay dpy, wl_resource *buffer, EGLint attribute, EGLint *value);
    }
}


//#ifndef EGL_WL_create_wayland_buffer_from_image
enum  EGL_WL_create_wayland_buffer_from_image = 1;

struct wl_buffer;
version(EGL_EGLEXT_PROTOTYPES)
{
    extern extern(System) wl_buffer* eglCreateWaylandBufferFromImageWL(EGLDisplay dpy, EGLImageKHR image);
    alias PFNEGLCREATEWAYLANDBUFFERFROMIMAGEWL = extern(System) wl_buffer* function(EGLDisplay dpy, EGLImageKHR image);
}

/* remnant of EGL_NOK_swap_region kept for compatibility because of a non-standard type name */
alias PFNEGLSWAPBUFFERSREGIONNOK = extern(System) EGLBoolean function(EGLDisplay dpy, EGLSurface surface, EGLint numRects, const EGLint* rects);

enum EGL_MESA_configless_context = 1;
enum EGL_NO_CONFIG_MESA = cast(EGLConfig)0;

version(EGL_MESA_drm_image_formats)
{
    enum EGL_MESA_drm_image_formats = 1;
    enum EGL_DRM_BUFFER_FORMAT_ARGB2101010_MESA  = 0x3290;
    enum EGL_DRM_BUFFER_FORMAT_ARGB1555_MESA     = 0x3291;
    enum EGL_DRM_BUFFER_FORMAT_RGB565_MESA       = 0x3292;
}