// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/opengl/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// gdi32.dll
// -----------------------------------------------------------------------
final _gdi32 = DynamicLibrary.open('gdi32.dll');

int ChoosePixelFormat(
  int hdc,
  Pointer<PIXELFORMATDESCRIPTOR> ppfd,
) =>
    _ChoosePixelFormat(
      hdc,
      ppfd,
    );

late final _ChoosePixelFormat = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<PIXELFORMATDESCRIPTOR> ppfd,
),
    int Function(
  int hdc,
  Pointer<PIXELFORMATDESCRIPTOR> ppfd,
)>('ChoosePixelFormat');

int DescribePixelFormat(
  int hdc,
  int iPixelFormat,
  int nBytes,
  Pointer<PIXELFORMATDESCRIPTOR> ppfd,
) =>
    _DescribePixelFormat(
      hdc,
      iPixelFormat,
      nBytes,
      ppfd,
    );

late final _DescribePixelFormat = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Int32 iPixelFormat,
  Uint32 nBytes,
  Pointer<PIXELFORMATDESCRIPTOR> ppfd,
),
    int Function(
  int hdc,
  int iPixelFormat,
  int nBytes,
  Pointer<PIXELFORMATDESCRIPTOR> ppfd,
)>('DescribePixelFormat');

int GetEnhMetaFilePixelFormat(
  int hemf,
  int cbBuffer,
  Pointer<PIXELFORMATDESCRIPTOR> ppfd,
) =>
    _GetEnhMetaFilePixelFormat(
      hemf,
      cbBuffer,
      ppfd,
    );

late final _GetEnhMetaFilePixelFormat = _gdi32.lookupFunction<
    Uint32 Function(
  IntPtr hemf,
  Uint32 cbBuffer,
  Pointer<PIXELFORMATDESCRIPTOR> ppfd,
),
    int Function(
  int hemf,
  int cbBuffer,
  Pointer<PIXELFORMATDESCRIPTOR> ppfd,
)>('GetEnhMetaFilePixelFormat');

int GetPixelFormat(
  int hdc,
) =>
    _GetPixelFormat(
      hdc,
    );

late final _GetPixelFormat = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
),
    int Function(
  int hdc,
)>('GetPixelFormat');

int SetPixelFormat(
  int hdc,
  int format,
  Pointer<PIXELFORMATDESCRIPTOR> ppfd,
) =>
    _SetPixelFormat(
      hdc,
      format,
      ppfd,
    );

late final _SetPixelFormat = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Int32 format,
  Pointer<PIXELFORMATDESCRIPTOR> ppfd,
),
    int Function(
  int hdc,
  int format,
  Pointer<PIXELFORMATDESCRIPTOR> ppfd,
)>('SetPixelFormat');

int SwapBuffers(
  int param0,
) =>
    _SwapBuffers(
      param0,
    );

late final _SwapBuffers = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('SwapBuffers');

// -----------------------------------------------------------------------
// opengl32.dll
// -----------------------------------------------------------------------
final _opengl32 = DynamicLibrary.open('opengl32.dll');

void glAccum(
  int op,
  double value,
) =>
    _glAccum(
      op,
      value,
    );

late final _glAccum = _opengl32.lookupFunction<
    Void Function(
  Uint32 op,
  Float value,
),
    void Function(
  int op,
  double value,
)>('glAccum');

void glAlphaFunc(
  int func,
  double ref,
) =>
    _glAlphaFunc(
      func,
      ref,
    );

late final _glAlphaFunc = _opengl32.lookupFunction<
    Void Function(
  Uint32 func,
  Float ref,
),
    void Function(
  int func,
  double ref,
)>('glAlphaFunc');

int glAreTexturesResident(
  int n,
  Pointer<Uint32> textures,
  Pointer<Uint8> residences,
) =>
    _glAreTexturesResident(
      n,
      textures,
      residences,
    );

late final _glAreTexturesResident = _opengl32.lookupFunction<
    Uint8 Function(
  Int32 n,
  Pointer<Uint32> textures,
  Pointer<Uint8> residences,
),
    int Function(
  int n,
  Pointer<Uint32> textures,
  Pointer<Uint8> residences,
)>('glAreTexturesResident');

void glArrayElement(
  int i,
) =>
    _glArrayElement(
      i,
    );

late final _glArrayElement = _opengl32.lookupFunction<
    Void Function(
  Int32 i,
),
    void Function(
  int i,
)>('glArrayElement');

void glBegin(
  int mode,
) =>
    _glBegin(
      mode,
    );

late final _glBegin = _opengl32.lookupFunction<
    Void Function(
  Uint32 mode,
),
    void Function(
  int mode,
)>('glBegin');

void glBindTexture(
  int target,
  int texture,
) =>
    _glBindTexture(
      target,
      texture,
    );

late final _glBindTexture = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 texture,
),
    void Function(
  int target,
  int texture,
)>('glBindTexture');

void glBitmap(
  int width,
  int height,
  double xorig,
  double yorig,
  double xmove,
  double ymove,
  Pointer<Uint8> bitmap,
) =>
    _glBitmap(
      width,
      height,
      xorig,
      yorig,
      xmove,
      ymove,
      bitmap,
    );

late final _glBitmap = _opengl32.lookupFunction<
    Void Function(
  Int32 width,
  Int32 height,
  Float xorig,
  Float yorig,
  Float xmove,
  Float ymove,
  Pointer<Uint8> bitmap,
),
    void Function(
  int width,
  int height,
  double xorig,
  double yorig,
  double xmove,
  double ymove,
  Pointer<Uint8> bitmap,
)>('glBitmap');

void glBlendFunc(
  int sfactor,
  int dfactor,
) =>
    _glBlendFunc(
      sfactor,
      dfactor,
    );

late final _glBlendFunc = _opengl32.lookupFunction<
    Void Function(
  Uint32 sfactor,
  Uint32 dfactor,
),
    void Function(
  int sfactor,
  int dfactor,
)>('glBlendFunc');

void glCallList(
  int list,
) =>
    _glCallList(
      list,
    );

late final _glCallList = _opengl32.lookupFunction<
    Void Function(
  Uint32 list,
),
    void Function(
  int list,
)>('glCallList');

void glCallLists(
  int n,
  int type,
  Pointer lists,
) =>
    _glCallLists(
      n,
      type,
      lists,
    );

late final _glCallLists = _opengl32.lookupFunction<
    Void Function(
  Int32 n,
  Uint32 type,
  Pointer lists,
),
    void Function(
  int n,
  int type,
  Pointer lists,
)>('glCallLists');

void glClear(
  int mask,
) =>
    _glClear(
      mask,
    );

late final _glClear = _opengl32.lookupFunction<
    Void Function(
  Uint32 mask,
),
    void Function(
  int mask,
)>('glClear');

void glClearAccum(
  double red,
  double green,
  double blue,
  double alpha,
) =>
    _glClearAccum(
      red,
      green,
      blue,
      alpha,
    );

late final _glClearAccum = _opengl32.lookupFunction<
    Void Function(
  Float red,
  Float green,
  Float blue,
  Float alpha,
),
    void Function(
  double red,
  double green,
  double blue,
  double alpha,
)>('glClearAccum');

void glClearColor(
  double red,
  double green,
  double blue,
  double alpha,
) =>
    _glClearColor(
      red,
      green,
      blue,
      alpha,
    );

late final _glClearColor = _opengl32.lookupFunction<
    Void Function(
  Float red,
  Float green,
  Float blue,
  Float alpha,
),
    void Function(
  double red,
  double green,
  double blue,
  double alpha,
)>('glClearColor');

void glClearDepth(
  double depth,
) =>
    _glClearDepth(
      depth,
    );

late final _glClearDepth = _opengl32.lookupFunction<
    Void Function(
  Double depth,
),
    void Function(
  double depth,
)>('glClearDepth');

void glClearIndex(
  double c,
) =>
    _glClearIndex(
      c,
    );

late final _glClearIndex = _opengl32.lookupFunction<
    Void Function(
  Float c,
),
    void Function(
  double c,
)>('glClearIndex');

void glClearStencil(
  int s,
) =>
    _glClearStencil(
      s,
    );

late final _glClearStencil = _opengl32.lookupFunction<
    Void Function(
  Int32 s,
),
    void Function(
  int s,
)>('glClearStencil');

void glClipPlane(
  int plane,
  Pointer<Double> equation,
) =>
    _glClipPlane(
      plane,
      equation,
    );

late final _glClipPlane = _opengl32.lookupFunction<
    Void Function(
  Uint32 plane,
  Pointer<Double> equation,
),
    void Function(
  int plane,
  Pointer<Double> equation,
)>('glClipPlane');

void glColor3b(
  int red,
  int green,
  int blue,
) =>
    _glColor3b(
      red,
      green,
      blue,
    );

late final _glColor3b = _opengl32.lookupFunction<
    Void Function(
  Int8 red,
  Int8 green,
  Int8 blue,
),
    void Function(
  int red,
  int green,
  int blue,
)>('glColor3b');

void glColor3bv(
  Pointer<Int8> v,
) =>
    _glColor3bv(
      v,
    );

late final _glColor3bv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int8> v,
),
    void Function(
  Pointer<Int8> v,
)>('glColor3bv');

void glColor3d(
  double red,
  double green,
  double blue,
) =>
    _glColor3d(
      red,
      green,
      blue,
    );

late final _glColor3d = _opengl32.lookupFunction<
    Void Function(
  Double red,
  Double green,
  Double blue,
),
    void Function(
  double red,
  double green,
  double blue,
)>('glColor3d');

void glColor3dv(
  Pointer<Double> v,
) =>
    _glColor3dv(
      v,
    );

late final _glColor3dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v,
),
    void Function(
  Pointer<Double> v,
)>('glColor3dv');

void glColor3f(
  double red,
  double green,
  double blue,
) =>
    _glColor3f(
      red,
      green,
      blue,
    );

late final _glColor3f = _opengl32.lookupFunction<
    Void Function(
  Float red,
  Float green,
  Float blue,
),
    void Function(
  double red,
  double green,
  double blue,
)>('glColor3f');

void glColor3fv(
  Pointer<Float> v,
) =>
    _glColor3fv(
      v,
    );

late final _glColor3fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v,
),
    void Function(
  Pointer<Float> v,
)>('glColor3fv');

void glColor3i(
  int red,
  int green,
  int blue,
) =>
    _glColor3i(
      red,
      green,
      blue,
    );

late final _glColor3i = _opengl32.lookupFunction<
    Void Function(
  Int32 red,
  Int32 green,
  Int32 blue,
),
    void Function(
  int red,
  int green,
  int blue,
)>('glColor3i');

void glColor3iv(
  Pointer<Int32> v,
) =>
    _glColor3iv(
      v,
    );

late final _glColor3iv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v,
),
    void Function(
  Pointer<Int32> v,
)>('glColor3iv');

void glColor3s(
  int red,
  int green,
  int blue,
) =>
    _glColor3s(
      red,
      green,
      blue,
    );

late final _glColor3s = _opengl32.lookupFunction<
    Void Function(
  Int16 red,
  Int16 green,
  Int16 blue,
),
    void Function(
  int red,
  int green,
  int blue,
)>('glColor3s');

void glColor3sv(
  Pointer<Int16> v,
) =>
    _glColor3sv(
      v,
    );

late final _glColor3sv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v,
),
    void Function(
  Pointer<Int16> v,
)>('glColor3sv');

void glColor3ub(
  int red,
  int green,
  int blue,
) =>
    _glColor3ub(
      red,
      green,
      blue,
    );

late final _glColor3ub = _opengl32.lookupFunction<
    Void Function(
  Uint8 red,
  Uint8 green,
  Uint8 blue,
),
    void Function(
  int red,
  int green,
  int blue,
)>('glColor3ub');

void glColor3ubv(
  Pointer<Uint8> v,
) =>
    _glColor3ubv(
      v,
    );

late final _glColor3ubv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Uint8> v,
),
    void Function(
  Pointer<Uint8> v,
)>('glColor3ubv');

void glColor3ui(
  int red,
  int green,
  int blue,
) =>
    _glColor3ui(
      red,
      green,
      blue,
    );

late final _glColor3ui = _opengl32.lookupFunction<
    Void Function(
  Uint32 red,
  Uint32 green,
  Uint32 blue,
),
    void Function(
  int red,
  int green,
  int blue,
)>('glColor3ui');

void glColor3uiv(
  Pointer<Uint32> v,
) =>
    _glColor3uiv(
      v,
    );

late final _glColor3uiv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Uint32> v,
),
    void Function(
  Pointer<Uint32> v,
)>('glColor3uiv');

void glColor3us(
  int red,
  int green,
  int blue,
) =>
    _glColor3us(
      red,
      green,
      blue,
    );

late final _glColor3us = _opengl32.lookupFunction<
    Void Function(
  Uint16 red,
  Uint16 green,
  Uint16 blue,
),
    void Function(
  int red,
  int green,
  int blue,
)>('glColor3us');

void glColor3usv(
  Pointer<Uint16> v,
) =>
    _glColor3usv(
      v,
    );

late final _glColor3usv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Uint16> v,
),
    void Function(
  Pointer<Uint16> v,
)>('glColor3usv');

void glColor4b(
  int red,
  int green,
  int blue,
  int alpha,
) =>
    _glColor4b(
      red,
      green,
      blue,
      alpha,
    );

late final _glColor4b = _opengl32.lookupFunction<
    Void Function(
  Int8 red,
  Int8 green,
  Int8 blue,
  Int8 alpha,
),
    void Function(
  int red,
  int green,
  int blue,
  int alpha,
)>('glColor4b');

void glColor4bv(
  Pointer<Int8> v,
) =>
    _glColor4bv(
      v,
    );

late final _glColor4bv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int8> v,
),
    void Function(
  Pointer<Int8> v,
)>('glColor4bv');

void glColor4d(
  double red,
  double green,
  double blue,
  double alpha,
) =>
    _glColor4d(
      red,
      green,
      blue,
      alpha,
    );

late final _glColor4d = _opengl32.lookupFunction<
    Void Function(
  Double red,
  Double green,
  Double blue,
  Double alpha,
),
    void Function(
  double red,
  double green,
  double blue,
  double alpha,
)>('glColor4d');

void glColor4dv(
  Pointer<Double> v,
) =>
    _glColor4dv(
      v,
    );

late final _glColor4dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v,
),
    void Function(
  Pointer<Double> v,
)>('glColor4dv');

void glColor4f(
  double red,
  double green,
  double blue,
  double alpha,
) =>
    _glColor4f(
      red,
      green,
      blue,
      alpha,
    );

late final _glColor4f = _opengl32.lookupFunction<
    Void Function(
  Float red,
  Float green,
  Float blue,
  Float alpha,
),
    void Function(
  double red,
  double green,
  double blue,
  double alpha,
)>('glColor4f');

void glColor4fv(
  Pointer<Float> v,
) =>
    _glColor4fv(
      v,
    );

late final _glColor4fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v,
),
    void Function(
  Pointer<Float> v,
)>('glColor4fv');

void glColor4i(
  int red,
  int green,
  int blue,
  int alpha,
) =>
    _glColor4i(
      red,
      green,
      blue,
      alpha,
    );

late final _glColor4i = _opengl32.lookupFunction<
    Void Function(
  Int32 red,
  Int32 green,
  Int32 blue,
  Int32 alpha,
),
    void Function(
  int red,
  int green,
  int blue,
  int alpha,
)>('glColor4i');

void glColor4iv(
  Pointer<Int32> v,
) =>
    _glColor4iv(
      v,
    );

late final _glColor4iv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v,
),
    void Function(
  Pointer<Int32> v,
)>('glColor4iv');

void glColor4s(
  int red,
  int green,
  int blue,
  int alpha,
) =>
    _glColor4s(
      red,
      green,
      blue,
      alpha,
    );

late final _glColor4s = _opengl32.lookupFunction<
    Void Function(
  Int16 red,
  Int16 green,
  Int16 blue,
  Int16 alpha,
),
    void Function(
  int red,
  int green,
  int blue,
  int alpha,
)>('glColor4s');

void glColor4sv(
  Pointer<Int16> v,
) =>
    _glColor4sv(
      v,
    );

late final _glColor4sv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v,
),
    void Function(
  Pointer<Int16> v,
)>('glColor4sv');

void glColor4ub(
  int red,
  int green,
  int blue,
  int alpha,
) =>
    _glColor4ub(
      red,
      green,
      blue,
      alpha,
    );

late final _glColor4ub = _opengl32.lookupFunction<
    Void Function(
  Uint8 red,
  Uint8 green,
  Uint8 blue,
  Uint8 alpha,
),
    void Function(
  int red,
  int green,
  int blue,
  int alpha,
)>('glColor4ub');

void glColor4ubv(
  Pointer<Uint8> v,
) =>
    _glColor4ubv(
      v,
    );

late final _glColor4ubv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Uint8> v,
),
    void Function(
  Pointer<Uint8> v,
)>('glColor4ubv');

void glColor4ui(
  int red,
  int green,
  int blue,
  int alpha,
) =>
    _glColor4ui(
      red,
      green,
      blue,
      alpha,
    );

late final _glColor4ui = _opengl32.lookupFunction<
    Void Function(
  Uint32 red,
  Uint32 green,
  Uint32 blue,
  Uint32 alpha,
),
    void Function(
  int red,
  int green,
  int blue,
  int alpha,
)>('glColor4ui');

void glColor4uiv(
  Pointer<Uint32> v,
) =>
    _glColor4uiv(
      v,
    );

