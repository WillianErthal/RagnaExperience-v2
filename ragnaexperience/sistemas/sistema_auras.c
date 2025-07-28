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
// - Esse arquivo teve sua última revisão 14 de janeiro de 2025   				         	 ||
//-------------------------------------------------------------------------------------------||
prontera,145,188,5	script	Gerente de Auras	999,{
	set .np$,"^00B2EE[-- Gerente de Auras --]^000000";
	if(countitem(607) == 1){
		mes .np$;
		mes "------------------------------------------";
		mes "Olá ^000080"+strcharinfo(0)+"^000000";
		mes "Qual aura você deseja hoje?";
		mes "------------------------------------------";	
		soundeffect "aura_01.wav",0;
		next;
	switch(select(
	"| Visual | Aura Especial 1",
	"| Visual | Aura Especial 2",
	"| Visual | Aura Especial 3",
	"| Visual | Aura Especial 4",
	"| Visual | Aura Especial 5"
	)) {
		case 1:
		mes .np$;
		mes "------------------------------------------";
		mes "^000080"+strcharinfo(0)+"^000000";
		mes "Seu efeito foi ativo com sucesso.";
		mes "------------------------------------------";
			//Inicia efeito
			hateffect 218, true;
			//Termina efeito
			hateffect 219, false;
			hateffect 194, false;
			hateffect 195, false;
			hateffect 196, false;
			hateffect(HAT_EF_Magiccircle_Blue_TW,false);
			soundeffect "aura_03.wav",0;
			break;
		case 2:
		mes .np$;
		mes "------------------------------------------";
		mes "^000080"+strcharinfo(0)+"^000000";
		mes "Seu efeito foi ativo com sucesso.";
		mes "------------------------------------------";
			//Inicia efeito
			hateffect 219, true;
			//Termina efeito
			hateffect 218, false;
			hateffect 194, false;
			hateffect 195, false;
			hateffect 196, false;
			hateffect(HAT_EF_Magiccircle_Blue_TW,false);
			soundeffect "aura_03.wav",0;
			break;
		case 3:
		mes .np$;
		mes "------------------------------------------";
		mes "^000080"+strcharinfo(0)+"^000000";
		mes "Seu efeito foi ativo com sucesso.";
		mes "------------------------------------------";
			//Inicia efeito
			hateffect 194, true;
			//Termina efeito
			hateffect 218, false;
			hateffect 219, false;
			hateffect 195, false;
			hateffect 196, false;
			hateffect(HAT_EF_Magiccircle_Blue_TW,false);
			soundeffect "aura_03.wav",0;
			break;
		case 4:
		mes .np$;
		mes "------------------------------------------";
		mes "^000080"+strcharinfo(0)+"^000000";
		mes "Seu efeito foi ativo com sucesso.";
		mes "------------------------------------------";
			//Inicia efeito
			hateffect 195, true;
			//Termina efeito
			hateffect 218, false;
			hateffect 219, false;
			hateffect 194, false;
			hateffect 196, false;
			hateffect(HAT_EF_Magiccircle_Blue_TW,false);
			soundeffect "aura_03.wav",0;
			break;
		case 5:
		mes .np$;
		mes "------------------------------------------";
		mes "^000080"+strcharinfo(0)+"^000000";
		mes "Seu efeito foi ativo com sucesso.";
		mes "------------------------------------------";
			//Inicia efeito
			hateffect 196, true;
			//Termina efeito
			hateffect 218, false;
			hateffect 219, false;
			hateffect 194, false;
			hateffect 195, false;
			hateffect(HAT_EF_Magiccircle_Blue_TW,false);
			soundeffect "aura_03.wav",0;
			break;
		}
	} else {
	mes .np$;
	mes "------------------------------------------";
	mes "Você não tem o ticket necessário:";
	mes "------------------------------------------";
	mes "Requisitos:";
	mes "<ITEM>Ticket Ativador de Auras<INFO>31615</INFO></ITEM>";
	mes "------------------------------------------";
     soundeffect "aura_02.wav",0;
	}
	close;
OnInit:
	.@UID = getnpcid(0);
	setunittitle(.@UID, "[ Exclusividade ]");
    setunitdata .@UID, UNPC_GROUP_ID, 127;
}
