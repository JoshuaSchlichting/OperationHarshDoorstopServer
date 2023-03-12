#!/bin/sh
UE4_TRUE_SCRIPT_NAME=$(echo \"$0\" | xargs readlink -f)
UE4_PROJECT_ROOT=$(dirname "$UE4_TRUE_SCRIPT_NAME")
chmod +x "$UE4_PROJECT_ROOT/HarshDoorstop/Binaries/Linux/HarshDoorstopServer-Linux-Shipping"
# "$UE4_PROJECT_ROOT/HarshDoorstop/Binaries/Linux/HarshDoorstopServer-Linux-Shipping" HarshDoorstop bBotAutofill?BluforNumBots=4?OpforNumBots=16?BluforNumTickets=600?OpforNumTickets=600?LamDong?MaxPlayers=16 -SteamServerName="Dadder's Harsh Doorstop Dedicated Server" $@
"$UE4_PROJECT_ROOT/HarshDoorstop/Binaries/Linux/HarshDoorstopServer-Linux-Shipping" LamDong?bBotAutofill?BluforNumBots=4?OpforNumBots=16?BluforNumTickets=600?OpforNumTickets=600?MaxPlayers=16 -SteamServerName="Dadder's Harsh Doorstop Dedicated Server" $@
