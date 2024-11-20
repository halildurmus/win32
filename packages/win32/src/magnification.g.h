// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"

MYLIB_EXPORT BOOL MagSetInputTransform_Wrapper(BOOL fEnabled, RECT* pRectSource, RECT* pRectDest);
