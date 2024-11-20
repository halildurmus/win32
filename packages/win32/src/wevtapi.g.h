// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"

MYLIB_EXPORT BOOL EvtClose_Wrapper(EVT_HANDLE object);

MYLIB_EXPORT EVT_HANDLE EvtCreateBookmark_Wrapper(PCWSTR bookmarkXml);

MYLIB_EXPORT EVT_HANDLE EvtCreateRenderContext_Wrapper(unsigned long valuePathsCount, PCWSTR* valuePaths, unsigned long flags);

MYLIB_EXPORT BOOL EvtGetQueryInfo_Wrapper(EVT_HANDLE queryOrSubscription, LONG propertyId, unsigned long propertyValueBufferSize, EVT_VARIANT* propertyValueBuffer, unsigned long* propertyValueBufferUsed);

MYLIB_EXPORT BOOL EvtNext_Wrapper(EVT_HANDLE resultSet, unsigned long eventsSize, long long* events, unsigned long timeout, unsigned long flags, unsigned long* returned);

MYLIB_EXPORT EVT_HANDLE EvtOpenSession_Wrapper(LONG loginClass, void* login, unsigned long timeout, unsigned long flags);

MYLIB_EXPORT EVT_HANDLE EvtQuery_Wrapper(EVT_HANDLE session, PCWSTR path, PCWSTR query, unsigned long flags);

MYLIB_EXPORT BOOL EvtRender_Wrapper(EVT_HANDLE context, EVT_HANDLE fragment, unsigned long flags, unsigned long bufferSize, void* buffer, unsigned long* bufferUsed, unsigned long* propertyCount);

MYLIB_EXPORT BOOL EvtSeek_Wrapper(EVT_HANDLE resultSet, long long position, EVT_HANDLE bookmark, unsigned long timeout, unsigned long flags);

MYLIB_EXPORT BOOL EvtUpdateBookmark_Wrapper(EVT_HANDLE bookmark, EVT_HANDLE event);