late final _glColor4uiv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Uint32> v,
),
    void Function(
  Pointer<Uint32> v,
)>('glColor4uiv');

void glColor4us(
  int red,
  int green,
  int blue,
  int alpha,
) =>
    _glColor4us(
      red,
      green,
      blue,
      alpha,
    );

late final _glColor4us = _opengl32.lookupFunction<
    Void Function(
  Uint16 red,
  Uint16 green,
  Uint16 blue,
  Uint16 alpha,
),
    void Function(
  int red,
  int green,
  int blue,
  int alpha,
)>('glColor4us');

void glColor4usv(
  Pointer<Uint16> v,
) =>
    _glColor4usv(
      v,
    );

late final _glColor4usv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Uint16> v,
),
    void Function(
  Pointer<Uint16> v,
)>('glColor4usv');

void glColorMask(
  int red,
  int green,
  int blue,
  int alpha,
) =>
    _glColorMask(
      red,
      green,
      blue,
      alpha,
    );

late final _glColorMask = _opengl32.lookupFunction<
    Void Function(
  Uint8 red,
  Uint8 green,
  Uint8 blue,
  Uint8 alpha,
),
    void Function(
  int red,
  int green,
  int blue,
  int alpha,
)>('glColorMask');

void glColorMaterial(
  int face,
  int mode,
) =>
    _glColorMaterial(
      face,
      mode,
    );

late final _glColorMaterial = _opengl32.lookupFunction<
    Void Function(
  Uint32 face,
  Uint32 mode,
),
    void Function(
  int face,
  int mode,
)>('glColorMaterial');

void glColorPointer(
  int size,
  int type,
  int stride,
  Pointer pointer,
) =>
    _glColorPointer(
      size,
      type,
      stride,
      pointer,
    );

late final _glColorPointer = _opengl32.lookupFunction<
    Void Function(
  Int32 size,
  Uint32 type,
  Int32 stride,
  Pointer pointer,
),
    void Function(
  int size,
  int type,
  int stride,
  Pointer pointer,
)>('glColorPointer');

void glCopyPixels(
  int x,
  int y,
  int width,
  int height,
  int type,
) =>
    _glCopyPixels(
      x,
      y,
      width,
      height,
      type,
    );

late final _glCopyPixels = _opengl32.lookupFunction<
    Void Function(
  Int32 x,
  Int32 y,
  Int32 width,
  Int32 height,
  Uint32 type,
),
    void Function(
  int x,
  int y,
  int width,
  int height,
  int type,
)>('glCopyPixels');

void glCopyTexImage1D(
  int target,
  int level,
  int internalFormat,
  int x,
  int y,
  int width,
  int border,
) =>
    _glCopyTexImage1D(
      target,
      level,
      internalFormat,
      x,
      y,
      width,
      border,
    );

late final _glCopyTexImage1D = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Int32 level,
  Uint32 internalFormat,
  Int32 x,
  Int32 y,
  Int32 width,
  Int32 border,
),
    void Function(
  int target,
  int level,
  int internalFormat,
  int x,
  int y,
  int width,
  int border,
)>('glCopyTexImage1D');

void glCopyTexImage2D(
  int target,
  int level,
  int internalFormat,
  int x,
  int y,
  int width,
  int height,
  int border,
) =>
    _glCopyTexImage2D(
      target,
      level,
      internalFormat,
      x,
      y,
      width,
      height,
      border,
    );

late final _glCopyTexImage2D = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Int32 level,
  Uint32 internalFormat,
  Int32 x,
  Int32 y,
  Int32 width,
  Int32 height,
  Int32 border,
),
    void Function(
  int target,
  int level,
  int internalFormat,
  int x,
  int y,
  int width,
  int height,
  int border,
)>('glCopyTexImage2D');

void glCopyTexSubImage1D(
  int target,
  int level,
  int xoffset,
  int x,
  int y,
  int width,
) =>
    _glCopyTexSubImage1D(
      target,
      level,
      xoffset,
      x,
      y,
      width,
    );

late final _glCopyTexSubImage1D = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Int32 level,
  Int32 xoffset,
  Int32 x,
  Int32 y,
  Int32 width,
),
    void Function(
  int target,
  int level,
  int xoffset,
  int x,
  int y,
  int width,
)>('glCopyTexSubImage1D');

void glCopyTexSubImage2D(
  int target,
  int level,
  int xoffset,
  int yoffset,
  int x,
  int y,
  int width,
  int height,
) =>
    _glCopyTexSubImage2D(
      target,
      level,
      xoffset,
      yoffset,
      x,
      y,
      width,
      height,
    );

late final _glCopyTexSubImage2D = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Int32 level,
  Int32 xoffset,
  Int32 yoffset,
  Int32 x,
  Int32 y,
  Int32 width,
  Int32 height,
),
    void Function(
  int target,
  int level,
  int xoffset,
  int yoffset,
  int x,
  int y,
  int width,
  int height,
)>('glCopyTexSubImage2D');

void glCullFace(
  int mode,
) =>
    _glCullFace(
      mode,
    );

late final _glCullFace = _opengl32.lookupFunction<
    Void Function(
  Uint32 mode,
),
    void Function(
  int mode,
)>('glCullFace');

void glDeleteLists(
  int list,
  int range,
) =>
    _glDeleteLists(
      list,
      range,
    );

late final _glDeleteLists = _opengl32.lookupFunction<
    Void Function(
  Uint32 list,
  Int32 range,
),
    void Function(
  int list,
  int range,
)>('glDeleteLists');

void glDeleteTextures(
  int n,
  Pointer<Uint32> textures,
) =>
    _glDeleteTextures(
      n,
      textures,
    );

late final _glDeleteTextures = _opengl32.lookupFunction<
    Void Function(
  Int32 n,
  Pointer<Uint32> textures,
),
    void Function(
  int n,
  Pointer<Uint32> textures,
)>('glDeleteTextures');

void glDepthFunc(
  int func,
) =>
    _glDepthFunc(
      func,
    );

late final _glDepthFunc = _opengl32.lookupFunction<
    Void Function(
  Uint32 func,
),
    void Function(
  int func,
)>('glDepthFunc');

void glDepthMask(
  int flag,
) =>
    _glDepthMask(
      flag,
    );

late final _glDepthMask = _opengl32.lookupFunction<
    Void Function(
  Uint8 flag,
),
    void Function(
  int flag,
)>('glDepthMask');

void glDepthRange(
  double zNear,
  double zFar,
) =>
    _glDepthRange(
      zNear,
      zFar,
    );

late final _glDepthRange = _opengl32.lookupFunction<
    Void Function(
  Double zNear,
  Double zFar,
),
    void Function(
  double zNear,
  double zFar,
)>('glDepthRange');

void glDisable(
  int cap,
) =>
    _glDisable(
      cap,
    );

late final _glDisable = _opengl32.lookupFunction<
    Void Function(
  Uint32 cap,
),
    void Function(
  int cap,
)>('glDisable');

void glDisableClientState(
  int array,
) =>
    _glDisableClientState(
      array,
    );

late final _glDisableClientState = _opengl32.lookupFunction<
    Void Function(
  Uint32 array,
),
    void Function(
  int array,
)>('glDisableClientState');

void glDrawArrays(
  int mode,
  int first,
  int count,
) =>
    _glDrawArrays(
      mode,
      first,
      count,
    );

late final _glDrawArrays = _opengl32.lookupFunction<
    Void Function(
  Uint32 mode,
  Int32 first,
  Int32 count,
),
    void Function(
  int mode,
  int first,
  int count,
)>('glDrawArrays');

void glDrawBuffer(
  int mode,
) =>
    _glDrawBuffer(
      mode,
    );

late final _glDrawBuffer = _opengl32.lookupFunction<
    Void Function(
  Uint32 mode,
),
    void Function(
  int mode,
)>('glDrawBuffer');

void glDrawElements(
  int mode,
  int count,
  int type,
  Pointer indices,
) =>
    _glDrawElements(
      mode,
      count,
      type,
      indices,
    );

late final _glDrawElements = _opengl32.lookupFunction<
    Void Function(
  Uint32 mode,
  Int32 count,
  Uint32 type,
  Pointer indices,
),
    void Function(
  int mode,
  int count,
  int type,
  Pointer indices,
)>('glDrawElements');

void glDrawPixels(
  int width,
  int height,
  int format,
  int type,
  Pointer pixels,
) =>
    _glDrawPixels(
      width,
      height,
      format,
      type,
      pixels,
    );

late final _glDrawPixels = _opengl32.lookupFunction<
    Void Function(
  Int32 width,
  Int32 height,
  Uint32 format,
  Uint32 type,
  Pointer pixels,
),
    void Function(
  int width,
  int height,
  int format,
  int type,
  Pointer pixels,
)>('glDrawPixels');

void glEdgeFlag(
  int flag,
) =>
    _glEdgeFlag(
      flag,
    );

late final _glEdgeFlag = _opengl32.lookupFunction<
    Void Function(
  Uint8 flag,
),
    void Function(
  int flag,
)>('glEdgeFlag');

void glEdgeFlagPointer(
  int stride,
  Pointer pointer,
) =>
    _glEdgeFlagPointer(
      stride,
      pointer,
    );

late final _glEdgeFlagPointer = _opengl32.lookupFunction<
    Void Function(
  Int32 stride,
  Pointer pointer,
),
    void Function(
  int stride,
  Pointer pointer,
)>('glEdgeFlagPointer');

void glEdgeFlagv(
  Pointer<Uint8> flag,
) =>
    _glEdgeFlagv(
      flag,
    );

late final _glEdgeFlagv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Uint8> flag,
),
    void Function(
  Pointer<Uint8> flag,
)>('glEdgeFlagv');

void glEnable(
  int cap,
) =>
    _glEnable(
      cap,
    );

late final _glEnable = _opengl32.lookupFunction<
    Void Function(
  Uint32 cap,
),
    void Function(
  int cap,
)>('glEnable');

void glEnableClientState(
  int array,
) =>
    _glEnableClientState(
      array,
    );

late final _glEnableClientState = _opengl32.lookupFunction<
    Void Function(
  Uint32 array,
),
    void Function(
  int array,
)>('glEnableClientState');

void glEnd() => _glEnd();

late final _glEnd =
    _opengl32.lookupFunction<Void Function(), void Function()>('glEnd');

void glEndList() => _glEndList();

late final _glEndList =
    _opengl32.lookupFunction<Void Function(), void Function()>('glEndList');

void glEvalCoord1d(
  double u,
) =>
    _glEvalCoord1d(
      u,
    );

late final _glEvalCoord1d = _opengl32.lookupFunction<
    Void Function(
  Double u,
),
    void Function(
  double u,
)>('glEvalCoord1d');

void glEvalCoord1dv(
  Pointer<Double> u,
) =>
    _glEvalCoord1dv(
      u,
    );

late final _glEvalCoord1dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> u,
),
    void Function(
  Pointer<Double> u,
)>('glEvalCoord1dv');

void glEvalCoord1f(
  double u,
) =>
    _glEvalCoord1f(
      u,
    );

late final _glEvalCoord1f = _opengl32.lookupFunction<
    Void Function(
  Float u,
),
    void Function(
  double u,
)>('glEvalCoord1f');

void glEvalCoord1fv(
  Pointer<Float> u,
) =>
    _glEvalCoord1fv(
      u,
    );

late final _glEvalCoord1fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> u,
),
    void Function(
  Pointer<Float> u,
)>('glEvalCoord1fv');

void glEvalCoord2d(
  double u,
  double v,
) =>
    _glEvalCoord2d(
      u,
      v,
    );

late final _glEvalCoord2d = _opengl32.lookupFunction<
    Void Function(
  Double u,
  Double v,
),
    void Function(
  double u,
  double v,
)>('glEvalCoord2d');

void glEvalCoord2dv(
  Pointer<Double> u,
) =>
    _glEvalCoord2dv(
      u,
    );

late final _glEvalCoord2dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> u,
),
    void Function(
  Pointer<Double> u,
)>('glEvalCoord2dv');

void glEvalCoord2f(
  double u,
  double v,
) =>
    _glEvalCoord2f(
      u,
      v,
    );

late final _glEvalCoord2f = _opengl32.lookupFunction<
    Void Function(
  Float u,
  Float v,
),
    void Function(
  double u,
  double v,
)>('glEvalCoord2f');

void glEvalCoord2fv(
  Pointer<Float> u,
) =>
    _glEvalCoord2fv(
      u,
    );

late final _glEvalCoord2fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> u,
),
    void Function(
  Pointer<Float> u,
)>('glEvalCoord2fv');

void glEvalMesh1(
  int mode,
  int i1,
  int i2,
) =>
    _glEvalMesh1(
      mode,
      i1,
      i2,
    );

late final _glEvalMesh1 = _opengl32.lookupFunction<
    Void Function(
  Uint32 mode,
  Int32 i1,
  Int32 i2,
),
    void Function(
  int mode,
  int i1,
  int i2,
)>('glEvalMesh1');

void glEvalMesh2(
  int mode,
  int i1,
  int i2,
  int j1,
  int j2,
) =>
    _glEvalMesh2(
      mode,
      i1,
      i2,
      j1,
      j2,
    );

late final _glEvalMesh2 = _opengl32.lookupFunction<
    Void Function(
  Uint32 mode,
  Int32 i1,
  Int32 i2,
  Int32 j1,
  Int32 j2,
),
    void Function(
  int mode,
  int i1,
  int i2,
  int j1,
  int j2,
)>('glEvalMesh2');

void glEvalPoint1(
  int i,
) =>
    _glEvalPoint1(
      i,
    );

late final _glEvalPoint1 = _opengl32.lookupFunction<
    Void Function(
  Int32 i,
),
    void Function(
  int i,
)>('glEvalPoint1');

void glEvalPoint2(
  int i,
  int j,
) =>
    _glEvalPoint2(
      i,
      j,
    );

late final _glEvalPoint2 = _opengl32.lookupFunction<
    Void Function(
  Int32 i,
  Int32 j,
),
    void Function(
  int i,
  int j,
)>('glEvalPoint2');

void glFeedbackBuffer(
  int size,
  int type,
  Pointer<Float> buffer,
) =>
    _glFeedbackBuffer(
      size,
      type,
      buffer,
    );

late final _glFeedbackBuffer = _opengl32.lookupFunction<
    Void Function(
  Int32 size,
  Uint32 type,
  Pointer<Float> buffer,
),
    void Function(
  int size,
  int type,
  Pointer<Float> buffer,
)>('glFeedbackBuffer');

void glFinish() => _glFinish();

late final _glFinish =
    _opengl32.lookupFunction<Void Function(), void Function()>('glFinish');

void glFlush() => _glFlush();

late final _glFlush =
    _opengl32.lookupFunction<Void Function(), void Function()>('glFlush');

void glFogf(
  int pname,
  double param1,
) =>
    _glFogf(
      pname,
      param1,
    );

late final _glFogf = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Float param1,
),
    void Function(
  int pname,
  double param1,
)>('glFogf');

void glFogfv(
  int pname,
  Pointer<Float> params,
) =>
    _glFogfv(
      pname,
      params,
    );

late final _glFogfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int pname,
  Pointer<Float> params,
)>('glFogfv');

void glFogi(
  int pname,
  int param1,
) =>
    _glFogi(
      pname,
      param1,
    );

late final _glFogi = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Int32 param1,
),
    void Function(
  int pname,
  int param1,
)>('glFogi');

void glFogiv(
  int pname,
  Pointer<Int32> params,
) =>
    _glFogiv(
      pname,
      params,
    );

late final _glFogiv = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int pname,
  Pointer<Int32> params,
)>('glFogiv');

void glFrontFace(
  int mode,
) =>
    _glFrontFace(
      mode,
    );

late final _glFrontFace = _opengl32.lookupFunction<
    Void Function(
  Uint32 mode,
),
    void Function(
  int mode,
)>('glFrontFace');

void glFrustum(
  double left,
  double right,
  double bottom,
  double top,
  double zNear,
  double zFar,
) =>
    _glFrustum(
      left,
      right,
      bottom,
      top,
      zNear,
      zFar,
    );

late final _glFrustum = _opengl32.lookupFunction<
    Void Function(
  Double left,
  Double right,
  Double bottom,
  Double top,
  Double zNear,
  Double zFar,
),
    void Function(
  double left,
  double right,
  double bottom,
  double top,
  double zNear,
  double zFar,
)>('glFrustum');

int glGenLists(
  int range,
) =>
    _glGenLists(
      range,
    );

late final _glGenLists = _opengl32.lookupFunction<
    Uint32 Function(
  Int32 range,
),
    int Function(
  int range,
)>('glGenLists');

void glGenTextures(
  int n,
  Pointer<Uint32> textures,
) =>
    _glGenTextures(
      n,
      textures,
    );

late final _glGenTextures = _opengl32.lookupFunction<
    Void Function(
  Int32 n,
  Pointer<Uint32> textures,
),
    void Function(
  int n,
  Pointer<Uint32> textures,
)>('glGenTextures');

void glGetBooleanv(
  int pname,
  Pointer<Uint8> params,
) =>
    _glGetBooleanv(
      pname,
      params,
    );

late final _glGetBooleanv = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Pointer<Uint8> params,
),
    void Function(
  int pname,
  Pointer<Uint8> params,
)>('glGetBooleanv');

void glGetClipPlane(
  int plane,
  Pointer<Double> equation,
) =>
    _glGetClipPlane(
      plane,
      equation,
    );

