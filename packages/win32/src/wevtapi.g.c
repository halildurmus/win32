// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "wevtapi.g.h"

BOOL EvtClose_Wrapper(EVT_HANDLE object) {
  trace_print("Calling EvtClose\n");
  BOOL result_ = EvtClose(object);
  trace_print("EvtClose returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

EVT_HANDLE EvtCreateBookmark_Wrapper(PCWSTR bookmarkXml) {
  trace_print("Calling EvtCreateBookmark\n");
  EVT_HANDLE result_ = EvtCreateBookmark(bookmarkXml);
  trace_print("EvtCreateBookmark returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

EVT_HANDLE EvtCreateRenderContext_Wrapper(unsigned long valuePathsCount, PCWSTR* valuePaths, unsigned long flags) {
  trace_print("Calling EvtCreateRenderContext\n");
  EVT_HANDLE result_ = EvtCreateRenderContext(valuePathsCount, valuePaths, flags);
  trace_print("EvtCreateRenderContext returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EvtGetQueryInfo_Wrapper(EVT_HANDLE queryOrSubscription, LONG propertyId, unsigned long propertyValueBufferSize, EVT_VARIANT* propertyValueBuffer, unsigned long* propertyValueBufferUsed) {
  trace_print("Calling EvtGetQueryInfo\n");
  BOOL result_ = EvtGetQueryInfo(queryOrSubscription, propertyId, propertyValueBufferSize, propertyValueBuffer, propertyValueBufferUsed);
  trace_print("EvtGetQueryInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EvtNext_Wrapper(EVT_HANDLE resultSet, unsigned long eventsSize, long long* events, unsigned long timeout, unsigned long flags, unsigned long* returned) {
  trace_print("Calling EvtNext\n");
  BOOL result_ = EvtNext(resultSet, eventsSize, events, timeout, flags, returned);
  trace_print("EvtNext returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

EVT_HANDLE EvtOpenSession_Wrapper(LONG loginClass, void* login, unsigned long timeout, unsigned long flags) {
  trace_print("Calling EvtOpenSession\n");
  EVT_HANDLE result_ = EvtOpenSession(loginClass, login, timeout, flags);
  trace_print("EvtOpenSession returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

EVT_HANDLE EvtQuery_Wrapper(EVT_HANDLE session, PCWSTR path, PCWSTR query, unsigned long flags) {
  trace_print("Calling EvtQuery\n");
  EVT_HANDLE result_ = EvtQuery(session, path, query, flags);
  trace_print("EvtQuery returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EvtRender_Wrapper(EVT_HANDLE context, EVT_HANDLE fragment, unsigned long flags, unsigned long bufferSize, void* buffer, unsigned long* bufferUsed, unsigned long* propertyCount) {
  trace_print("Calling EvtRender\n");
  BOOL result_ = EvtRender(context, fragment, flags, bufferSize, buffer, bufferUsed, propertyCount);
  trace_print("EvtRender returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EvtSeek_Wrapper(EVT_HANDLE resultSet, long long position, EVT_HANDLE bookmark, unsigned long timeout, unsigned long flags) {
  trace_print("Calling EvtSeek\n");
  BOOL result_ = EvtSeek(resultSet, position, bookmark, timeout, flags);
  trace_print("EvtSeek returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EvtUpdateBookmark_Wrapper(EVT_HANDLE bookmark, EVT_HANDLE event) {
  trace_print("Calling EvtUpdateBookmark\n");
  BOOL result_ = EvtUpdateBookmark(bookmark, event);
  trace_print("EvtUpdateBookmark returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
