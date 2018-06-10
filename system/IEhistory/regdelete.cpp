#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <string>
#define eq(s1,s2) (strcmp((s1),(s2))==0)

int WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR cmdLine, int nCmdShow)
{
    if (!cmdLine || !strlen(cmdLine)) {
        printf("Usage: regdel.exe <HKEY> <path to regkey> - be careful not to delete whole registry\n");
        return 1;
    }

    int argc;
    LPWSTR *argv = CommandLineToArgvW(GetCommandLineW(), &argc);

    if (argc < 3) {
        printf("Usage: regdel.exe <HKEY> <path to regkey> - be careful not to delete whole registry\n");
        return 1;
    }

    char **argv8 = (char **)malloc(sizeof(char *) * argc);
    for (int i = 0; i<argc; i++) {
        int len = wcslen(argv[i]);
        argv8[i] = (char *)malloc(sizeof(char)*(len+1));
        wcstombs(argv8[i], argv[i], len+1);
    }

    HKEY hkey;
    if (eq(argv8[1], "HKEY_CLASSES_ROOT")) {
        hkey == HKEY_CLASSES_ROOT;
    }
    else if (eq(argv8[1], "HKEY_CURRENT_CONFIG")) {
        hkey = HKEY_CURRENT_CONFIG;
    }
    else if (eq(argv8[1], "HKEY_CURRENT_USER")) {
        hkey = HKEY_CURRENT_USER;
    }
    else if (eq(argv8[1], "HKEY_LOCAL_MACHINE")) {
        hkey = HKEY_LOCAL_MACHINE;
    }
    else if (eq(argv8[1], "HKEY_USERS")) {
        hkey = HKEY_USERS;
    }
    else {
        printf("Unknown hkey\n");
        return 1;
    }

    HKEY key;
    int status = RegOpenKeyEx(hkey, argv8[2], 0, KEY_ALL_ACCESS, &key);
    if (status != ERROR_SUCCESS) {
        printf("failed opening %s\n", argv8[2]);
        return 1;
    }

    std::vector<std::string> vals;

    for (unsigned int i = 0; ; i++) {
        DWORD size = 1024;
        char val[size+1];
        DWORD type;
        status = RegEnumValue(key, i, val, &size, NULL, &type, NULL, NULL);
        if (status == ERROR_NO_MORE_ITEMS) break;
        if (status == ERROR_SUCCESS) {
            vals.push_back(std::string(val));
            continue;
        }
        printf("failed enumerating %s\n", argv8[2]);
        return 1;
    }

    typedef std::vector<std::string>::iterator vsi;
    for (vsi i = vals.begin(); i != vals.end(); i++) {
        status = RegDeleteValue(key, i->c_str());
        if (status != ERROR_SUCCESS) {
            printf("failed deleting %s\n", i->c_str());
            return 1;
        }
    }

    return 0;
}