late final _glGetClipPlane = _opengl32.lookupFunction<
    Void Function(
  Uint32 plane,
  Pointer<Double> equation,
),
    void Function(
  int plane,
  Pointer<Double> equation,
)>('glGetClipPlane');

void glGetDoublev(
  int pname,
  Pointer<Double> params,
) =>
    _glGetDoublev(
      pname,
      params,
    );

late final _glGetDoublev = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Pointer<Double> params,
),
    void Function(
  int pname,
  Pointer<Double> params,
)>('glGetDoublev');

int glGetError() => _glGetError();

late final _glGetError =
    _opengl32.lookupFunction<Uint32 Function(), int Function()>('glGetError');

void glGetFloatv(
  int pname,
  Pointer<Float> params,
) =>
    _glGetFloatv(
      pname,
      params,
    );

late final _glGetFloatv = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int pname,
  Pointer<Float> params,
)>('glGetFloatv');

void glGetIntegerv(
  int pname,
  Pointer<Int32> params,
) =>
    _glGetIntegerv(
      pname,
      params,
    );

late final _glGetIntegerv = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int pname,
  Pointer<Int32> params,
)>('glGetIntegerv');

void glGetLightfv(
  int light,
  int pname,
  Pointer<Float> params,
) =>
    _glGetLightfv(
      light,
      pname,
      params,
    );

late final _glGetLightfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 light,
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int light,
  int pname,
  Pointer<Float> params,
)>('glGetLightfv');

void glGetLightiv(
  int light,
  int pname,
  Pointer<Int32> params,
) =>
    _glGetLightiv(
      light,
      pname,
      params,
    );

late final _glGetLightiv = _opengl32.lookupFunction<
    Void Function(
  Uint32 light,
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int light,
  int pname,
  Pointer<Int32> params,
)>('glGetLightiv');

void glGetMapdv(
  int target,
  int query,
  Pointer<Double> v,
) =>
    _glGetMapdv(
      target,
      query,
      v,
    );

late final _glGetMapdv = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 query,
  Pointer<Double> v,
),
    void Function(
  int target,
  int query,
  Pointer<Double> v,
)>('glGetMapdv');

void glGetMapfv(
  int target,
  int query,
  Pointer<Float> v,
) =>
    _glGetMapfv(
      target,
      query,
      v,
    );

late final _glGetMapfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 query,
  Pointer<Float> v,
),
    void Function(
  int target,
  int query,
  Pointer<Float> v,
)>('glGetMapfv');

void glGetMapiv(
  int target,
  int query,
  Pointer<Int32> v,
) =>
    _glGetMapiv(
      target,
      query,
      v,
    );

late final _glGetMapiv = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 query,
  Pointer<Int32> v,
),
    void Function(
  int target,
  int query,
  Pointer<Int32> v,
)>('glGetMapiv');

void glGetMaterialfv(
  int face,
  int pname,
  Pointer<Float> params,
) =>
    _glGetMaterialfv(
      face,
      pname,
      params,
    );

late final _glGetMaterialfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 face,
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int face,
  int pname,
  Pointer<Float> params,
)>('glGetMaterialfv');

void glGetMaterialiv(
  int face,
  int pname,
  Pointer<Int32> params,
) =>
    _glGetMaterialiv(
      face,
      pname,
      params,
    );

late final _glGetMaterialiv = _opengl32.lookupFunction<
    Void Function(
  Uint32 face,
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int face,
  int pname,
  Pointer<Int32> params,
)>('glGetMaterialiv');

void glGetPixelMapfv(
  int map,
  Pointer<Float> values,
) =>
    _glGetPixelMapfv(
      map,
      values,
    );

late final _glGetPixelMapfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 map,
  Pointer<Float> values,
),
    void Function(
  int map,
  Pointer<Float> values,
)>('glGetPixelMapfv');

void glGetPixelMapuiv(
  int map,
  Pointer<Uint32> values,
) =>
    _glGetPixelMapuiv(
      map,
      values,
    );

late final _glGetPixelMapuiv = _opengl32.lookupFunction<
    Void Function(
  Uint32 map,
  Pointer<Uint32> values,
),
    void Function(
  int map,
  Pointer<Uint32> values,
)>('glGetPixelMapuiv');

void glGetPixelMapusv(
  int map,
  Pointer<Uint16> values,
) =>
    _glGetPixelMapusv(
      map,
      values,
    );

late final _glGetPixelMapusv = _opengl32.lookupFunction<
    Void Function(
  Uint32 map,
  Pointer<Uint16> values,
),
    void Function(
  int map,
  Pointer<Uint16> values,
)>('glGetPixelMapusv');

void glGetPointerv(
  int pname,
  Pointer<Pointer> params,
) =>
    _glGetPointerv(
      pname,
      params,
    );

late final _glGetPointerv = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Pointer<Pointer> params,
),
    void Function(
  int pname,
  Pointer<Pointer> params,
)>('glGetPointerv');

void glGetPolygonStipple(
  Pointer<Uint8> mask,
) =>
    _glGetPolygonStipple(
      mask,
    );

late final _glGetPolygonStipple = _opengl32.lookupFunction<
    Void Function(
  Pointer<Uint8> mask,
),
    void Function(
  Pointer<Uint8> mask,
)>('glGetPolygonStipple');

Pointer<Uint8> glGetString(
  int name,
) =>
    _glGetString(
      name,
    );

late final _glGetString = _opengl32.lookupFunction<
    Pointer<Uint8> Function(
  Uint32 name,
),
    Pointer<Uint8> Function(
  int name,
)>('glGetString');

void glGetTexEnvfv(
  int target,
  int pname,
  Pointer<Float> params,
) =>
    _glGetTexEnvfv(
      target,
      pname,
      params,
    );

late final _glGetTexEnvfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int target,
  int pname,
  Pointer<Float> params,
)>('glGetTexEnvfv');

void glGetTexEnviv(
  int target,
  int pname,
  Pointer<Int32> params,
) =>
    _glGetTexEnviv(
      target,
      pname,
      params,
    );

late final _glGetTexEnviv = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int target,
  int pname,
  Pointer<Int32> params,
)>('glGetTexEnviv');

void glGetTexGendv(
  int coord,
  int pname,
  Pointer<Double> params,
) =>
    _glGetTexGendv(
      coord,
      pname,
      params,
    );

late final _glGetTexGendv = _opengl32.lookupFunction<
    Void Function(
  Uint32 coord,
  Uint32 pname,
  Pointer<Double> params,
),
    void Function(
  int coord,
  int pname,
  Pointer<Double> params,
)>('glGetTexGendv');

void glGetTexGenfv(
  int coord,
  int pname,
  Pointer<Float> params,
) =>
    _glGetTexGenfv(
      coord,
      pname,
      params,
    );

late final _glGetTexGenfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 coord,
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int coord,
  int pname,
  Pointer<Float> params,
)>('glGetTexGenfv');

void glGetTexGeniv(
  int coord,
  int pname,
  Pointer<Int32> params,
) =>
    _glGetTexGeniv(
      coord,
      pname,
      params,
    );

late final _glGetTexGeniv = _opengl32.lookupFunction<
    Void Function(
  Uint32 coord,
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int coord,
  int pname,
  Pointer<Int32> params,
)>('glGetTexGeniv');

void glGetTexImage(
  int target,
  int level,
  int format,
  int type,
  Pointer pixels,
) =>
    _glGetTexImage(
      target,
      level,
      format,
      type,
      pixels,
    );

late final _glGetTexImage = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Int32 level,
  Uint32 format,
  Uint32 type,
  Pointer pixels,
),
    void Function(
  int target,
  int level,
  int format,
  int type,
  Pointer pixels,
)>('glGetTexImage');

void glGetTexLevelParameterfv(
  int target,
  int level,
  int pname,
  Pointer<Float> params,
) =>
    _glGetTexLevelParameterfv(
      target,
      level,
      pname,
      params,
    );

late final _glGetTexLevelParameterfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Int32 level,
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int target,
  int level,
  int pname,
  Pointer<Float> params,
)>('glGetTexLevelParameterfv');

void glGetTexLevelParameteriv(
  int target,
  int level,
  int pname,
  Pointer<Int32> params,
) =>
    _glGetTexLevelParameteriv(
      target,
      level,
      pname,
      params,
    );

late final _glGetTexLevelParameteriv = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Int32 level,
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int target,
  int level,
  int pname,
  Pointer<Int32> params,
)>('glGetTexLevelParameteriv');

void glGetTexParameterfv(
  int target,
  int pname,
  Pointer<Float> params,
) =>
    _glGetTexParameterfv(
      target,
      pname,
      params,
    );

late final _glGetTexParameterfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int target,
  int pname,
  Pointer<Float> params,
)>('glGetTexParameterfv');

void glGetTexParameteriv(
  int target,
  int pname,
  Pointer<Int32> params,
) =>
    _glGetTexParameteriv(
      target,
      pname,
      params,
    );

late final _glGetTexParameteriv = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int target,
  int pname,
  Pointer<Int32> params,
)>('glGetTexParameteriv');

void glHint(
  int target,
  int mode,
) =>
    _glHint(
      target,
      mode,
    );

late final _glHint = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 mode,
),
    void Function(
  int target,
  int mode,
)>('glHint');

void glIndexMask(
  int mask,
) =>
    _glIndexMask(
      mask,
    );

late final _glIndexMask = _opengl32.lookupFunction<
    Void Function(
  Uint32 mask,
),
    void Function(
  int mask,
)>('glIndexMask');

void glIndexPointer(
  int type,
  int stride,
  Pointer pointer,
) =>
    _glIndexPointer(
      type,
      stride,
      pointer,
    );

late final _glIndexPointer = _opengl32.lookupFunction<
    Void Function(
  Uint32 type,
  Int32 stride,
  Pointer pointer,
),
    void Function(
  int type,
  int stride,
  Pointer pointer,
)>('glIndexPointer');

void glIndexd(
  double c,
) =>
    _glIndexd(
      c,
    );

late final _glIndexd = _opengl32.lookupFunction<
    Void Function(
  Double c,
),
    void Function(
  double c,
)>('glIndexd');

void glIndexdv(
  Pointer<Double> c,
) =>
    _glIndexdv(
      c,
    );

late final _glIndexdv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> c,
),
    void Function(
  Pointer<Double> c,
)>('glIndexdv');

void glIndexf(
  double c,
) =>
    _glIndexf(
      c,
    );

late final _glIndexf = _opengl32.lookupFunction<
    Void Function(
  Float c,
),
    void Function(
  double c,
)>('glIndexf');

void glIndexfv(
  Pointer<Float> c,
) =>
    _glIndexfv(
      c,
    );

late final _glIndexfv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> c,
),
    void Function(
  Pointer<Float> c,
)>('glIndexfv');

void glIndexi(
  int c,
) =>
    _glIndexi(
      c,
    );

late final _glIndexi = _opengl32.lookupFunction<
    Void Function(
  Int32 c,
),
    void Function(
  int c,
)>('glIndexi');

void glIndexiv(
  Pointer<Int32> c,
) =>
    _glIndexiv(
      c,
    );

late final _glIndexiv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> c,
),
    void Function(
  Pointer<Int32> c,
)>('glIndexiv');

void glIndexs(
  int c,
) =>
    _glIndexs(
      c,
    );

late final _glIndexs = _opengl32.lookupFunction<
    Void Function(
  Int16 c,
),
    void Function(
  int c,
)>('glIndexs');

void glIndexsv(
  Pointer<Int16> c,
) =>
    _glIndexsv(
      c,
    );

late final _glIndexsv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> c,
),
    void Function(
  Pointer<Int16> c,
)>('glIndexsv');

void glIndexub(
  int c,
) =>
    _glIndexub(
      c,
    );

late final _glIndexub = _opengl32.lookupFunction<
    Void Function(
  Uint8 c,
),
    void Function(
  int c,
)>('glIndexub');

void glIndexubv(
  Pointer<Uint8> c,
) =>
    _glIndexubv(
      c,
    );

late final _glIndexubv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Uint8> c,
),
    void Function(
  Pointer<Uint8> c,
)>('glIndexubv');

void glInitNames() => _glInitNames();

late final _glInitNames =
    _opengl32.lookupFunction<Void Function(), void Function()>('glInitNames');

void glInterleavedArrays(
  int format,
  int stride,
  Pointer pointer,
) =>
    _glInterleavedArrays(
      format,
      stride,
      pointer,
    );

late final _glInterleavedArrays = _opengl32.lookupFunction<
    Void Function(
  Uint32 format,
  Int32 stride,
  Pointer pointer,
),
    void Function(
  int format,
  int stride,
  Pointer pointer,
)>('glInterleavedArrays');

int glIsEnabled(
  int cap,
) =>
    _glIsEnabled(
      cap,
    );

late final _glIsEnabled = _opengl32.lookupFunction<
    Uint8 Function(
  Uint32 cap,
),
    int Function(
  int cap,
)>('glIsEnabled');

int glIsList(
  int list,
) =>
    _glIsList(
      list,
    );

late final _glIsList = _opengl32.lookupFunction<
    Uint8 Function(
  Uint32 list,
),
    int Function(
  int list,
)>('glIsList');

int glIsTexture(
  int texture,
) =>
    _glIsTexture(
      texture,
    );

late final _glIsTexture = _opengl32.lookupFunction<
    Uint8 Function(
  Uint32 texture,
),
    int Function(
  int texture,
)>('glIsTexture');

void glLightModelf(
  int pname,
  double param1,
) =>
    _glLightModelf(
      pname,
      param1,
    );

late final _glLightModelf = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Float param1,
),
    void Function(
  int pname,
  double param1,
)>('glLightModelf');

void glLightModelfv(
  int pname,
  Pointer<Float> params,
) =>
    _glLightModelfv(
      pname,
      params,
    );

late final _glLightModelfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int pname,
  Pointer<Float> params,
)>('glLightModelfv');

void glLightModeli(
  int pname,
  int param1,
) =>
    _glLightModeli(
      pname,
      param1,
    );

late final _glLightModeli = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Int32 param1,
),
    void Function(
  int pname,
  int param1,
)>('glLightModeli');

void glLightModeliv(
  int pname,
  Pointer<Int32> params,
) =>
    _glLightModeliv(
      pname,
      params,
    );

late final _glLightModeliv = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int pname,
  Pointer<Int32> params,
)>('glLightModeliv');

void glLightf(
  int light,
  int pname,
  double param2,
) =>
    _glLightf(
      light,
      pname,
      param2,
    );

late final _glLightf = _opengl32.lookupFunction<
    Void Function(
  Uint32 light,
  Uint32 pname,
  Float param2,
),
    void Function(
  int light,
  int pname,
  double param2,
)>('glLightf');

void glLightfv(
  int light,
  int pname,
  Pointer<Float> params,
) =>
    _glLightfv(
      light,
      pname,
      params,
    );

late final _glLightfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 light,
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int light,
  int pname,
  Pointer<Float> params,
)>('glLightfv');

void glLighti(
  int light,
  int pname,
  int param2,
) =>
    _glLighti(
      light,
      pname,
      param2,
    );

late final _glLighti = _opengl32.lookupFunction<
    Void Function(
  Uint32 light,
  Uint32 pname,
  Int32 param2,
),
    void Function(
  int light,
  int pname,
  int param2,
)>('glLighti');

void glLightiv(
  int light,
  int pname,
  Pointer<Int32> params,
) =>
    _glLightiv(
      light,
      pname,
      params,
    );

late final _glLightiv = _opengl32.lookupFunction<
    Void Function(
  Uint32 light,
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int light,
  int pname,
  Pointer<Int32> params,
)>('glLightiv');

void glLineStipple(
  int factor,
  int pattern,
) =>
    _glLineStipple(
      factor,
      pattern,
    );

late final _glLineStipple = _opengl32.lookupFunction<
    Void Function(
  Int32 factor,
  Uint16 pattern,
),
    void Function(
  int factor,
  int pattern,
)>('glLineStipple');

void glLineWidth(
  double width,
) =>
    _glLineWidth(
      width,
    );

late final _glLineWidth = _opengl32.lookupFunction<
    Void Function(
  Float width,
),
    void Function(
  double width,
)>('glLineWidth');

void glListBase(
  int base,
) =>
    _glListBase(
      base,
    );

late final _glListBase = _opengl32.lookupFunction<
    Void Function(
  Uint32 base,
),
    void Function(
  int base,
)>('glListBase');

void glLoadIdentity() => _glLoadIdentity();

late final _glLoadIdentity = _opengl32
    .lookupFunction<Void Function(), void Function()>('glLoadIdentity');

void glLoadMatrixd(
  Pointer<Double> m,
) =>
    _glLoadMatrixd(
      m,
    );

late final _glLoadMatrixd = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> m,
),
    void Function(
  Pointer<Double> m,
)>('glLoadMatrixd');

void glLoadMatrixf(
  Pointer<Float> m,
) =>
    _glLoadMatrixf(
      m,
    );

late final _glLoadMatrixf = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> m,
),
    void Function(
  Pointer<Float> m,
)>('glLoadMatrixf');

void glLoadName(
  int name,
) =>
    _glLoadName(
      name,
    );

late final _glLoadName = _opengl32.lookupFunction<
    Void Function(
  Uint32 name,
),
    void Function(
  int name,
)>('glLoadName');

void glLogicOp(
  int opcode,
) =>
    _glLogicOp(
      opcode,
    );

