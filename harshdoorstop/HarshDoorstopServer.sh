#! /bin/sh
echo Server Name: $1
UE4_TRUE_SCRIPT_NAME=$(echo \"$0\" | xargs readlink -f)
UE4_PROJECT_ROOT=$(dirname "$UE4_TRUE_SCRIPT_NAME")
chmod +x "$UE4_PROJECT_ROOT/HarshDoorstop/Binaries/Linux/HarshDoorstopServer-Linux-Shipping"
echo "$UE4_PROJECT_ROOT/HarshDoorstop/Binaries/Linux/HarshDoorstopServer-Linux-Shipping" HarshDoorstop LamDong?bBotAutofill?BluforNumBots=4?OpforNumBots=16?BluforNumTickets=600?OpforNumTickets=600?MaxPlayers=32 -SteamServerName=\"$1\"
"$UE4_PROJECT_ROOT/HarshDoorstop/Binaries/Linux/HarshDoorstopServer-Linux-Shipping" HarshDoorstop LamDong?bBotAutofill?BluforNumBots=4?OpforNumBots=16?BluforNumTickets=600?OpforNumTickets=600?MaxPlayers=32 -SteamServerName=\"$1\"
