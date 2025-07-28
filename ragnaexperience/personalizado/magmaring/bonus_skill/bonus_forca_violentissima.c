//-------------------------------------------------------------------------------------------||
//   __  __                                  _                _____           _       _      ||
//  |  \/  |                                (_)              / ____|         (_)     | |     ||
//  | \  / | __ _  __ _ _ __ ___   __ _ _ __ _ _ __   __ _  | (___   ___ _ __ _ _ __ | |_    ||
//  | |\/| |/ _` |/ _` | '_ ` _ \ / _` | '__| | '_ \ / _` |  \___ \ / __| '__| | '_ \| __|   ||
//  | |  | | (_| | (_| | | | | | | (_| | |  | | | | | (_| |  ____) | (__| |  | | |_) | |_    ||
//  |_|  |_|\__,_|\__, |_| |_| |_|\__,_|_|  |_|_| |_|\__, | |_____/ \___|_|  |_| .__/ \__|   ||
//                 __/ |                              __/ |                    | |           ||
//                |___/                              |___/                     |_|           ||
//-------------------------------------------------------------------------------------------||
//   VENDAS DE SERVIÇOS SERVIDORES DE RAGNAROK ONLINE/PERFECT WORLD/MU/AION/CABAL/MINECRAFT  ||
//DISCORD:   https://discordapp.com/channels/@me/Magmaring#0352                              ||
//INSTAGRAM: https://www.instagram.com/evandro_srk/                                          ||
//FACEBOOK:  https://www.facebook.com/sorakamente/                                           ||
//GITHUB:    https://github.com/magmaring                                                    ||
//-------------------------------------------------------------------------------------------||
// = Criação:                                                                                ||
// - [ADM] Magmaring - Evandro Oliveira     												 ||
//-------------------------------------------------------------------------------------------||
// = Revisão:                                                                                ||
// - Esse arquivo teve sua última revisão 04 de janeiro de 2024    				         	 ||
//-------------------------------------------------------------------------------------------||
-	script	forca_violensissima	-1,{
OnPCLoginEvent:
    if ( getskilllv("WS_OVERTHRUSTMAX") == 1 ) {
        set .@bonus_dodge_script$, "{ bonus bUnbreakableWeapon; }";
        bonus_script .@bonus_dodge_script$, 86400, 1032;
    }
    end;

OnPCLogoutEvent:
    bonus_script_clear 1;
    end;
}