late final _glLogicOp = _opengl32.lookupFunction<
    Void Function(
  Uint32 opcode,
),
    void Function(
  int opcode,
)>('glLogicOp');

void glMap1d(
  int target,
  double u1,
  double u2,
  int stride,
  int order,
  Pointer<Double> points,
) =>
    _glMap1d(
      target,
      u1,
      u2,
      stride,
      order,
      points,
    );

late final _glMap1d = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Double u1,
  Double u2,
  Int32 stride,
  Int32 order,
  Pointer<Double> points,
),
    void Function(
  int target,
  double u1,
  double u2,
  int stride,
  int order,
  Pointer<Double> points,
)>('glMap1d');

void glMap1f(
  int target,
  double u1,
  double u2,
  int stride,
  int order,
  Pointer<Float> points,
) =>
    _glMap1f(
      target,
      u1,
      u2,
      stride,
      order,
      points,
    );

late final _glMap1f = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Float u1,
  Float u2,
  Int32 stride,
  Int32 order,
  Pointer<Float> points,
),
    void Function(
  int target,
  double u1,
  double u2,
  int stride,
  int order,
  Pointer<Float> points,
)>('glMap1f');

void glMap2d(
  int target,
  double u1,
  double u2,
  int ustride,
  int uorder,
  double v1,
  double v2,
  int vstride,
  int vorder,
  Pointer<Double> points,
) =>
    _glMap2d(
      target,
      u1,
      u2,
      ustride,
      uorder,
      v1,
      v2,
      vstride,
      vorder,
      points,
    );

late final _glMap2d = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Double u1,
  Double u2,
  Int32 ustride,
  Int32 uorder,
  Double v1,
  Double v2,
  Int32 vstride,
  Int32 vorder,
  Pointer<Double> points,
),
    void Function(
  int target,
  double u1,
  double u2,
  int ustride,
  int uorder,
  double v1,
  double v2,
  int vstride,
  int vorder,
  Pointer<Double> points,
)>('glMap2d');

void glMap2f(
  int target,
  double u1,
  double u2,
  int ustride,
  int uorder,
  double v1,
  double v2,
  int vstride,
  int vorder,
  Pointer<Float> points,
) =>
    _glMap2f(
      target,
      u1,
      u2,
      ustride,
      uorder,
      v1,
      v2,
      vstride,
      vorder,
      points,
    );

late final _glMap2f = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Float u1,
  Float u2,
  Int32 ustride,
  Int32 uorder,
  Float v1,
  Float v2,
  Int32 vstride,
  Int32 vorder,
  Pointer<Float> points,
),
    void Function(
  int target,
  double u1,
  double u2,
  int ustride,
  int uorder,
  double v1,
  double v2,
  int vstride,
  int vorder,
  Pointer<Float> points,
)>('glMap2f');

void glMapGrid1d(
  int un,
  double u1,
  double u2,
) =>
    _glMapGrid1d(
      un,
      u1,
      u2,
    );

late final _glMapGrid1d = _opengl32.lookupFunction<
    Void Function(
  Int32 un,
  Double u1,
  Double u2,
),
    void Function(
  int un,
  double u1,
  double u2,
)>('glMapGrid1d');

void glMapGrid1f(
  int un,
  double u1,
  double u2,
) =>
    _glMapGrid1f(
      un,
      u1,
      u2,
    );

late final _glMapGrid1f = _opengl32.lookupFunction<
    Void Function(
  Int32 un,
  Float u1,
  Float u2,
),
    void Function(
  int un,
  double u1,
  double u2,
)>('glMapGrid1f');

void glMapGrid2d(
  int un,
  double u1,
  double u2,
  int vn,
  double v1,
  double v2,
) =>
    _glMapGrid2d(
      un,
      u1,
      u2,
      vn,
      v1,
      v2,
    );

late final _glMapGrid2d = _opengl32.lookupFunction<
    Void Function(
  Int32 un,
  Double u1,
  Double u2,
  Int32 vn,
  Double v1,
  Double v2,
),
    void Function(
  int un,
  double u1,
  double u2,
  int vn,
  double v1,
  double v2,
)>('glMapGrid2d');

void glMapGrid2f(
  int un,
  double u1,
  double u2,
  int vn,
  double v1,
  double v2,
) =>
    _glMapGrid2f(
      un,
      u1,
      u2,
      vn,
      v1,
      v2,
    );

late final _glMapGrid2f = _opengl32.lookupFunction<
    Void Function(
  Int32 un,
  Float u1,
  Float u2,
  Int32 vn,
  Float v1,
  Float v2,
),
    void Function(
  int un,
  double u1,
  double u2,
  int vn,
  double v1,
  double v2,
)>('glMapGrid2f');

void glMaterialf(
  int face,
  int pname,
  double param2,
) =>
    _glMaterialf(
      face,
      pname,
      param2,
    );

late final _glMaterialf = _opengl32.lookupFunction<
    Void Function(
  Uint32 face,
  Uint32 pname,
  Float param2,
),
    void Function(
  int face,
  int pname,
  double param2,
)>('glMaterialf');

void glMaterialfv(
  int face,
  int pname,
  Pointer<Float> params,
) =>
    _glMaterialfv(
      face,
      pname,
      params,
    );

late final _glMaterialfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 face,
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int face,
  int pname,
  Pointer<Float> params,
)>('glMaterialfv');

void glMateriali(
  int face,
  int pname,
  int param2,
) =>
    _glMateriali(
      face,
      pname,
      param2,
    );

late final _glMateriali = _opengl32.lookupFunction<
    Void Function(
  Uint32 face,
  Uint32 pname,
  Int32 param2,
),
    void Function(
  int face,
  int pname,
  int param2,
)>('glMateriali');

void glMaterialiv(
  int face,
  int pname,
  Pointer<Int32> params,
) =>
    _glMaterialiv(
      face,
      pname,
      params,
    );

late final _glMaterialiv = _opengl32.lookupFunction<
    Void Function(
  Uint32 face,
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int face,
  int pname,
  Pointer<Int32> params,
)>('glMaterialiv');

void glMatrixMode(
  int mode,
) =>
    _glMatrixMode(
      mode,
    );

late final _glMatrixMode = _opengl32.lookupFunction<
    Void Function(
  Uint32 mode,
),
    void Function(
  int mode,
)>('glMatrixMode');

void glMultMatrixd(
  Pointer<Double> m,
) =>
    _glMultMatrixd(
      m,
    );

late final _glMultMatrixd = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> m,
),
    void Function(
  Pointer<Double> m,
)>('glMultMatrixd');

void glMultMatrixf(
  Pointer<Float> m,
) =>
    _glMultMatrixf(
      m,
    );

late final _glMultMatrixf = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> m,
),
    void Function(
  Pointer<Float> m,
)>('glMultMatrixf');

void glNewList(
  int list,
  int mode,
) =>
    _glNewList(
      list,
      mode,
    );

late final _glNewList = _opengl32.lookupFunction<
    Void Function(
  Uint32 list,
  Uint32 mode,
),
    void Function(
  int list,
  int mode,
)>('glNewList');

void glNormal3b(
  int nx,
  int ny,
  int nz,
) =>
    _glNormal3b(
      nx,
      ny,
      nz,
    );

late final _glNormal3b = _opengl32.lookupFunction<
    Void Function(
  Int8 nx,
  Int8 ny,
  Int8 nz,
),
    void Function(
  int nx,
  int ny,
  int nz,
)>('glNormal3b');

void glNormal3bv(
  Pointer<Int8> v,
) =>
    _glNormal3bv(
      v,
    );

late final _glNormal3bv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int8> v,
),
    void Function(
  Pointer<Int8> v,
)>('glNormal3bv');

void glNormal3d(
  double nx,
  double ny,
  double nz,
) =>
    _glNormal3d(
      nx,
      ny,
      nz,
    );

late final _glNormal3d = _opengl32.lookupFunction<
    Void Function(
  Double nx,
  Double ny,
  Double nz,
),
    void Function(
  double nx,
  double ny,
  double nz,
)>('glNormal3d');

void glNormal3dv(
  Pointer<Double> v,
) =>
    _glNormal3dv(
      v,
    );

late final _glNormal3dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v,
),
    void Function(
  Pointer<Double> v,
)>('glNormal3dv');

void glNormal3f(
  double nx,
  double ny,
  double nz,
) =>
    _glNormal3f(
      nx,
      ny,
      nz,
    );

late final _glNormal3f = _opengl32.lookupFunction<
    Void Function(
  Float nx,
  Float ny,
  Float nz,
),
    void Function(
  double nx,
  double ny,
  double nz,
)>('glNormal3f');

void glNormal3fv(
  Pointer<Float> v,
) =>
    _glNormal3fv(
      v,
    );

late final _glNormal3fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v,
),
    void Function(
  Pointer<Float> v,
)>('glNormal3fv');

void glNormal3i(
  int nx,
  int ny,
  int nz,
) =>
    _glNormal3i(
      nx,
      ny,
      nz,
    );

late final _glNormal3i = _opengl32.lookupFunction<
    Void Function(
  Int32 nx,
  Int32 ny,
  Int32 nz,
),
    void Function(
  int nx,
  int ny,
  int nz,
)>('glNormal3i');

void glNormal3iv(
  Pointer<Int32> v,
) =>
    _glNormal3iv(
      v,
    );

late final _glNormal3iv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v,
),
    void Function(
  Pointer<Int32> v,
)>('glNormal3iv');

void glNormal3s(
  int nx,
  int ny,
  int nz,
) =>
    _glNormal3s(
      nx,
      ny,
      nz,
    );

late final _glNormal3s = _opengl32.lookupFunction<
    Void Function(
  Int16 nx,
  Int16 ny,
  Int16 nz,
),
    void Function(
  int nx,
  int ny,
  int nz,
)>('glNormal3s');

void glNormal3sv(
  Pointer<Int16> v,
) =>
    _glNormal3sv(
      v,
    );

late final _glNormal3sv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v,
),
    void Function(
  Pointer<Int16> v,
)>('glNormal3sv');

void glNormalPointer(
  int type,
  int stride,
  Pointer pointer,
) =>
    _glNormalPointer(
      type,
      stride,
      pointer,
    );

late final _glNormalPointer = _opengl32.lookupFunction<
    Void Function(
  Uint32 type,
  Int32 stride,
  Pointer pointer,
),
    void Function(
  int type,
  int stride,
  Pointer pointer,
)>('glNormalPointer');

void glOrtho(
  double left,
  double right,
  double bottom,
  double top,
  double zNear,
  double zFar,
) =>
    _glOrtho(
      left,
      right,
      bottom,
      top,
      zNear,
      zFar,
    );

late final _glOrtho = _opengl32.lookupFunction<
    Void Function(
  Double left,
  Double right,
  Double bottom,
  Double top,
  Double zNear,
  Double zFar,
),
    void Function(
  double left,
  double right,
  double bottom,
  double top,
  double zNear,
  double zFar,
)>('glOrtho');

void glPassThrough(
  double token,
) =>
    _glPassThrough(
      token,
    );

late final _glPassThrough = _opengl32.lookupFunction<
    Void Function(
  Float token,
),
    void Function(
  double token,
)>('glPassThrough');

void glPixelMapfv(
  int map,
  int mapsize,
  Pointer<Float> values,
) =>
    _glPixelMapfv(
      map,
      mapsize,
      values,
    );

late final _glPixelMapfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 map,
  Int32 mapsize,
  Pointer<Float> values,
),
    void Function(
  int map,
  int mapsize,
  Pointer<Float> values,
)>('glPixelMapfv');

void glPixelMapuiv(
  int map,
  int mapsize,
  Pointer<Uint32> values,
) =>
    _glPixelMapuiv(
      map,
      mapsize,
      values,
    );

late final _glPixelMapuiv = _opengl32.lookupFunction<
    Void Function(
  Uint32 map,
  Int32 mapsize,
  Pointer<Uint32> values,
),
    void Function(
  int map,
  int mapsize,
  Pointer<Uint32> values,
)>('glPixelMapuiv');

void glPixelMapusv(
  int map,
  int mapsize,
  Pointer<Uint16> values,
) =>
    _glPixelMapusv(
      map,
      mapsize,
      values,
    );

late final _glPixelMapusv = _opengl32.lookupFunction<
    Void Function(
  Uint32 map,
  Int32 mapsize,
  Pointer<Uint16> values,
),
    void Function(
  int map,
  int mapsize,
  Pointer<Uint16> values,
)>('glPixelMapusv');

void glPixelStoref(
  int pname,
  double param1,
) =>
    _glPixelStoref(
      pname,
      param1,
    );

late final _glPixelStoref = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Float param1,
),
    void Function(
  int pname,
  double param1,
)>('glPixelStoref');

void glPixelStorei(
  int pname,
  int param1,
) =>
    _glPixelStorei(
      pname,
      param1,
    );

late final _glPixelStorei = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Int32 param1,
),
    void Function(
  int pname,
  int param1,
)>('glPixelStorei');

void glPixelTransferf(
  int pname,
  double param1,
) =>
    _glPixelTransferf(
      pname,
      param1,
    );

late final _glPixelTransferf = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Float param1,
),
    void Function(
  int pname,
  double param1,
)>('glPixelTransferf');

void glPixelTransferi(
  int pname,
  int param1,
) =>
    _glPixelTransferi(
      pname,
      param1,
    );

late final _glPixelTransferi = _opengl32.lookupFunction<
    Void Function(
  Uint32 pname,
  Int32 param1,
),
    void Function(
  int pname,
  int param1,
)>('glPixelTransferi');

void glPixelZoom(
  double xfactor,
  double yfactor,
) =>
    _glPixelZoom(
      xfactor,
      yfactor,
    );

late final _glPixelZoom = _opengl32.lookupFunction<
    Void Function(
  Float xfactor,
  Float yfactor,
),
    void Function(
  double xfactor,
  double yfactor,
)>('glPixelZoom');

void glPointSize(
  double size,
) =>
    _glPointSize(
      size,
    );

late final _glPointSize = _opengl32.lookupFunction<
    Void Function(
  Float size,
),
    void Function(
  double size,
)>('glPointSize');

void glPolygonMode(
  int face,
  int mode,
) =>
    _glPolygonMode(
      face,
      mode,
    );

late final _glPolygonMode = _opengl32.lookupFunction<
    Void Function(
  Uint32 face,
  Uint32 mode,
),
    void Function(
  int face,
  int mode,
)>('glPolygonMode');

void glPolygonOffset(
  double factor,
  double units,
) =>
    _glPolygonOffset(
      factor,
      units,
    );

late final _glPolygonOffset = _opengl32.lookupFunction<
    Void Function(
  Float factor,
  Float units,
),
    void Function(
  double factor,
  double units,
)>('glPolygonOffset');

void glPolygonStipple(
  Pointer<Uint8> mask,
) =>
    _glPolygonStipple(
      mask,
    );

late final _glPolygonStipple = _opengl32.lookupFunction<
    Void Function(
  Pointer<Uint8> mask,
),
    void Function(
  Pointer<Uint8> mask,
)>('glPolygonStipple');

void glPopAttrib() => _glPopAttrib();

late final _glPopAttrib =
    _opengl32.lookupFunction<Void Function(), void Function()>('glPopAttrib');

void glPopClientAttrib() => _glPopClientAttrib();

late final _glPopClientAttrib = _opengl32
    .lookupFunction<Void Function(), void Function()>('glPopClientAttrib');

void glPopMatrix() => _glPopMatrix();

late final _glPopMatrix =
    _opengl32.lookupFunction<Void Function(), void Function()>('glPopMatrix');

void glPopName() => _glPopName();

late final _glPopName =
    _opengl32.lookupFunction<Void Function(), void Function()>('glPopName');

void glPrioritizeTextures(
  int n,
  Pointer<Uint32> textures,
  Pointer<Float> priorities,
) =>
    _glPrioritizeTextures(
      n,
      textures,
      priorities,
    );

late final _glPrioritizeTextures = _opengl32.lookupFunction<
    Void Function(
  Int32 n,
  Pointer<Uint32> textures,
  Pointer<Float> priorities,
),
    void Function(
  int n,
  Pointer<Uint32> textures,
  Pointer<Float> priorities,
)>('glPrioritizeTextures');

void glPushAttrib(
  int mask,
) =>
    _glPushAttrib(
      mask,
    );

late final _glPushAttrib = _opengl32.lookupFunction<
    Void Function(
  Uint32 mask,
),
    void Function(
  int mask,
)>('glPushAttrib');

void glPushClientAttrib(
  int mask,
) =>
    _glPushClientAttrib(
      mask,
    );

late final _glPushClientAttrib = _opengl32.lookupFunction<
    Void Function(
  Uint32 mask,
),
    void Function(
  int mask,
)>('glPushClientAttrib');

void glPushMatrix() => _glPushMatrix();

late final _glPushMatrix =
    _opengl32.lookupFunction<Void Function(), void Function()>('glPushMatrix');

void glPushName(
  int name,
) =>
    _glPushName(
      name,
    );

late final _glPushName = _opengl32.lookupFunction<
    Void Function(
  Uint32 name,
),
    void Function(
  int name,
)>('glPushName');

void glRasterPos2d(
  double x,
  double y,
) =>
    _glRasterPos2d(
      x,
      y,
    );

late final _glRasterPos2d = _opengl32.lookupFunction<
    Void Function(
  Double x,
  Double y,
),
    void Function(
  double x,
  double y,
)>('glRasterPos2d');

void glRasterPos2dv(
  Pointer<Double> v,
) =>
    _glRasterPos2dv(
      v,
    );

