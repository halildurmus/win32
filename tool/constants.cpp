/**
 * Copyright (c) 2020 the Dart project authors. All rights reserved.
 * Use of this source code is governed by a BSD-style
 * license that can be found in the LICENSE file.
 */

// constants.cpp

// Development utility to confirm the width of various Win32 types.

// This code not used by the package itself, but is just a helper to inspect
// widths across x86 and x64 architectures.

// Compile with cl constants.cpp

#include <stdlib.h>
#include <windows.h>
#include <stdio.h>

void main()
{
    printf("On this platform:\n");
    printf("sizeof(int) is %zu\n", sizeof(int));
    printf("sizeof(long) is %zu\n", sizeof(long));
    printf("sizeof(short) is %zu\n", sizeof(short));
    printf("sizeof(char) is %zu\n", sizeof(char));
    printf("sizeof(float) is %zu\n", sizeof(float));
    printf("sizeof(double) is %zu\n", sizeof(double));

    printf("sizeof(LPCSTR) is %zu\n", sizeof(LPCSTR));
    printf("sizeof(LPCWSTR) is %zu\n", sizeof(LPCWSTR));

    printf("sizeof(HANDLE) is %zu\n", sizeof(HANDLE));
    printf("sizeof(HRESULT) is %zu\n", sizeof(HRESULT));

    printf("sizeof(ATOM) is %zu\n", sizeof(ATOM));
    printf("sizeof(WPARAM) is %zu\n", sizeof(WPARAM));
    printf("sizeof(LPARAM) is %zu\n", sizeof(LPARAM));
    printf("sizeof(LRESULT) is %zu\n", sizeof(LRESULT));
    printf("sizeof(LSTATUS) is %zu\n", sizeof(LSTATUS));

    printf("sizeof(WCHAR) is %zu\n", sizeof(WCHAR));
    printf("sizeof(TCHAR) is %zu\n", sizeof(TCHAR));
    printf("sizeof(UINT) is %zu\n", sizeof(UINT));
    printf("sizeof(DWORD) is %zu\n", sizeof(DWORD));
    printf("sizeof(WORD) is %zu\n", sizeof(WORD));
    printf("sizeof(INT) is %zu\n", sizeof(INT));
    printf("sizeof(CHAR) is %zu\n", sizeof(CHAR));
    printf("sizeof(SHORT) is %zu\n", sizeof(SHORT));
    printf("sizeof(LONG) is %zu\n", sizeof(LONG));
    printf("sizeof(BYTE) is %zu\n", sizeof(BYTE));
    printf("sizeof(BOOL) is %zu\n", sizeof(BOOL));
    printf("sizeof(BOOLEAN) is %zu\n", sizeof(BOOLEAN));
    printf("sizeof(VARIANT) is %zu\n", sizeof(VARIANT));

    printf("sizeof(UINT_PTR) is %zu\n", sizeof(UINT_PTR));
    printf("sizeof(DWORD_PTR) is %zu\n", sizeof(DWORD_PTR));
}
