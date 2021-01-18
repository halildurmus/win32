// Compile with:
//   cl bluetooth.cpp /link bthprops.lib

#include <stdio.h>
#include <stdlib.h>

#include "windows.h"
#include "bluetoothapis.h"
#include "bthsdpdef.h"

void main()
{
    // Get a handle to the first Bluetooth radio
    BLUETOOTH_FIND_RADIO_PARAMS findRadioParams;
    findRadioParams.dwSize = sizeof(BLUETOOTH_FIND_RADIO_PARAMS);
    HANDLE hRadio;

    auto hEnum = BluetoothFindFirstRadio(&findRadioParams, &hRadio);
    if (hEnum != NULL)
    {
        printf("Found a radio with handle %p.\n", hRadio);
    }
    else
    {
        auto error = GetLastError();
        if (error == ERROR_NO_MORE_ITEMS)
        {
            printf("No Bluetooth radios found on this device.\n");
        }
        else
        {
            printf("Error %d finding radios.\n", error);
        }
        exit(1);
    }

    // Interrogate the Bluetooth radio
    BLUETOOTH_RADIO_INFO radioInfo;
    radioInfo.dwSize = sizeof(BLUETOOTH_RADIO_INFO);

    auto res = BluetoothGetRadioInfo(hRadio, &radioInfo);
    if (res == ERROR_SUCCESS)
    {
        printf("Got radio info.\n\n");
        printf("Radio name: %ws", radioInfo.szName);
    }
}