late final _glRasterPos2dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v,
),
    void Function(
  Pointer<Double> v,
)>('glRasterPos2dv');

void glRasterPos2f(
  double x,
  double y,
) =>
    _glRasterPos2f(
      x,
      y,
    );

late final _glRasterPos2f = _opengl32.lookupFunction<
    Void Function(
  Float x,
  Float y,
),
    void Function(
  double x,
  double y,
)>('glRasterPos2f');

void glRasterPos2fv(
  Pointer<Float> v,
) =>
    _glRasterPos2fv(
      v,
    );

late final _glRasterPos2fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v,
),
    void Function(
  Pointer<Float> v,
)>('glRasterPos2fv');

void glRasterPos2i(
  int x,
  int y,
) =>
    _glRasterPos2i(
      x,
      y,
    );

late final _glRasterPos2i = _opengl32.lookupFunction<
    Void Function(
  Int32 x,
  Int32 y,
),
    void Function(
  int x,
  int y,
)>('glRasterPos2i');

void glRasterPos2iv(
  Pointer<Int32> v,
) =>
    _glRasterPos2iv(
      v,
    );

late final _glRasterPos2iv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v,
),
    void Function(
  Pointer<Int32> v,
)>('glRasterPos2iv');

void glRasterPos2s(
  int x,
  int y,
) =>
    _glRasterPos2s(
      x,
      y,
    );

late final _glRasterPos2s = _opengl32.lookupFunction<
    Void Function(
  Int16 x,
  Int16 y,
),
    void Function(
  int x,
  int y,
)>('glRasterPos2s');

void glRasterPos2sv(
  Pointer<Int16> v,
) =>
    _glRasterPos2sv(
      v,
    );

late final _glRasterPos2sv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v,
),
    void Function(
  Pointer<Int16> v,
)>('glRasterPos2sv');

void glRasterPos3d(
  double x,
  double y,
  double z,
) =>
    _glRasterPos3d(
      x,
      y,
      z,
    );

late final _glRasterPos3d = _opengl32.lookupFunction<
    Void Function(
  Double x,
  Double y,
  Double z,
),
    void Function(
  double x,
  double y,
  double z,
)>('glRasterPos3d');

void glRasterPos3dv(
  Pointer<Double> v,
) =>
    _glRasterPos3dv(
      v,
    );

late final _glRasterPos3dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v,
),
    void Function(
  Pointer<Double> v,
)>('glRasterPos3dv');

void glRasterPos3f(
  double x,
  double y,
  double z,
) =>
    _glRasterPos3f(
      x,
      y,
      z,
    );

late final _glRasterPos3f = _opengl32.lookupFunction<
    Void Function(
  Float x,
  Float y,
  Float z,
),
    void Function(
  double x,
  double y,
  double z,
)>('glRasterPos3f');

void glRasterPos3fv(
  Pointer<Float> v,
) =>
    _glRasterPos3fv(
      v,
    );

late final _glRasterPos3fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v,
),
    void Function(
  Pointer<Float> v,
)>('glRasterPos3fv');

void glRasterPos3i(
  int x,
  int y,
  int z,
) =>
    _glRasterPos3i(
      x,
      y,
      z,
    );

late final _glRasterPos3i = _opengl32.lookupFunction<
    Void Function(
  Int32 x,
  Int32 y,
  Int32 z,
),
    void Function(
  int x,
  int y,
  int z,
)>('glRasterPos3i');

void glRasterPos3iv(
  Pointer<Int32> v,
) =>
    _glRasterPos3iv(
      v,
    );

late final _glRasterPos3iv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v,
),
    void Function(
  Pointer<Int32> v,
)>('glRasterPos3iv');

void glRasterPos3s(
  int x,
  int y,
  int z,
) =>
    _glRasterPos3s(
      x,
      y,
      z,
    );

late final _glRasterPos3s = _opengl32.lookupFunction<
    Void Function(
  Int16 x,
  Int16 y,
  Int16 z,
),
    void Function(
  int x,
  int y,
  int z,
)>('glRasterPos3s');

void glRasterPos3sv(
  Pointer<Int16> v,
) =>
    _glRasterPos3sv(
      v,
    );

late final _glRasterPos3sv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v,
),
    void Function(
  Pointer<Int16> v,
)>('glRasterPos3sv');

void glRasterPos4d(
  double x,
  double y,
  double z,
  double w,
) =>
    _glRasterPos4d(
      x,
      y,
      z,
      w,
    );

late final _glRasterPos4d = _opengl32.lookupFunction<
    Void Function(
  Double x,
  Double y,
  Double z,
  Double w,
),
    void Function(
  double x,
  double y,
  double z,
  double w,
)>('glRasterPos4d');

void glRasterPos4dv(
  Pointer<Double> v,
) =>
    _glRasterPos4dv(
      v,
    );

late final _glRasterPos4dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v,
),
    void Function(
  Pointer<Double> v,
)>('glRasterPos4dv');

void glRasterPos4f(
  double x,
  double y,
  double z,
  double w,
) =>
    _glRasterPos4f(
      x,
      y,
      z,
      w,
    );

late final _glRasterPos4f = _opengl32.lookupFunction<
    Void Function(
  Float x,
  Float y,
  Float z,
  Float w,
),
    void Function(
  double x,
  double y,
  double z,
  double w,
)>('glRasterPos4f');

void glRasterPos4fv(
  Pointer<Float> v,
) =>
    _glRasterPos4fv(
      v,
    );

late final _glRasterPos4fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v,
),
    void Function(
  Pointer<Float> v,
)>('glRasterPos4fv');

void glRasterPos4i(
  int x,
  int y,
  int z,
  int w,
) =>
    _glRasterPos4i(
      x,
      y,
      z,
      w,
    );

late final _glRasterPos4i = _opengl32.lookupFunction<
    Void Function(
  Int32 x,
  Int32 y,
  Int32 z,
  Int32 w,
),
    void Function(
  int x,
  int y,
  int z,
  int w,
)>('glRasterPos4i');

void glRasterPos4iv(
  Pointer<Int32> v,
) =>
    _glRasterPos4iv(
      v,
    );

late final _glRasterPos4iv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v,
),
    void Function(
  Pointer<Int32> v,
)>('glRasterPos4iv');

void glRasterPos4s(
  int x,
  int y,
  int z,
  int w,
) =>
    _glRasterPos4s(
      x,
      y,
      z,
      w,
    );

late final _glRasterPos4s = _opengl32.lookupFunction<
    Void Function(
  Int16 x,
  Int16 y,
  Int16 z,
  Int16 w,
),
    void Function(
  int x,
  int y,
  int z,
  int w,
)>('glRasterPos4s');

void glRasterPos4sv(
  Pointer<Int16> v,
) =>
    _glRasterPos4sv(
      v,
    );

late final _glRasterPos4sv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v,
),
    void Function(
  Pointer<Int16> v,
)>('glRasterPos4sv');

void glReadBuffer(
  int mode,
) =>
    _glReadBuffer(
      mode,
    );

late final _glReadBuffer = _opengl32.lookupFunction<
    Void Function(
  Uint32 mode,
),
    void Function(
  int mode,
)>('glReadBuffer');

void glReadPixels(
  int x,
  int y,
  int width,
  int height,
  int format,
  int type,
  Pointer pixels,
) =>
    _glReadPixels(
      x,
      y,
      width,
      height,
      format,
      type,
      pixels,
    );

late final _glReadPixels = _opengl32.lookupFunction<
    Void Function(
  Int32 x,
  Int32 y,
  Int32 width,
  Int32 height,
  Uint32 format,
  Uint32 type,
  Pointer pixels,
),
    void Function(
  int x,
  int y,
  int width,
  int height,
  int format,
  int type,
  Pointer pixels,
)>('glReadPixels');

void glRectd(
  double x1,
  double y1,
  double x2,
  double y2,
) =>
    _glRectd(
      x1,
      y1,
      x2,
      y2,
    );

late final _glRectd = _opengl32.lookupFunction<
    Void Function(
  Double x1,
  Double y1,
  Double x2,
  Double y2,
),
    void Function(
  double x1,
  double y1,
  double x2,
  double y2,
)>('glRectd');

void glRectdv(
  Pointer<Double> v1,
  Pointer<Double> v2,
) =>
    _glRectdv(
      v1,
      v2,
    );

late final _glRectdv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v1,
  Pointer<Double> v2,
),
    void Function(
  Pointer<Double> v1,
  Pointer<Double> v2,
)>('glRectdv');

void glRectf(
  double x1,
  double y1,
  double x2,
  double y2,
) =>
    _glRectf(
      x1,
      y1,
      x2,
      y2,
    );

late final _glRectf = _opengl32.lookupFunction<
    Void Function(
  Float x1,
  Float y1,
  Float x2,
  Float y2,
),
    void Function(
  double x1,
  double y1,
  double x2,
  double y2,
)>('glRectf');

void glRectfv(
  Pointer<Float> v1,
  Pointer<Float> v2,
) =>
    _glRectfv(
      v1,
      v2,
    );

late final _glRectfv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v1,
  Pointer<Float> v2,
),
    void Function(
  Pointer<Float> v1,
  Pointer<Float> v2,
)>('glRectfv');

void glRecti(
  int x1,
  int y1,
  int x2,
  int y2,
) =>
    _glRecti(
      x1,
      y1,
      x2,
      y2,
    );

late final _glRecti = _opengl32.lookupFunction<
    Void Function(
  Int32 x1,
  Int32 y1,
  Int32 x2,
  Int32 y2,
),
    void Function(
  int x1,
  int y1,
  int x2,
  int y2,
)>('glRecti');

void glRectiv(
  Pointer<Int32> v1,
  Pointer<Int32> v2,
) =>
    _glRectiv(
      v1,
      v2,
    );

late final _glRectiv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v1,
  Pointer<Int32> v2,
),
    void Function(
  Pointer<Int32> v1,
  Pointer<Int32> v2,
)>('glRectiv');

void glRects(
  int x1,
  int y1,
  int x2,
  int y2,
) =>
    _glRects(
      x1,
      y1,
      x2,
      y2,
    );

late final _glRects = _opengl32.lookupFunction<
    Void Function(
  Int16 x1,
  Int16 y1,
  Int16 x2,
  Int16 y2,
),
    void Function(
  int x1,
  int y1,
  int x2,
  int y2,
)>('glRects');

void glRectsv(
  Pointer<Int16> v1,
  Pointer<Int16> v2,
) =>
    _glRectsv(
      v1,
      v2,
    );

late final _glRectsv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v1,
  Pointer<Int16> v2,
),
    void Function(
  Pointer<Int16> v1,
  Pointer<Int16> v2,
)>('glRectsv');

int glRenderMode(
  int mode,
) =>
    _glRenderMode(
      mode,
    );

late final _glRenderMode = _opengl32.lookupFunction<
    Int32 Function(
  Uint32 mode,
),
    int Function(
  int mode,
)>('glRenderMode');

void glRotated(
  double angle,
  double x,
  double y,
  double z,
) =>
    _glRotated(
      angle,
      x,
      y,
      z,
    );

late final _glRotated = _opengl32.lookupFunction<
    Void Function(
  Double angle,
  Double x,
  Double y,
  Double z,
),
    void Function(
  double angle,
  double x,
  double y,
  double z,
)>('glRotated');

void glRotatef(
  double angle,
  double x,
  double y,
  double z,
) =>
    _glRotatef(
      angle,
      x,
      y,
      z,
    );

late final _glRotatef = _opengl32.lookupFunction<
    Void Function(
  Float angle,
  Float x,
  Float y,
  Float z,
),
    void Function(
  double angle,
  double x,
  double y,
  double z,
)>('glRotatef');

void glScaled(
  double x,
  double y,
  double z,
) =>
    _glScaled(
      x,
      y,
      z,
    );

late final _glScaled = _opengl32.lookupFunction<
    Void Function(
  Double x,
  Double y,
  Double z,
),
    void Function(
  double x,
  double y,
  double z,
)>('glScaled');

void glScalef(
  double x,
  double y,
  double z,
) =>
    _glScalef(
      x,
      y,
      z,
    );

late final _glScalef = _opengl32.lookupFunction<
    Void Function(
  Float x,
  Float y,
  Float z,
),
    void Function(
  double x,
  double y,
  double z,
)>('glScalef');

void glScissor(
  int x,
  int y,
  int width,
  int height,
) =>
    _glScissor(
      x,
      y,
      width,
      height,
    );

late final _glScissor = _opengl32.lookupFunction<
    Void Function(
  Int32 x,
  Int32 y,
  Int32 width,
  Int32 height,
),
    void Function(
  int x,
  int y,
  int width,
  int height,
)>('glScissor');

void glSelectBuffer(
  int size,
  Pointer<Uint32> buffer,
) =>
    _glSelectBuffer(
      size,
      buffer,
    );

late final _glSelectBuffer = _opengl32.lookupFunction<
    Void Function(
  Int32 size,
  Pointer<Uint32> buffer,
),
    void Function(
  int size,
  Pointer<Uint32> buffer,
)>('glSelectBuffer');

void glShadeModel(
  int mode,
) =>
    _glShadeModel(
      mode,
    );

late final _glShadeModel = _opengl32.lookupFunction<
    Void Function(
  Uint32 mode,
),
    void Function(
  int mode,
)>('glShadeModel');

void glStencilFunc(
  int func,
  int ref,
  int mask,
) =>
    _glStencilFunc(
      func,
      ref,
      mask,
    );

late final _glStencilFunc = _opengl32.lookupFunction<
    Void Function(
  Uint32 func,
  Int32 ref,
  Uint32 mask,
),
    void Function(
  int func,
  int ref,
  int mask,
)>('glStencilFunc');

void glStencilMask(
  int mask,
) =>
    _glStencilMask(
      mask,
    );

late final _glStencilMask = _opengl32.lookupFunction<
    Void Function(
  Uint32 mask,
),
    void Function(
  int mask,
)>('glStencilMask');

void glStencilOp(
  int fail,
  int zfail,
  int zpass,
) =>
    _glStencilOp(
      fail,
      zfail,
      zpass,
    );

late final _glStencilOp = _opengl32.lookupFunction<
    Void Function(
  Uint32 fail,
  Uint32 zfail,
  Uint32 zpass,
),
    void Function(
  int fail,
  int zfail,
  int zpass,
)>('glStencilOp');

void glTexCoord1d(
  double s,
) =>
    _glTexCoord1d(
      s,
    );

late final _glTexCoord1d = _opengl32.lookupFunction<
    Void Function(
  Double s,
),
    void Function(
  double s,
)>('glTexCoord1d');

void glTexCoord1dv(
  Pointer<Double> v,
) =>
    _glTexCoord1dv(
      v,
    );

late final _glTexCoord1dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v,
),
    void Function(
  Pointer<Double> v,
)>('glTexCoord1dv');

void glTexCoord1f(
  double s,
) =>
    _glTexCoord1f(
      s,
    );

late final _glTexCoord1f = _opengl32.lookupFunction<
    Void Function(
  Float s,
),
    void Function(
  double s,
)>('glTexCoord1f');

void glTexCoord1fv(
  Pointer<Float> v,
) =>
    _glTexCoord1fv(
      v,
    );

late final _glTexCoord1fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v,
),
    void Function(
  Pointer<Float> v,
)>('glTexCoord1fv');

void glTexCoord1i(
  int s,
) =>
    _glTexCoord1i(
      s,
    );

late final _glTexCoord1i = _opengl32.lookupFunction<
    Void Function(
  Int32 s,
),
    void Function(
  int s,
)>('glTexCoord1i');

void glTexCoord1iv(
  Pointer<Int32> v,
) =>
    _glTexCoord1iv(
      v,
    );

late final _glTexCoord1iv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v,
),
    void Function(
  Pointer<Int32> v,
)>('glTexCoord1iv');

void glTexCoord1s(
  int s,
) =>
    _glTexCoord1s(
      s,
    );

late final _glTexCoord1s = _opengl32.lookupFunction<
    Void Function(
  Int16 s,
),
    void Function(
  int s,
)>('glTexCoord1s');

void glTexCoord1sv(
  Pointer<Int16> v,
) =>
    _glTexCoord1sv(
      v,
    );

late final _glTexCoord1sv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v,
),
    void Function(
  Pointer<Int16> v,
)>('glTexCoord1sv');

void glTexCoord2d(
  double s,
  double t,
) =>
    _glTexCoord2d(
      s,
      t,
    );

late final _glTexCoord2d = _opengl32.lookupFunction<
    Void Function(
  Double s,
  Double t,
),
    void Function(
  double s,
  double t,
)>('glTexCoord2d');

void glTexCoord2dv(
  Pointer<Double> v,
) =>
    _glTexCoord2dv(
      v,
    );

late final _glTexCoord2dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v,
),
    void Function(
  Pointer<Double> v,
)>('glTexCoord2dv');

void glTexCoord2f(
  double s,
  double t,
) =>
    _glTexCoord2f(
      s,
      t,
    );

late final _glTexCoord2f = _opengl32.lookupFunction<
    Void Function(
  Float s,
  Float t,
),
    void Function(
  double s,
  double t,
)>('glTexCoord2f');

void glTexCoord2fv(
  Pointer<Float> v,
) =>
    _glTexCoord2fv(
      v,
    );

late final _glTexCoord2fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v,
),
    void Function(
  Pointer<Float> v,
)>('glTexCoord2fv');

void glTexCoord2i(
  int s,
  int t,
) =>
    _glTexCoord2i(
      s,
      t,
    );

