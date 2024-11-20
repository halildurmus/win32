// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "magnification.g.h"

BOOL MagSetInputTransform_Wrapper(BOOL fEnabled, RECT* pRectSource, RECT* pRectDest) {
  trace_print("Calling MagSetInputTransform\n");
  BOOL result_ = MagSetInputTransform(fEnabled, pRectSource, pRectDest);
  trace_print("MagSetInputTransform returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
