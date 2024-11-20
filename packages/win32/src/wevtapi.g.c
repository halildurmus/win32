// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "wevtapi.g.h"

Win32Result EvtClose_Wrapper(EVT_HANDLE object) {
  BOOL value_ = EvtClose(object);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EvtCreateBookmark_Wrapper(PCWSTR bookmarkXml) {
  EVT_HANDLE value_ = EvtCreateBookmark(bookmarkXml);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result EvtCreateRenderContext_Wrapper(unsigned long valuePathsCount, PCWSTR* valuePaths, unsigned long flags) {
  EVT_HANDLE value_ = EvtCreateRenderContext(valuePathsCount, valuePaths, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result EvtGetQueryInfo_Wrapper(EVT_HANDLE queryOrSubscription, LONG propertyId, unsigned long propertyValueBufferSize, EVT_VARIANT* propertyValueBuffer, unsigned long* propertyValueBufferUsed) {
  BOOL value_ = EvtGetQueryInfo(queryOrSubscription, propertyId, propertyValueBufferSize, propertyValueBuffer, propertyValueBufferUsed);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EvtNext_Wrapper(EVT_HANDLE resultSet, unsigned long eventsSize, long long* events, unsigned long timeout, unsigned long flags, unsigned long* returned) {
  BOOL value_ = EvtNext(resultSet, eventsSize, events, timeout, flags, returned);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EvtOpenSession_Wrapper(LONG loginClass, void* login, unsigned long timeout, unsigned long flags) {
  EVT_HANDLE value_ = EvtOpenSession(loginClass, login, timeout, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result EvtQuery_Wrapper(EVT_HANDLE session, PCWSTR path, PCWSTR query, unsigned long flags) {
  EVT_HANDLE value_ = EvtQuery(session, path, query, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result EvtRender_Wrapper(EVT_HANDLE context, EVT_HANDLE fragment, unsigned long flags, unsigned long bufferSize, void* buffer, unsigned long* bufferUsed, unsigned long* propertyCount) {
  BOOL value_ = EvtRender(context, fragment, flags, bufferSize, buffer, bufferUsed, propertyCount);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EvtSeek_Wrapper(EVT_HANDLE resultSet, long long position, EVT_HANDLE bookmark, unsigned long timeout, unsigned long flags) {
  BOOL value_ = EvtSeek(resultSet, position, bookmark, timeout, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EvtUpdateBookmark_Wrapper(EVT_HANDLE bookmark, EVT_HANDLE event) {
  BOOL value_ = EvtUpdateBookmark(bookmark, event);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}