late final _glTexCoord2i = _opengl32.lookupFunction<
    Void Function(
  Int32 s,
  Int32 t,
),
    void Function(
  int s,
  int t,
)>('glTexCoord2i');

void glTexCoord2iv(
  Pointer<Int32> v,
) =>
    _glTexCoord2iv(
      v,
    );

late final _glTexCoord2iv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v,
),
    void Function(
  Pointer<Int32> v,
)>('glTexCoord2iv');

void glTexCoord2s(
  int s,
  int t,
) =>
    _glTexCoord2s(
      s,
      t,
    );

late final _glTexCoord2s = _opengl32.lookupFunction<
    Void Function(
  Int16 s,
  Int16 t,
),
    void Function(
  int s,
  int t,
)>('glTexCoord2s');

void glTexCoord2sv(
  Pointer<Int16> v,
) =>
    _glTexCoord2sv(
      v,
    );

late final _glTexCoord2sv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v,
),
    void Function(
  Pointer<Int16> v,
)>('glTexCoord2sv');

void glTexCoord3d(
  double s,
  double t,
  double r,
) =>
    _glTexCoord3d(
      s,
      t,
      r,
    );

late final _glTexCoord3d = _opengl32.lookupFunction<
    Void Function(
  Double s,
  Double t,
  Double r,
),
    void Function(
  double s,
  double t,
  double r,
)>('glTexCoord3d');

void glTexCoord3dv(
  Pointer<Double> v,
) =>
    _glTexCoord3dv(
      v,
    );

late final _glTexCoord3dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v,
),
    void Function(
  Pointer<Double> v,
)>('glTexCoord3dv');

void glTexCoord3f(
  double s,
  double t,
  double r,
) =>
    _glTexCoord3f(
      s,
      t,
      r,
    );

late final _glTexCoord3f = _opengl32.lookupFunction<
    Void Function(
  Float s,
  Float t,
  Float r,
),
    void Function(
  double s,
  double t,
  double r,
)>('glTexCoord3f');

void glTexCoord3fv(
  Pointer<Float> v,
) =>
    _glTexCoord3fv(
      v,
    );

late final _glTexCoord3fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v,
),
    void Function(
  Pointer<Float> v,
)>('glTexCoord3fv');

void glTexCoord3i(
  int s,
  int t,
  int r,
) =>
    _glTexCoord3i(
      s,
      t,
      r,
    );

late final _glTexCoord3i = _opengl32.lookupFunction<
    Void Function(
  Int32 s,
  Int32 t,
  Int32 r,
),
    void Function(
  int s,
  int t,
  int r,
)>('glTexCoord3i');

void glTexCoord3iv(
  Pointer<Int32> v,
) =>
    _glTexCoord3iv(
      v,
    );

late final _glTexCoord3iv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v,
),
    void Function(
  Pointer<Int32> v,
)>('glTexCoord3iv');

void glTexCoord3s(
  int s,
  int t,
  int r,
) =>
    _glTexCoord3s(
      s,
      t,
      r,
    );

late final _glTexCoord3s = _opengl32.lookupFunction<
    Void Function(
  Int16 s,
  Int16 t,
  Int16 r,
),
    void Function(
  int s,
  int t,
  int r,
)>('glTexCoord3s');

void glTexCoord3sv(
  Pointer<Int16> v,
) =>
    _glTexCoord3sv(
      v,
    );

late final _glTexCoord3sv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v,
),
    void Function(
  Pointer<Int16> v,
)>('glTexCoord3sv');

void glTexCoord4d(
  double s,
  double t,
  double r,
  double q,
) =>
    _glTexCoord4d(
      s,
      t,
      r,
      q,
    );

late final _glTexCoord4d = _opengl32.lookupFunction<
    Void Function(
  Double s,
  Double t,
  Double r,
  Double q,
),
    void Function(
  double s,
  double t,
  double r,
  double q,
)>('glTexCoord4d');

void glTexCoord4dv(
  Pointer<Double> v,
) =>
    _glTexCoord4dv(
      v,
    );

late final _glTexCoord4dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v,
),
    void Function(
  Pointer<Double> v,
)>('glTexCoord4dv');

void glTexCoord4f(
  double s,
  double t,
  double r,
  double q,
) =>
    _glTexCoord4f(
      s,
      t,
      r,
      q,
    );

late final _glTexCoord4f = _opengl32.lookupFunction<
    Void Function(
  Float s,
  Float t,
  Float r,
  Float q,
),
    void Function(
  double s,
  double t,
  double r,
  double q,
)>('glTexCoord4f');

void glTexCoord4fv(
  Pointer<Float> v,
) =>
    _glTexCoord4fv(
      v,
    );

late final _glTexCoord4fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v,
),
    void Function(
  Pointer<Float> v,
)>('glTexCoord4fv');

void glTexCoord4i(
  int s,
  int t,
  int r,
  int q,
) =>
    _glTexCoord4i(
      s,
      t,
      r,
      q,
    );

late final _glTexCoord4i = _opengl32.lookupFunction<
    Void Function(
  Int32 s,
  Int32 t,
  Int32 r,
  Int32 q,
),
    void Function(
  int s,
  int t,
  int r,
  int q,
)>('glTexCoord4i');

void glTexCoord4iv(
  Pointer<Int32> v,
) =>
    _glTexCoord4iv(
      v,
    );

late final _glTexCoord4iv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v,
),
    void Function(
  Pointer<Int32> v,
)>('glTexCoord4iv');

void glTexCoord4s(
  int s,
  int t,
  int r,
  int q,
) =>
    _glTexCoord4s(
      s,
      t,
      r,
      q,
    );

late final _glTexCoord4s = _opengl32.lookupFunction<
    Void Function(
  Int16 s,
  Int16 t,
  Int16 r,
  Int16 q,
),
    void Function(
  int s,
  int t,
  int r,
  int q,
)>('glTexCoord4s');

void glTexCoord4sv(
  Pointer<Int16> v,
) =>
    _glTexCoord4sv(
      v,
    );

late final _glTexCoord4sv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v,
),
    void Function(
  Pointer<Int16> v,
)>('glTexCoord4sv');

void glTexCoordPointer(
  int size,
  int type,
  int stride,
  Pointer pointer,
) =>
    _glTexCoordPointer(
      size,
      type,
      stride,
      pointer,
    );

late final _glTexCoordPointer = _opengl32.lookupFunction<
    Void Function(
  Int32 size,
  Uint32 type,
  Int32 stride,
  Pointer pointer,
),
    void Function(
  int size,
  int type,
  int stride,
  Pointer pointer,
)>('glTexCoordPointer');

void glTexEnvf(
  int target,
  int pname,
  double param2,
) =>
    _glTexEnvf(
      target,
      pname,
      param2,
    );

late final _glTexEnvf = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 pname,
  Float param2,
),
    void Function(
  int target,
  int pname,
  double param2,
)>('glTexEnvf');

void glTexEnvfv(
  int target,
  int pname,
  Pointer<Float> params,
) =>
    _glTexEnvfv(
      target,
      pname,
      params,
    );

late final _glTexEnvfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int target,
  int pname,
  Pointer<Float> params,
)>('glTexEnvfv');

void glTexEnvi(
  int target,
  int pname,
  int param2,
) =>
    _glTexEnvi(
      target,
      pname,
      param2,
    );

late final _glTexEnvi = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 pname,
  Int32 param2,
),
    void Function(
  int target,
  int pname,
  int param2,
)>('glTexEnvi');

void glTexEnviv(
  int target,
  int pname,
  Pointer<Int32> params,
) =>
    _glTexEnviv(
      target,
      pname,
      params,
    );

late final _glTexEnviv = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int target,
  int pname,
  Pointer<Int32> params,
)>('glTexEnviv');

void glTexGend(
  int coord,
  int pname,
  double param2,
) =>
    _glTexGend(
      coord,
      pname,
      param2,
    );

late final _glTexGend = _opengl32.lookupFunction<
    Void Function(
  Uint32 coord,
  Uint32 pname,
  Double param2,
),
    void Function(
  int coord,
  int pname,
  double param2,
)>('glTexGend');

void glTexGendv(
  int coord,
  int pname,
  Pointer<Double> params,
) =>
    _glTexGendv(
      coord,
      pname,
      params,
    );

late final _glTexGendv = _opengl32.lookupFunction<
    Void Function(
  Uint32 coord,
  Uint32 pname,
  Pointer<Double> params,
),
    void Function(
  int coord,
  int pname,
  Pointer<Double> params,
)>('glTexGendv');

void glTexGenf(
  int coord,
  int pname,
  double param2,
) =>
    _glTexGenf(
      coord,
      pname,
      param2,
    );

late final _glTexGenf = _opengl32.lookupFunction<
    Void Function(
  Uint32 coord,
  Uint32 pname,
  Float param2,
),
    void Function(
  int coord,
  int pname,
  double param2,
)>('glTexGenf');

void glTexGenfv(
  int coord,
  int pname,
  Pointer<Float> params,
) =>
    _glTexGenfv(
      coord,
      pname,
      params,
    );

late final _glTexGenfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 coord,
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int coord,
  int pname,
  Pointer<Float> params,
)>('glTexGenfv');

void glTexGeni(
  int coord,
  int pname,
  int param2,
) =>
    _glTexGeni(
      coord,
      pname,
      param2,
    );

late final _glTexGeni = _opengl32.lookupFunction<
    Void Function(
  Uint32 coord,
  Uint32 pname,
  Int32 param2,
),
    void Function(
  int coord,
  int pname,
  int param2,
)>('glTexGeni');

void glTexGeniv(
  int coord,
  int pname,
  Pointer<Int32> params,
) =>
    _glTexGeniv(
      coord,
      pname,
      params,
    );

late final _glTexGeniv = _opengl32.lookupFunction<
    Void Function(
  Uint32 coord,
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int coord,
  int pname,
  Pointer<Int32> params,
)>('glTexGeniv');

void glTexImage1D(
  int target,
  int level,
  int internalformat,
  int width,
  int border,
  int format,
  int type,
  Pointer pixels,
) =>
    _glTexImage1D(
      target,
      level,
      internalformat,
      width,
      border,
      format,
      type,
      pixels,
    );

late final _glTexImage1D = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Int32 level,
  Int32 internalformat,
  Int32 width,
  Int32 border,
  Uint32 format,
  Uint32 type,
  Pointer pixels,
),
    void Function(
  int target,
  int level,
  int internalformat,
  int width,
  int border,
  int format,
  int type,
  Pointer pixels,
)>('glTexImage1D');

void glTexImage2D(
  int target,
  int level,
  int internalformat,
  int width,
  int height,
  int border,
  int format,
  int type,
  Pointer pixels,
) =>
    _glTexImage2D(
      target,
      level,
      internalformat,
      width,
      height,
      border,
      format,
      type,
      pixels,
    );

late final _glTexImage2D = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Int32 level,
  Int32 internalformat,
  Int32 width,
  Int32 height,
  Int32 border,
  Uint32 format,
  Uint32 type,
  Pointer pixels,
),
    void Function(
  int target,
  int level,
  int internalformat,
  int width,
  int height,
  int border,
  int format,
  int type,
  Pointer pixels,
)>('glTexImage2D');

void glTexParameterf(
  int target,
  int pname,
  double param2,
) =>
    _glTexParameterf(
      target,
      pname,
      param2,
    );

late final _glTexParameterf = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 pname,
  Float param2,
),
    void Function(
  int target,
  int pname,
  double param2,
)>('glTexParameterf');

void glTexParameterfv(
  int target,
  int pname,
  Pointer<Float> params,
) =>
    _glTexParameterfv(
      target,
      pname,
      params,
    );

late final _glTexParameterfv = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 pname,
  Pointer<Float> params,
),
    void Function(
  int target,
  int pname,
  Pointer<Float> params,
)>('glTexParameterfv');

void glTexParameteri(
  int target,
  int pname,
  int param2,
) =>
    _glTexParameteri(
      target,
      pname,
      param2,
    );

late final _glTexParameteri = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 pname,
  Int32 param2,
),
    void Function(
  int target,
  int pname,
  int param2,
)>('glTexParameteri');

void glTexParameteriv(
  int target,
  int pname,
  Pointer<Int32> params,
) =>
    _glTexParameteriv(
      target,
      pname,
      params,
    );

late final _glTexParameteriv = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Uint32 pname,
  Pointer<Int32> params,
),
    void Function(
  int target,
  int pname,
  Pointer<Int32> params,
)>('glTexParameteriv');

void glTexSubImage1D(
  int target,
  int level,
  int xoffset,
  int width,
  int format,
  int type,
  Pointer pixels,
) =>
    _glTexSubImage1D(
      target,
      level,
      xoffset,
      width,
      format,
      type,
      pixels,
    );

late final _glTexSubImage1D = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Int32 level,
  Int32 xoffset,
  Int32 width,
  Uint32 format,
  Uint32 type,
  Pointer pixels,
),
    void Function(
  int target,
  int level,
  int xoffset,
  int width,
  int format,
  int type,
  Pointer pixels,
)>('glTexSubImage1D');

void glTexSubImage2D(
  int target,
  int level,
  int xoffset,
  int yoffset,
  int width,
  int height,
  int format,
  int type,
  Pointer pixels,
) =>
    _glTexSubImage2D(
      target,
      level,
      xoffset,
      yoffset,
      width,
      height,
      format,
      type,
      pixels,
    );

late final _glTexSubImage2D = _opengl32.lookupFunction<
    Void Function(
  Uint32 target,
  Int32 level,
  Int32 xoffset,
  Int32 yoffset,
  Int32 width,
  Int32 height,
  Uint32 format,
  Uint32 type,
  Pointer pixels,
),
    void Function(
  int target,
  int level,
  int xoffset,
  int yoffset,
  int width,
  int height,
  int format,
  int type,
  Pointer pixels,
)>('glTexSubImage2D');

void glTranslated(
  double x,
  double y,
  double z,
) =>
    _glTranslated(
      x,
      y,
      z,
    );

late final _glTranslated = _opengl32.lookupFunction<
    Void Function(
  Double x,
  Double y,
  Double z,
),
    void Function(
  double x,
  double y,
  double z,
)>('glTranslated');

void glTranslatef(
  double x,
  double y,
  double z,
) =>
    _glTranslatef(
      x,
      y,
      z,
    );

late final _glTranslatef = _opengl32.lookupFunction<
    Void Function(
  Float x,
  Float y,
  Float z,
),
    void Function(
  double x,
  double y,
  double z,
)>('glTranslatef');

void glVertex2d(
  double x,
  double y,
) =>
    _glVertex2d(
      x,
      y,
    );

late final _glVertex2d = _opengl32.lookupFunction<
    Void Function(
  Double x,
  Double y,
),
    void Function(
  double x,
  double y,
)>('glVertex2d');

void glVertex2dv(
  Pointer<Double> v,
) =>
    _glVertex2dv(
      v,
    );

late final _glVertex2dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v,
),
    void Function(
  Pointer<Double> v,
)>('glVertex2dv');

void glVertex2f(
  double x,
  double y,
) =>
    _glVertex2f(
      x,
      y,
    );

late final _glVertex2f = _opengl32.lookupFunction<
    Void Function(
  Float x,
  Float y,
),
    void Function(
  double x,
  double y,
)>('glVertex2f');

void glVertex2fv(
  Pointer<Float> v,
) =>
    _glVertex2fv(
      v,
    );

late final _glVertex2fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v,
),
    void Function(
  Pointer<Float> v,
)>('glVertex2fv');

void glVertex2i(
  int x,
  int y,
) =>
    _glVertex2i(
      x,
      y,
    );

late final _glVertex2i = _opengl32.lookupFunction<
    Void Function(
  Int32 x,
  Int32 y,
),
    void Function(
  int x,
  int y,
)>('glVertex2i');

void glVertex2iv(
  Pointer<Int32> v,
) =>
    _glVertex2iv(
      v,
    );

late final _glVertex2iv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v,
),
    void Function(
  Pointer<Int32> v,
)>('glVertex2iv');

void glVertex2s(
  int x,
  int y,
) =>
    _glVertex2s(
      x,
      y,
    );

late final _glVertex2s = _opengl32.lookupFunction<
    Void Function(
  Int16 x,
  Int16 y,
),
    void Function(
  int x,
  int y,
)>('glVertex2s');

void glVertex2sv(
  Pointer<Int16> v,
) =>
    _glVertex2sv(
      v,
    );

late final _glVertex2sv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v,
),
    void Function(
  Pointer<Int16> v,
)>('glVertex2sv');

void glVertex3d(
  double x,
  double y,
  double z,
) =>
    _glVertex3d(
      x,
      y,
      z,
    );

late final _glVertex3d = _opengl32.lookupFunction<
    Void Function(
  Double x,
  Double y,
  Double z,
),
    void Function(
  double x,
  double y,
  double z,
)>('glVertex3d');

void glVertex3dv(
  Pointer<Double> v,
) =>
    _glVertex3dv(
      v,
    );

late final _glVertex3dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v,
),
    void Function(
  Pointer<Double> v,
)>('glVertex3dv');

void glVertex3f(
  double x,
  double y,
  double z,
) =>
    _glVertex3f(
      x,
      y,
      z,
    );

late final _glVertex3f = _opengl32.lookupFunction<
    Void Function(
  Float x,
  Float y,
  Float z,
),
    void Function(
  double x,
  double y,
  double z,
)>('glVertex3f');

