// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include <winsock2.h>
#include <ws2tcpip.h>
#include "win32.h"

MYLIB_EXPORT SOCKET accept_Wrapper(SOCKET s, SOCKADDR* addr, int* addrlen);

MYLIB_EXPORT int bind_Wrapper(SOCKET s, SOCKADDR* name, int namelen);

MYLIB_EXPORT int closesocket_Wrapper(SOCKET s);

MYLIB_EXPORT int connect_Wrapper(SOCKET s, SOCKADDR* name, int namelen);

MYLIB_EXPORT int gethostname_Wrapper(PSTR name, int namelen);

MYLIB_EXPORT int getnameinfo_Wrapper(SOCKADDR* pSockaddr, socklen_t sockaddrLength, PSTR pNodeBuffer, unsigned long nodeBufferSize, PSTR pServiceBuffer, unsigned long serviceBufferSize, int flags);

MYLIB_EXPORT int getpeername_Wrapper(SOCKET s, SOCKADDR* name, int* namelen);

MYLIB_EXPORT PROTOENT* getprotobyname_Wrapper(PCSTR name);

MYLIB_EXPORT PROTOENT* getprotobynumber_Wrapper(int number);

MYLIB_EXPORT SERVENT* getservbyname_Wrapper(PCSTR name, PCSTR proto);

MYLIB_EXPORT SERVENT* getservbyport_Wrapper(int port, PCSTR proto);

MYLIB_EXPORT int getsockname_Wrapper(SOCKET s, SOCKADDR* name, int* namelen);

MYLIB_EXPORT int getsockopt_Wrapper(SOCKET s, int level, int optname, PSTR optval, int* optlen);

MYLIB_EXPORT unsigned long htonl_Wrapper(unsigned long hostlong);

MYLIB_EXPORT unsigned short htons_Wrapper(unsigned short hostshort);

MYLIB_EXPORT PCSTR inet_ntop_Wrapper(int family, void* pAddr, PSTR pStringBuf, unsigned long long stringBufSize);

MYLIB_EXPORT int ioctlsocket_Wrapper(SOCKET s, int cmd, unsigned long* argp);

MYLIB_EXPORT int listen_Wrapper(SOCKET s, int backlog);

MYLIB_EXPORT unsigned long ntohl_Wrapper(unsigned long netlong);

MYLIB_EXPORT unsigned short ntohs_Wrapper(unsigned short netshort);

MYLIB_EXPORT int recv_Wrapper(SOCKET s, PSTR buf, int len, LONG flags);

MYLIB_EXPORT int recvfrom_Wrapper(SOCKET s, PSTR buf, int len, int flags, SOCKADDR* from, int* fromlen);

MYLIB_EXPORT int select_Wrapper(int nfds, FD_SET* readfds, FD_SET* writefds, FD_SET* exceptfds, TIMEVAL* timeout);

MYLIB_EXPORT int send_Wrapper(SOCKET s, PCSTR buf, int len, LONG flags);

MYLIB_EXPORT int sendto_Wrapper(SOCKET s, PCSTR buf, int len, int flags, SOCKADDR* to, int tolen);

MYLIB_EXPORT int shutdown_Wrapper(SOCKET s, LONG how);

MYLIB_EXPORT SOCKET socket_Wrapper(int af, LONG type, int protocol);
