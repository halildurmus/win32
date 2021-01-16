#include <stdio.h>
#include <stdlib.h>

#include "windows.h"
#include "bluetoothapis.h"
#include "bthsdpdef.h"

BLUETOOTH_FIND_RADIO_PARAMS findRadioParams = {sizeof(BLUETOOTH_FIND_RADIO_PARAMS)};
BLUETOOTH_RADIO_INFO radioInfo = {
    sizeof(BLUETOOTH_RADIO_INFO),
    0,
};

void main()
{
    HANDLE hRadio;
    BLUETOOTH_RADIO_INFO radioInfo;
    HBLUETOOTH_RADIO_FIND m_bt = NULL;

    auto hr = BluetoothFindFirstRadio(&findRadioParams, &hRadio);
    if (SUCCEEDED(hr))
    {
        printf("Found a radio.\n");
    }
    auto res = BluetoothGetRadioInfo(hRadio, &radioInfo);
    if (res == ERROR_SUCCESS)
    {
        printf("Got radio info.\n");
    }
}