void glVertex3fv(
  Pointer<Float> v,
) =>
    _glVertex3fv(
      v,
    );

late final _glVertex3fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v,
),
    void Function(
  Pointer<Float> v,
)>('glVertex3fv');

void glVertex3i(
  int x,
  int y,
  int z,
) =>
    _glVertex3i(
      x,
      y,
      z,
    );

late final _glVertex3i = _opengl32.lookupFunction<
    Void Function(
  Int32 x,
  Int32 y,
  Int32 z,
),
    void Function(
  int x,
  int y,
  int z,
)>('glVertex3i');

void glVertex3iv(
  Pointer<Int32> v,
) =>
    _glVertex3iv(
      v,
    );

late final _glVertex3iv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v,
),
    void Function(
  Pointer<Int32> v,
)>('glVertex3iv');

void glVertex3s(
  int x,
  int y,
  int z,
) =>
    _glVertex3s(
      x,
      y,
      z,
    );

late final _glVertex3s = _opengl32.lookupFunction<
    Void Function(
  Int16 x,
  Int16 y,
  Int16 z,
),
    void Function(
  int x,
  int y,
  int z,
)>('glVertex3s');

void glVertex3sv(
  Pointer<Int16> v,
) =>
    _glVertex3sv(
      v,
    );

late final _glVertex3sv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v,
),
    void Function(
  Pointer<Int16> v,
)>('glVertex3sv');

void glVertex4d(
  double x,
  double y,
  double z,
  double w,
) =>
    _glVertex4d(
      x,
      y,
      z,
      w,
    );

late final _glVertex4d = _opengl32.lookupFunction<
    Void Function(
  Double x,
  Double y,
  Double z,
  Double w,
),
    void Function(
  double x,
  double y,
  double z,
  double w,
)>('glVertex4d');

void glVertex4dv(
  Pointer<Double> v,
) =>
    _glVertex4dv(
      v,
    );

late final _glVertex4dv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Double> v,
),
    void Function(
  Pointer<Double> v,
)>('glVertex4dv');

void glVertex4f(
  double x,
  double y,
  double z,
  double w,
) =>
    _glVertex4f(
      x,
      y,
      z,
      w,
    );

late final _glVertex4f = _opengl32.lookupFunction<
    Void Function(
  Float x,
  Float y,
  Float z,
  Float w,
),
    void Function(
  double x,
  double y,
  double z,
  double w,
)>('glVertex4f');

void glVertex4fv(
  Pointer<Float> v,
) =>
    _glVertex4fv(
      v,
    );

late final _glVertex4fv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Float> v,
),
    void Function(
  Pointer<Float> v,
)>('glVertex4fv');

void glVertex4i(
  int x,
  int y,
  int z,
  int w,
) =>
    _glVertex4i(
      x,
      y,
      z,
      w,
    );

late final _glVertex4i = _opengl32.lookupFunction<
    Void Function(
  Int32 x,
  Int32 y,
  Int32 z,
  Int32 w,
),
    void Function(
  int x,
  int y,
  int z,
  int w,
)>('glVertex4i');

void glVertex4iv(
  Pointer<Int32> v,
) =>
    _glVertex4iv(
      v,
    );

late final _glVertex4iv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int32> v,
),
    void Function(
  Pointer<Int32> v,
)>('glVertex4iv');

void glVertex4s(
  int x,
  int y,
  int z,
  int w,
) =>
    _glVertex4s(
      x,
      y,
      z,
      w,
    );

late final _glVertex4s = _opengl32.lookupFunction<
    Void Function(
  Int16 x,
  Int16 y,
  Int16 z,
  Int16 w,
),
    void Function(
  int x,
  int y,
  int z,
  int w,
)>('glVertex4s');

void glVertex4sv(
  Pointer<Int16> v,
) =>
    _glVertex4sv(
      v,
    );

late final _glVertex4sv = _opengl32.lookupFunction<
    Void Function(
  Pointer<Int16> v,
),
    void Function(
  Pointer<Int16> v,
)>('glVertex4sv');

void glVertexPointer(
  int size,
  int type,
  int stride,
  Pointer pointer,
) =>
    _glVertexPointer(
      size,
      type,
      stride,
      pointer,
    );

late final _glVertexPointer = _opengl32.lookupFunction<
    Void Function(
  Int32 size,
  Uint32 type,
  Int32 stride,
  Pointer pointer,
),
    void Function(
  int size,
  int type,
  int stride,
  Pointer pointer,
)>('glVertexPointer');

void glViewport(
  int x,
  int y,
  int width,
  int height,
) =>
    _glViewport(
      x,
      y,
      width,
      height,
    );

late final _glViewport = _opengl32.lookupFunction<
    Void Function(
  Int32 x,
  Int32 y,
  Int32 width,
  Int32 height,
),
    void Function(
  int x,
  int y,
  int width,
  int height,
)>('glViewport');

int wglCopyContext(
  int param0,
  int param1,
  int param2,
) =>
    _wglCopyContext(
      param0,
      param1,
      param2,
    );

late final _wglCopyContext = _opengl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  IntPtr param1,
  Uint32 param2,
),
    int Function(
  int param0,
  int param1,
  int param2,
)>('wglCopyContext');

int wglCreateContext(
  int param0,
) =>
    _wglCreateContext(
      param0,
    );

late final _wglCreateContext = _opengl32.lookupFunction<
    IntPtr Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('wglCreateContext');

int wglCreateLayerContext(
  int param0,
  int param1,
) =>
    _wglCreateLayerContext(
      param0,
      param1,
    );

late final _wglCreateLayerContext = _opengl32.lookupFunction<
    IntPtr Function(
  IntPtr param0,
  Int32 param1,
),
    int Function(
  int param0,
  int param1,
)>('wglCreateLayerContext');

int wglDeleteContext(
  int param0,
) =>
    _wglDeleteContext(
      param0,
    );

late final _wglDeleteContext = _opengl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('wglDeleteContext');

int wglDescribeLayerPlane(
  int param0,
  int param1,
  int param2,
  int param3,
  Pointer<LAYERPLANEDESCRIPTOR> param4,
) =>
    _wglDescribeLayerPlane(
      param0,
      param1,
      param2,
      param3,
      param4,
    );

late final _wglDescribeLayerPlane = _opengl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Int32 param1,
  Int32 param2,
  Uint32 param3,
  Pointer<LAYERPLANEDESCRIPTOR> param4,
),
    int Function(
  int param0,
  int param1,
  int param2,
  int param3,
  Pointer<LAYERPLANEDESCRIPTOR> param4,
)>('wglDescribeLayerPlane');

int wglGetCurrentContext() => _wglGetCurrentContext();

late final _wglGetCurrentContext = _opengl32
    .lookupFunction<IntPtr Function(), int Function()>('wglGetCurrentContext');

int wglGetCurrentDC() => _wglGetCurrentDC();

late final _wglGetCurrentDC = _opengl32
    .lookupFunction<IntPtr Function(), int Function()>('wglGetCurrentDC');

int wglGetLayerPaletteEntries(
  int param0,
  int param1,
  int param2,
  int param3,
  Pointer<Uint32> param4,
) =>
    _wglGetLayerPaletteEntries(
      param0,
      param1,
      param2,
      param3,
      param4,
    );

late final _wglGetLayerPaletteEntries = _opengl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Int32 param1,
  Int32 param2,
  Int32 param3,
  Pointer<Uint32> param4,
),
    int Function(
  int param0,
  int param1,
  int param2,
  int param3,
  Pointer<Uint32> param4,
)>('wglGetLayerPaletteEntries');

Pointer wglGetProcAddress(
  Pointer<Utf8> param0,
) =>
    _wglGetProcAddress(
      param0,
    );

late final _wglGetProcAddress = _opengl32.lookupFunction<
    Pointer Function(
  Pointer<Utf8> param0,
),
    Pointer Function(
  Pointer<Utf8> param0,
)>('wglGetProcAddress');

int wglMakeCurrent(
  int param0,
  int param1,
) =>
    _wglMakeCurrent(
      param0,
      param1,
    );

late final _wglMakeCurrent = _opengl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  IntPtr param1,
),
    int Function(
  int param0,
  int param1,
)>('wglMakeCurrent');

int wglRealizeLayerPalette(
  int param0,
  int param1,
  int param2,
) =>
    _wglRealizeLayerPalette(
      param0,
      param1,
      param2,
    );

late final _wglRealizeLayerPalette = _opengl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Int32 param1,
  Int32 param2,
),
    int Function(
  int param0,
  int param1,
  int param2,
)>('wglRealizeLayerPalette');

int wglSetLayerPaletteEntries(
  int param0,
  int param1,
  int param2,
  int param3,
  Pointer<Uint32> param4,
) =>
    _wglSetLayerPaletteEntries(
      param0,
      param1,
      param2,
      param3,
      param4,
    );

late final _wglSetLayerPaletteEntries = _opengl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Int32 param1,
  Int32 param2,
  Int32 param3,
  Pointer<Uint32> param4,
),
    int Function(
  int param0,
  int param1,
  int param2,
  int param3,
  Pointer<Uint32> param4,
)>('wglSetLayerPaletteEntries');

int wglShareLists(
  int param0,
  int param1,
) =>
    _wglShareLists(
      param0,
      param1,
    );

late final _wglShareLists = _opengl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  IntPtr param1,
),
    int Function(
  int param0,
  int param1,
)>('wglShareLists');

int wglSwapLayerBuffers(
  int param0,
  int param1,
) =>
    _wglSwapLayerBuffers(
      param0,
      param1,
    );

late final _wglSwapLayerBuffers = _opengl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 param1,
),
    int Function(
  int param0,
  int param1,
)>('wglSwapLayerBuffers');

int wglUseFontBitmaps(
  int param0,
  int param1,
  int param2,
  int param3,
) =>
    _wglUseFontBitmaps(
      param0,
      param1,
      param2,
      param3,
    );

late final _wglUseFontBitmaps = _opengl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 param1,
  Uint32 param2,
  Uint32 param3,
),
    int Function(
  int param0,
  int param1,
  int param2,
  int param3,
)>('wglUseFontBitmapsW');

int wglUseFontOutlines(
  int param0,
  int param1,
  int param2,
  int param3,
  double param4,
  double param5,
  int param6,
  Pointer<GLYPHMETRICSFLOAT> param7,
) =>
    _wglUseFontOutlines(
      param0,
      param1,
      param2,
      param3,
      param4,
      param5,
      param6,
      param7,
    );

late final _wglUseFontOutlines = _opengl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 param1,
  Uint32 param2,
  Uint32 param3,
  Float param4,
  Float param5,
  Int32 param6,
  Pointer<GLYPHMETRICSFLOAT> param7,
),
    int Function(
  int param0,
  int param1,
  int param2,
  int param3,
  double param4,
  double param5,
  int param6,
  Pointer<GLYPHMETRICSFLOAT> param7,
)>('wglUseFontOutlinesW');

// -----------------------------------------------------------------------
// glu32.dll
// -----------------------------------------------------------------------
final _glu32 = DynamicLibrary.open('glu32.dll');

void gluBeginCurve(
  Pointer<GLUnurbs> nobj,
) =>
    _gluBeginCurve(
      nobj,
    );

late final _gluBeginCurve = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
),
    void Function(
  Pointer<GLUnurbs> nobj,
)>('gluBeginCurve');

void gluBeginPolygon(
  Pointer<GLUtesselator> tess,
) =>
    _gluBeginPolygon(
      tess,
    );

late final _gluBeginPolygon = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUtesselator> tess,
),
    void Function(
  Pointer<GLUtesselator> tess,
)>('gluBeginPolygon');

void gluBeginSurface(
  Pointer<GLUnurbs> nobj,
) =>
    _gluBeginSurface(
      nobj,
    );

late final _gluBeginSurface = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
),
    void Function(
  Pointer<GLUnurbs> nobj,
)>('gluBeginSurface');

void gluBeginTrim(
  Pointer<GLUnurbs> nobj,
) =>
    _gluBeginTrim(
      nobj,
    );

late final _gluBeginTrim = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
),
    void Function(
  Pointer<GLUnurbs> nobj,
)>('gluBeginTrim');

int gluBuild1DMipmaps(
  int target,
  int components,
  int width,
  int format,
  int type,
  Pointer data,
) =>
    _gluBuild1DMipmaps(
      target,
      components,
      width,
      format,
      type,
      data,
    );

late final _gluBuild1DMipmaps = _glu32.lookupFunction<
    Int32 Function(
  Uint32 target,
  Int32 components,
  Int32 width,
  Uint32 format,
  Uint32 type,
  Pointer data,
),
    int Function(
  int target,
  int components,
  int width,
  int format,
  int type,
  Pointer data,
)>('gluBuild1DMipmaps');

int gluBuild2DMipmaps(
  int target,
  int components,
  int width,
  int height,
  int format,
  int type,
  Pointer data,
) =>
    _gluBuild2DMipmaps(
      target,
      components,
      width,
      height,
      format,
      type,
      data,
    );

late final _gluBuild2DMipmaps = _glu32.lookupFunction<
    Int32 Function(
  Uint32 target,
  Int32 components,
  Int32 width,
  Int32 height,
  Uint32 format,
  Uint32 type,
  Pointer data,
),
    int Function(
  int target,
  int components,
  int width,
  int height,
  int format,
  int type,
  Pointer data,
)>('gluBuild2DMipmaps');

void gluCylinder(
  Pointer<GLUquadric> qobj,
  double baseRadius,
  double topRadius,
  double height,
  int slices,
  int stacks,
) =>
    _gluCylinder(
      qobj,
      baseRadius,
      topRadius,
      height,
      slices,
      stacks,
    );

late final _gluCylinder = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUquadric> qobj,
  Double baseRadius,
  Double topRadius,
  Double height,
  Int32 slices,
  Int32 stacks,
),
    void Function(
  Pointer<GLUquadric> qobj,
  double baseRadius,
  double topRadius,
  double height,
  int slices,
  int stacks,
)>('gluCylinder');

void gluDeleteNurbsRenderer(
  Pointer<GLUnurbs> nobj,
) =>
    _gluDeleteNurbsRenderer(
      nobj,
    );

late final _gluDeleteNurbsRenderer = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
),
    void Function(
  Pointer<GLUnurbs> nobj,
)>('gluDeleteNurbsRenderer');

void gluDeleteQuadric(
  Pointer<GLUquadric> state,
) =>
    _gluDeleteQuadric(
      state,
    );

late final _gluDeleteQuadric = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUquadric> state,
),
    void Function(
  Pointer<GLUquadric> state,
)>('gluDeleteQuadric');

void gluDeleteTess(
  Pointer<GLUtesselator> tess,
) =>
    _gluDeleteTess(
      tess,
    );

late final _gluDeleteTess = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUtesselator> tess,
),
    void Function(
  Pointer<GLUtesselator> tess,
)>('gluDeleteTess');

void gluDisk(
  Pointer<GLUquadric> qobj,
  double innerRadius,
  double outerRadius,
  int slices,
  int loops,
) =>
    _gluDisk(
      qobj,
      innerRadius,
      outerRadius,
      slices,
      loops,
    );

late final _gluDisk = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUquadric> qobj,
  Double innerRadius,
  Double outerRadius,
  Int32 slices,
  Int32 loops,
),
    void Function(
  Pointer<GLUquadric> qobj,
  double innerRadius,
  double outerRadius,
  int slices,
  int loops,
)>('gluDisk');

void gluEndCurve(
  Pointer<GLUnurbs> nobj,
) =>
    _gluEndCurve(
      nobj,
    );

late final _gluEndCurve = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
),
    void Function(
  Pointer<GLUnurbs> nobj,
)>('gluEndCurve');

void gluEndPolygon(
  Pointer<GLUtesselator> tess,
) =>
    _gluEndPolygon(
      tess,
    );

late final _gluEndPolygon = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUtesselator> tess,
),
    void Function(
  Pointer<GLUtesselator> tess,
)>('gluEndPolygon');

void gluEndSurface(
  Pointer<GLUnurbs> nobj,
) =>
    _gluEndSurface(
      nobj,
    );

late final _gluEndSurface = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
),
    void Function(
  Pointer<GLUnurbs> nobj,
)>('gluEndSurface');

void gluEndTrim(
  Pointer<GLUnurbs> nobj,
) =>
    _gluEndTrim(
      nobj,
    );

late final _gluEndTrim = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
),
    void Function(
  Pointer<GLUnurbs> nobj,
)>('gluEndTrim');

Pointer<Uint8> gluErrorString(
  int errCode,
) =>
    _gluErrorString(
      errCode,
    );

late final _gluErrorString = _glu32.lookupFunction<
    Pointer<Uint8> Function(
  Uint32 errCode,
),
    Pointer<Uint8> Function(
  int errCode,
)>('gluErrorString');

Pointer<Utf16> gluErrorUnicodeStringEXT(
  int errCode,
) =>
    _gluErrorUnicodeStringEXT(
      errCode,
    );

late final _gluErrorUnicodeStringEXT = _glu32.lookupFunction<
    Pointer<Utf16> Function(
  Uint32 errCode,
),
    Pointer<Utf16> Function(
  int errCode,
)>('gluErrorUnicodeStringEXT');

void gluGetNurbsProperty(
  Pointer<GLUnurbs> nobj,
  int property,
  Pointer<Float> value,
) =>
    _gluGetNurbsProperty(
      nobj,
      property,
      value,
    );

