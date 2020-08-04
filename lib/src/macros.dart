// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of Win32 C macros

import 'constants.dart';

// #define MAKEWORD(a, b)   ((WORD)(((BYTE)(((DWORD_PTR)(a)) & 0xff)) |
//                          ((WORD)((BYTE)(((DWORD_PTR)(b)) & 0xff))) << 8))
int MAKEWORD(int a, int b) => a & 0xff | (b & 0xff << 8);

// #define MAKELONG(a, b)   ((LONG)(((WORD)(((DWORD_PTR)(a)) & 0xffff)) |
//                          ((DWORD)((WORD)(((DWORD_PTR)(b)) & 0xffff))) << 16))
int MAKELONG(int a, int b) => a & 0xffff | (b & 0xffff << 16);

// #define LOWORD(l)           ((WORD)(((DWORD_PTR)(l)) & 0xffff))
int LOWORD(int l) => l & 0xffff;

// #define HIWORD(l)           ((WORD)((((DWORD_PTR)(l)) >> 16) & 0xffff))
int HIWORD(int l) => (l >> 16) & 0xffff;

// #define LOBYTE(w)           ((BYTE)(((DWORD_PTR)(w)) & 0xff))
int LOBYTE(int w) => w & 0xff;

// #define HIBYTE(w)           ((BYTE)((((DWORD_PTR)(w)) >> 8) & 0xff))
int HIBYTE(int w) => (w >> 8) & 0xff;

// ((COLORREF)(((BYTE)(r)|((WORD)((BYTE)(g))<<8))|(((DWORD)(BYTE)(b))<<16)))
int RGB(int r, int g, int b) => r + (g << 8) + (b << 16);

// #define GetRValue(rgb)      (LOBYTE(rgb))
int GetRValue(int rgb) => LOBYTE(rgb);

// #define GetGValue(rgb)      (LOBYTE(((WORD)(rgb)) >> 8))
int GetGValue(int rgb) => LOBYTE(rgb >> 8);

// #define GetBValue(rgb)      (LOBYTE((rgb)>>16))
int GetBValue(int rgb) => LOBYTE(rgb >> 16);

// #define SUCCEEDED(hr) (((HRESULT)(hr)) >= 0)
bool SUCCEEDED(int result) => result >= 0;

// #define FAILED(hr) (((HRESULT)(hr)) < 0)
bool FAILED(int result) => result < 0;

// #define __HRESULT_FROM_WIN32(x) ((HRESULT)(x) <= 0 ? ((HRESULT)(x)) :
//       ((HRESULT) (((x) & 0x0000FFFF) | (FACILITY_WIN32 << 16) | 0x80000000)))
int HRESULT_FROM_WIN32(int x) =>
    ((x <= 0 ? x : (x & 0x0000FFFF | (FACILITY_WIN32 << 16) | 0x80000000))
        .toSigned(32));
