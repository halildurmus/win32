// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "magnification.g.h"

Win32Result MagSetInputTransform_Wrapper(BOOL fEnabled, RECT* pRectSource, RECT* pRectDest) {
  BOOL value_ = MagSetInputTransform(fEnabled, pRectSource, pRectDest);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}