late final _gluGetNurbsProperty = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
  Uint32 property,
  Pointer<Float> value,
),
    void Function(
  Pointer<GLUnurbs> nobj,
  int property,
  Pointer<Float> value,
)>('gluGetNurbsProperty');

Pointer<Uint8> gluGetString(
  int name,
) =>
    _gluGetString(
      name,
    );

late final _gluGetString = _glu32.lookupFunction<
    Pointer<Uint8> Function(
  Uint32 name,
),
    Pointer<Uint8> Function(
  int name,
)>('gluGetString');

void gluGetTessProperty(
  Pointer<GLUtesselator> tess,
  int which,
  Pointer<Double> value,
) =>
    _gluGetTessProperty(
      tess,
      which,
      value,
    );

late final _gluGetTessProperty = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUtesselator> tess,
  Uint32 which,
  Pointer<Double> value,
),
    void Function(
  Pointer<GLUtesselator> tess,
  int which,
  Pointer<Double> value,
)>('gluGetTessProperty');

void gluLoadSamplingMatrices(
  Pointer<GLUnurbs> nobj,
  Pointer<Float> modelMatrix,
  Pointer<Float> projMatrix,
  Pointer<Int32> viewport,
) =>
    _gluLoadSamplingMatrices(
      nobj,
      modelMatrix,
      projMatrix,
      viewport,
    );

late final _gluLoadSamplingMatrices = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
  Pointer<Float> modelMatrix,
  Pointer<Float> projMatrix,
  Pointer<Int32> viewport,
),
    void Function(
  Pointer<GLUnurbs> nobj,
  Pointer<Float> modelMatrix,
  Pointer<Float> projMatrix,
  Pointer<Int32> viewport,
)>('gluLoadSamplingMatrices');

void gluLookAt(
  double eyex,
  double eyey,
  double eyez,
  double centerx,
  double centery,
  double centerz,
  double upx,
  double upy,
  double upz,
) =>
    _gluLookAt(
      eyex,
      eyey,
      eyez,
      centerx,
      centery,
      centerz,
      upx,
      upy,
      upz,
    );

late final _gluLookAt = _glu32.lookupFunction<
    Void Function(
  Double eyex,
  Double eyey,
  Double eyez,
  Double centerx,
  Double centery,
  Double centerz,
  Double upx,
  Double upy,
  Double upz,
),
    void Function(
  double eyex,
  double eyey,
  double eyez,
  double centerx,
  double centery,
  double centerz,
  double upx,
  double upy,
  double upz,
)>('gluLookAt');

Pointer<GLUnurbs> gluNewNurbsRenderer() => _gluNewNurbsRenderer();

late final _gluNewNurbsRenderer = _glu32.lookupFunction<
    Pointer<GLUnurbs> Function(),
    Pointer<GLUnurbs> Function()>('gluNewNurbsRenderer');

Pointer<GLUquadric> gluNewQuadric() => _gluNewQuadric();

late final _gluNewQuadric = _glu32.lookupFunction<
    Pointer<GLUquadric> Function(),
    Pointer<GLUquadric> Function()>('gluNewQuadric');

Pointer<GLUtesselator> gluNewTess() => _gluNewTess();

late final _gluNewTess = _glu32.lookupFunction<
    Pointer<GLUtesselator> Function(),
    Pointer<GLUtesselator> Function()>('gluNewTess');

void gluNextContour(
  Pointer<GLUtesselator> tess,
  int type,
) =>
    _gluNextContour(
      tess,
      type,
    );

late final _gluNextContour = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUtesselator> tess,
  Uint32 type,
),
    void Function(
  Pointer<GLUtesselator> tess,
  int type,
)>('gluNextContour');

void gluNurbsCallback(
  Pointer<GLUnurbs> nobj,
  int which,
  int fn,
) =>
    _gluNurbsCallback(
      nobj,
      which,
      fn,
    );

late final _gluNurbsCallback = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
  Uint32 which,
  IntPtr fn,
),
    void Function(
  Pointer<GLUnurbs> nobj,
  int which,
  int fn,
)>('gluNurbsCallback');

void gluNurbsCurve(
  Pointer<GLUnurbs> nobj,
  int nknots,
  Pointer<Float> knot,
  int stride,
  Pointer<Float> ctlarray,
  int order,
  int type,
) =>
    _gluNurbsCurve(
      nobj,
      nknots,
      knot,
      stride,
      ctlarray,
      order,
      type,
    );

late final _gluNurbsCurve = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
  Int32 nknots,
  Pointer<Float> knot,
  Int32 stride,
  Pointer<Float> ctlarray,
  Int32 order,
  Uint32 type,
),
    void Function(
  Pointer<GLUnurbs> nobj,
  int nknots,
  Pointer<Float> knot,
  int stride,
  Pointer<Float> ctlarray,
  int order,
  int type,
)>('gluNurbsCurve');

void gluNurbsProperty(
  Pointer<GLUnurbs> nobj,
  int property,
  double value,
) =>
    _gluNurbsProperty(
      nobj,
      property,
      value,
    );

late final _gluNurbsProperty = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
  Uint32 property,
  Float value,
),
    void Function(
  Pointer<GLUnurbs> nobj,
  int property,
  double value,
)>('gluNurbsProperty');

void gluNurbsSurface(
  Pointer<GLUnurbs> nobj,
  int sknot_count,
  Pointer<Float> sknot,
  int tknot_count,
  Pointer<Float> tknot,
  int s_stride,
  int t_stride,
  Pointer<Float> ctlarray,
  int sorder,
  int torder,
  int type,
) =>
    _gluNurbsSurface(
      nobj,
      sknot_count,
      sknot,
      tknot_count,
      tknot,
      s_stride,
      t_stride,
      ctlarray,
      sorder,
      torder,
      type,
    );

late final _gluNurbsSurface = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
  Int32 sknot_count,
  Pointer<Float> sknot,
  Int32 tknot_count,
  Pointer<Float> tknot,
  Int32 s_stride,
  Int32 t_stride,
  Pointer<Float> ctlarray,
  Int32 sorder,
  Int32 torder,
  Uint32 type,
),
    void Function(
  Pointer<GLUnurbs> nobj,
  int sknot_count,
  Pointer<Float> sknot,
  int tknot_count,
  Pointer<Float> tknot,
  int s_stride,
  int t_stride,
  Pointer<Float> ctlarray,
  int sorder,
  int torder,
  int type,
)>('gluNurbsSurface');

void gluOrtho2D(
  double left,
  double right,
  double bottom,
  double top,
) =>
    _gluOrtho2D(
      left,
      right,
      bottom,
      top,
    );

late final _gluOrtho2D = _glu32.lookupFunction<
    Void Function(
  Double left,
  Double right,
  Double bottom,
  Double top,
),
    void Function(
  double left,
  double right,
  double bottom,
  double top,
)>('gluOrtho2D');

void gluPartialDisk(
  Pointer<GLUquadric> qobj,
  double innerRadius,
  double outerRadius,
  int slices,
  int loops,
  double startAngle,
  double sweepAngle,
) =>
    _gluPartialDisk(
      qobj,
      innerRadius,
      outerRadius,
      slices,
      loops,
      startAngle,
      sweepAngle,
    );

late final _gluPartialDisk = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUquadric> qobj,
  Double innerRadius,
  Double outerRadius,
  Int32 slices,
  Int32 loops,
  Double startAngle,
  Double sweepAngle,
),
    void Function(
  Pointer<GLUquadric> qobj,
  double innerRadius,
  double outerRadius,
  int slices,
  int loops,
  double startAngle,
  double sweepAngle,
)>('gluPartialDisk');

void gluPerspective(
  double fovy,
  double aspect,
  double zNear,
  double zFar,
) =>
    _gluPerspective(
      fovy,
      aspect,
      zNear,
      zFar,
    );

late final _gluPerspective = _glu32.lookupFunction<
    Void Function(
  Double fovy,
  Double aspect,
  Double zNear,
  Double zFar,
),
    void Function(
  double fovy,
  double aspect,
  double zNear,
  double zFar,
)>('gluPerspective');

void gluPickMatrix(
  double x,
  double y,
  double width,
  double height,
  Pointer<Int32> viewport,
) =>
    _gluPickMatrix(
      x,
      y,
      width,
      height,
      viewport,
    );

late final _gluPickMatrix = _glu32.lookupFunction<
    Void Function(
  Double x,
  Double y,
  Double width,
  Double height,
  Pointer<Int32> viewport,
),
    void Function(
  double x,
  double y,
  double width,
  double height,
  Pointer<Int32> viewport,
)>('gluPickMatrix');

int gluProject(
  double objx,
  double objy,
  double objz,
  Pointer<Double> modelMatrix,
  Pointer<Double> projMatrix,
  Pointer<Int32> viewport,
  Pointer<Double> winx,
  Pointer<Double> winy,
  Pointer<Double> winz,
) =>
    _gluProject(
      objx,
      objy,
      objz,
      modelMatrix,
      projMatrix,
      viewport,
      winx,
      winy,
      winz,
    );

late final _gluProject = _glu32.lookupFunction<
    Int32 Function(
  Double objx,
  Double objy,
  Double objz,
  Pointer<Double> modelMatrix,
  Pointer<Double> projMatrix,
  Pointer<Int32> viewport,
  Pointer<Double> winx,
  Pointer<Double> winy,
  Pointer<Double> winz,
),
    int Function(
  double objx,
  double objy,
  double objz,
  Pointer<Double> modelMatrix,
  Pointer<Double> projMatrix,
  Pointer<Int32> viewport,
  Pointer<Double> winx,
  Pointer<Double> winy,
  Pointer<Double> winz,
)>('gluProject');

void gluPwlCurve(
  Pointer<GLUnurbs> nobj,
  int count,
  Pointer<Float> array,
  int stride,
  int type,
) =>
    _gluPwlCurve(
      nobj,
      count,
      array,
      stride,
      type,
    );

late final _gluPwlCurve = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUnurbs> nobj,
  Int32 count,
  Pointer<Float> array,
  Int32 stride,
  Uint32 type,
),
    void Function(
  Pointer<GLUnurbs> nobj,
  int count,
  Pointer<Float> array,
  int stride,
  int type,
)>('gluPwlCurve');

void gluQuadricCallback(
  Pointer<GLUquadric> qobj,
  int which,
  int fn,
) =>
    _gluQuadricCallback(
      qobj,
      which,
      fn,
    );

late final _gluQuadricCallback = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUquadric> qobj,
  Uint32 which,
  IntPtr fn,
),
    void Function(
  Pointer<GLUquadric> qobj,
  int which,
  int fn,
)>('gluQuadricCallback');

void gluQuadricDrawStyle(
  Pointer<GLUquadric> quadObject,
  int drawStyle,
) =>
    _gluQuadricDrawStyle(
      quadObject,
      drawStyle,
    );

late final _gluQuadricDrawStyle = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUquadric> quadObject,
  Uint32 drawStyle,
),
    void Function(
  Pointer<GLUquadric> quadObject,
  int drawStyle,
)>('gluQuadricDrawStyle');

void gluQuadricNormals(
  Pointer<GLUquadric> quadObject,
  int normals,
) =>
    _gluQuadricNormals(
      quadObject,
      normals,
    );

late final _gluQuadricNormals = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUquadric> quadObject,
  Uint32 normals,
),
    void Function(
  Pointer<GLUquadric> quadObject,
  int normals,
)>('gluQuadricNormals');

void gluQuadricOrientation(
  Pointer<GLUquadric> quadObject,
  int orientation,
) =>
    _gluQuadricOrientation(
      quadObject,
      orientation,
    );

late final _gluQuadricOrientation = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUquadric> quadObject,
  Uint32 orientation,
),
    void Function(
  Pointer<GLUquadric> quadObject,
  int orientation,
)>('gluQuadricOrientation');

void gluQuadricTexture(
  Pointer<GLUquadric> quadObject,
  int textureCoords,
) =>
    _gluQuadricTexture(
      quadObject,
      textureCoords,
    );

late final _gluQuadricTexture = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUquadric> quadObject,
  Uint8 textureCoords,
),
    void Function(
  Pointer<GLUquadric> quadObject,
  int textureCoords,
)>('gluQuadricTexture');

int gluScaleImage(
  int format,
  int widthin,
  int heightin,
  int typein,
  Pointer datain,
  int widthout,
  int heightout,
  int typeout,
  Pointer dataout,
) =>
    _gluScaleImage(
      format,
      widthin,
      heightin,
      typein,
      datain,
      widthout,
      heightout,
      typeout,
      dataout,
    );

late final _gluScaleImage = _glu32.lookupFunction<
    Int32 Function(
  Uint32 format,
  Int32 widthin,
  Int32 heightin,
  Uint32 typein,
  Pointer datain,
  Int32 widthout,
  Int32 heightout,
  Uint32 typeout,
  Pointer dataout,
),
    int Function(
  int format,
  int widthin,
  int heightin,
  int typein,
  Pointer datain,
  int widthout,
  int heightout,
  int typeout,
  Pointer dataout,
)>('gluScaleImage');

void gluSphere(
  Pointer<GLUquadric> qobj,
  double radius,
  int slices,
  int stacks,
) =>
    _gluSphere(
      qobj,
      radius,
      slices,
      stacks,
    );

late final _gluSphere = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUquadric> qobj,
  Double radius,
  Int32 slices,
  Int32 stacks,
),
    void Function(
  Pointer<GLUquadric> qobj,
  double radius,
  int slices,
  int stacks,
)>('gluSphere');

void gluTessBeginContour(
  Pointer<GLUtesselator> tess,
) =>
    _gluTessBeginContour(
      tess,
    );

late final _gluTessBeginContour = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUtesselator> tess,
),
    void Function(
  Pointer<GLUtesselator> tess,
)>('gluTessBeginContour');

void gluTessBeginPolygon(
  Pointer<GLUtesselator> tess,
  Pointer polygon_data,
) =>
    _gluTessBeginPolygon(
      tess,
      polygon_data,
    );

late final _gluTessBeginPolygon = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUtesselator> tess,
  Pointer polygon_data,
),
    void Function(
  Pointer<GLUtesselator> tess,
  Pointer polygon_data,
)>('gluTessBeginPolygon');

void gluTessCallback(
  Pointer<GLUtesselator> tess,
  int which,
  int fn,
) =>
    _gluTessCallback(
      tess,
      which,
      fn,
    );

late final _gluTessCallback = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUtesselator> tess,
  Uint32 which,
  IntPtr fn,
),
    void Function(
  Pointer<GLUtesselator> tess,
  int which,
  int fn,
)>('gluTessCallback');

void gluTessEndContour(
  Pointer<GLUtesselator> tess,
) =>
    _gluTessEndContour(
      tess,
    );

late final _gluTessEndContour = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUtesselator> tess,
),
    void Function(
  Pointer<GLUtesselator> tess,
)>('gluTessEndContour');

void gluTessEndPolygon(
  Pointer<GLUtesselator> tess,
) =>
    _gluTessEndPolygon(
      tess,
    );

late final _gluTessEndPolygon = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUtesselator> tess,
),
    void Function(
  Pointer<GLUtesselator> tess,
)>('gluTessEndPolygon');

void gluTessNormal(
  Pointer<GLUtesselator> tess,
  double x,
  double y,
  double z,
) =>
    _gluTessNormal(
      tess,
      x,
      y,
      z,
    );

late final _gluTessNormal = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUtesselator> tess,
  Double x,
  Double y,
  Double z,
),
    void Function(
  Pointer<GLUtesselator> tess,
  double x,
  double y,
  double z,
)>('gluTessNormal');

void gluTessProperty(
  Pointer<GLUtesselator> tess,
  int which,
  double value,
) =>
    _gluTessProperty(
      tess,
      which,
      value,
    );

late final _gluTessProperty = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUtesselator> tess,
  Uint32 which,
  Double value,
),
    void Function(
  Pointer<GLUtesselator> tess,
  int which,
  double value,
)>('gluTessProperty');

void gluTessVertex(
  Pointer<GLUtesselator> tess,
  Pointer<Double> coords,
  Pointer data,
) =>
    _gluTessVertex(
      tess,
      coords,
      data,
    );

late final _gluTessVertex = _glu32.lookupFunction<
    Void Function(
  Pointer<GLUtesselator> tess,
  Pointer<Double> coords,
  Pointer data,
),
    void Function(
  Pointer<GLUtesselator> tess,
  Pointer<Double> coords,
  Pointer data,
)>('gluTessVertex');

int gluUnProject(
  double winx,
  double winy,
  double winz,
  Pointer<Double> modelMatrix,
  Pointer<Double> projMatrix,
  Pointer<Int32> viewport,
  Pointer<Double> objx,
  Pointer<Double> objy,
  Pointer<Double> objz,
) =>
    _gluUnProject(
      winx,
      winy,
      winz,
      modelMatrix,
      projMatrix,
      viewport,
      objx,
      objy,
      objz,
    );

late final _gluUnProject = _glu32.lookupFunction<
    Int32 Function(
  Double winx,
  Double winy,
  Double winz,
  Pointer<Double> modelMatrix,
  Pointer<Double> projMatrix,
  Pointer<Int32> viewport,
  Pointer<Double> objx,
  Pointer<Double> objy,
  Pointer<Double> objz,
),
    int Function(
  double winx,
  double winy,
  double winz,
  Pointer<Double> modelMatrix,
  Pointer<Double> projMatrix,
  Pointer<Int32> viewport,
  Pointer<Double> objx,
  Pointer<Double> objy,
  Pointer<Double> objz,
)>('gluUnProject');
