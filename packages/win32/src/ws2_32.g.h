// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include <winsock2.h>
#include <ws2spi.h>
#include <ws2tcpip.h>
#include "win32.h"

MYLIB_EXPORT Win32Result accept_Wrapper(SOCKET s, SOCKADDR* addr, int* addrlen);

MYLIB_EXPORT Win32Result bind_Wrapper(SOCKET s, SOCKADDR* name, int namelen);

MYLIB_EXPORT Win32Result closesocket_Wrapper(SOCKET s);

MYLIB_EXPORT Win32Result connect_Wrapper(SOCKET s, SOCKADDR* name, int namelen);

MYLIB_EXPORT Win32Result gethostname_Wrapper(PSTR name, int namelen);

MYLIB_EXPORT Win32Result getnameinfo_Wrapper(SOCKADDR* pSockaddr, socklen_t sockaddrLength, PSTR pNodeBuffer, unsigned long nodeBufferSize, PSTR pServiceBuffer, unsigned long serviceBufferSize, int flags);

MYLIB_EXPORT Win32Result getpeername_Wrapper(SOCKET s, SOCKADDR* name, int* namelen);

MYLIB_EXPORT Win32Result getprotobyname_Wrapper(PCSTR name);

MYLIB_EXPORT Win32Result getprotobynumber_Wrapper(int number);

MYLIB_EXPORT Win32Result getservbyname_Wrapper(PCSTR name, PCSTR proto);

MYLIB_EXPORT Win32Result getservbyport_Wrapper(int port, PCSTR proto);

MYLIB_EXPORT Win32Result getsockname_Wrapper(SOCKET s, SOCKADDR* name, int* namelen);

MYLIB_EXPORT Win32Result getsockopt_Wrapper(SOCKET s, int level, int optname, PSTR optval, int* optlen);

MYLIB_EXPORT Win32Result htonl_Wrapper(unsigned long hostlong);

MYLIB_EXPORT Win32Result htons_Wrapper(unsigned short hostshort);

MYLIB_EXPORT Win32Result inet_ntop_Wrapper(int family, void* pAddr, PSTR pStringBuf, unsigned long long stringBufSize);

MYLIB_EXPORT Win32Result ioctlsocket_Wrapper(SOCKET s, int cmd, unsigned long* argp);

MYLIB_EXPORT Win32Result listen_Wrapper(SOCKET s, int backlog);

MYLIB_EXPORT Win32Result ntohl_Wrapper(unsigned long netlong);

MYLIB_EXPORT Win32Result ntohs_Wrapper(unsigned short netshort);

MYLIB_EXPORT Win32Result recv_Wrapper(SOCKET s, PSTR buf, int len, LONG flags);

MYLIB_EXPORT Win32Result recvfrom_Wrapper(SOCKET s, PSTR buf, int len, int flags, SOCKADDR* from, int* fromlen);

MYLIB_EXPORT Win32Result select_Wrapper(int nfds, FD_SET* readfds, FD_SET* writefds, FD_SET* exceptfds, TIMEVAL* timeout);

MYLIB_EXPORT Win32Result send_Wrapper(SOCKET s, PCSTR buf, int len, LONG flags);

MYLIB_EXPORT Win32Result sendto_Wrapper(SOCKET s, PCSTR buf, int len, int flags, SOCKADDR* to, int tolen);

MYLIB_EXPORT Win32Result shutdown_Wrapper(SOCKET s, LONG how);

MYLIB_EXPORT Win32Result socket_Wrapper(int af, LONG type, int protocol);
