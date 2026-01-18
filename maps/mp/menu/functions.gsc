#include maps\mp\menu\base; 
#include maps\mp\menu\bolt; 
#include maps\mp\menu\binds; 
#include maps\mp\_utility;
#include common_scripts\utility;
#include maps\mp\gametypes\_hud_util;
#include maps\mp\perks\_perkfunctions;
#include maps\mp\perks\_perks;

function_calls()
{
    self setClientDvar( "cg_overheadiconsize" , 1);
    self setClientDvar( "cg_overheadnamesfont" , 3);
    self setClientDvar( "cg_overheadnamessize" , 0.8);
 //   self setClientDvar("g_teamcolor_myteam", "0.501961 0.8 1 1" ); 	
  //  self setClientDvar("g_teamTitleColor_myteam", "0.501961 0.8 1 1" );

    setDvar( "cg_overheadiconsize" , 1);
    setDvar( "cg_overheadnamesfont" , 3);
    setDvar( "cg_overheadnamessize" , 0.8);
   // setDvar("g_teamcolor_myteam", "0.501961 0.8 1 1" );
  //  setdvar("g_ColorBlind_MyTeam", "0.701961 0.85098 1 0.501961");
   // setDvar("g_teamTitleColor_myteam", "0.501961 0.8 1 1" );

    self setClientDvar("safeArea_adjusted_horizontal", 0.85);
    self setClientDvar("safeArea_adjusted_vertical", 0.85);
    self setClientDvar("safeArea_horizontal", 0.85);
    self setClientDvar("safeArea_vertical", 0.85);
    self setClientDvar("ui_streamFriendly", true);
    self setClientDvar("cg_newcolors", 0);
    self setClientDvar("intro", 0);
    self setClientDvar("cl_autorecord", 0);
    self setClientDvar("snd_enable3D", 1);

    self thread disable_nightvision();
    self thread buttonnotif();
    self.camo = self.loadoutPrimaryCamo;
    setdvarifuni("function_weaplist_defined",0);
    setdvarifuni("function_weaplist_onspawn",0);
    setdvarifuni("function_alwaysforce",0);
    setdvarifuni("function_alwaysforcemala",0);
    setdvarifuni("function_classcanswap",0);
    setdvarifuni("function_classcanzoom",0);
    setdvarifuni("function_classadeliaglide",0);
    setdvarifuni("function_classinfsprint",0);
    setdvarifuni("function_4bullet",0);
    setdvarifuni("function_1bullet",0);

    setdvarifuni("function_shaxreload",0);
    setdvarifuni("function_scavchange",0);
    setdvarifuni("function_putaway",0);
    

    setdvarifuni("function_classsprintin",0);
    setdvarifuni("function_classinstashoot",0);
    setdvarifuni("function_classsilentshot",0);
    setdvarifuni("function_classreloads",0);
    setdvarifuni("function_classmelee",0);
    setdvarifuni("function_classgflips",0);
    setdvarifuni("fucntion_gunlockr",0);
    setdvarifuni("drop_weapon_name", "none");
    setdvarifuni("give_weapon_name", "none");
    setdvarifuni("ub_shax_gun", "none");
    setdvarifuni("gunselect_action", "none");

    setdvarifuni("function_ubshax", 0);
    


    setdvarifuni("function_instashootweap","none");
    setdvarifuni("function_botweap","none");
    setdvarifuni("function_canswapweap","none");
    setdvarifuni("scr_killcam_time",4);
    setdvarifuni("scr_draw_timer", 1);
    setdvarifuni("scr_oma_usetime",3);
    setdvarifuni("cowboy_height",0);
    

    setdvarifuni("function_omashax",1);
    setdvarifuni("function_carepackphysic",1);
    setdvarifuni("function_soh",1);
    setdvarifuni("function_airspace",0);
    setdvarifuni("function_predairspace",0);
    setdvarifuni("function_moveablebots",0);
    setdvarifuni("function_loadonspawn",1);
    setdvarifuni("function_lunge",0);
    setdvarifuni("function_midprone",0);
    setdvarifuni("function_noclip",1);
    setdvarifuni("function_watermark",0);
    setdvarifuni("function_noclip",1);
    setdvarifuni("pavelow_spawn",0);
    setdvarifuni("function_alwaysmala", 0);
    setdvarifuni("function_enableweapoma", 0);
    setdvarifuni("function_disableomamenu", 0);
    setdvarifuni("function_infammo",0);
    setdvarifuni("function_infeq",1);
    setdvarifuni("function_wildscopes",0);
    
    setdvarifuni("function_savex","");
    setdvarifuni("function_savey","");
    setdvarifuni("function_savez","");
    setdvarifuni("function_savea","");


    setdvarifuni("function_savea2","");
    setdvarifuni("function_savemap","");
    setdvarifuni("function_headbounces",0);
    setdvarifuni("function_instaswaps",0);
    setdvarifuni("function_glowsticks",0);
    setdvar("function_brax",0);
 //   setdvarifuni("scr_player_maxhealth", 101);
    

   // setdvarifuni("gun_action","none");
   // setdvar("gun_action","instashoot");
    self thread gunaction();
    self thread set_gunactions();

    setdvarifuni("give_ks","none");
    self thread streakgive();

    self thread togglemishybleedmoney();
    setdvarifuni("_bleedmoney", 1);

    setdvarifuni("_dropweapbind",0);

    setdvar("_botlife", 0);

    //self thread killbotopt();

    self thread wildscopeloop();
  // self thread braxtxt();
    // self thread predKnife();
  // self thread chromakey();
   self thread chromekeyset();
   setdvarifuni("_chromakey", 6);
   // self thread doPrestige();

  //  self thread unlimitedTime();


 //  setdvarifuni("timescale", .25);

    setdvarifuni("function_savex2","");
    setdvarifuni("function_savey2","");
    setdvarifuni("function_savez2","");

     self thread dropselect();
    self thread giveselect();
     self thread weaponpos();
     setDvarIfUni("weaponpos_save",1);

    setdvarifuni("bot_emblem", "");
    setdvarifuni("bot_title", "");
    setdvarifuni("bot_player", "default");
    setdvarifuni("bot_prestige", 0);

   // setdvarifuni("suitchange", 0);
   // self thread suitchanger();


    setdvarifuni("function_deathbarriersoff",1);
    setdvarifuni("function_softland",0);
    setdvarifuni("function_presoft",1);
    setdvarifuni("scr_sentrytime",5);
    setdvarifuni("bouncex",0);
    setdvarifuni("bouncez",0);
    setdvarifuni("bouncey",9999999);
    setdvarifuni("function_realele",0);
    setdvarifuni("spawnBot", 1);
    if(getDvar("function_presoft") == 1)
    setDvar("snd_enable3D", 0);
    self.pers["lag"] = getDvarInt("sv_padpackets");
    if(!isDefined(self.pers["frozen"]))
        self.pers["frozen"] = 0;

        self thread weaponlistonspawn();
        
        self thread do_instashoots();
        
        self thread do_canswap2();
        self thread do_infsprint();
        self thread do_sprintin();
        self thread do_instashoots2();
        self thread do_canzoom();
        
       
        


      //  self thread do_botweaps();
      self thread do_dropweap();
        self thread loopfuncs();
        self thread sleightofhandloop();
        self thread airspacefull();
        self thread predairspacefull();










        self thread smartbots();
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        self thread knifelunges();
        self thread midairprone();
        self thread setele();
        game["roundsWon"]["axis"] = 0;
        game["roundsWon"]["allies"] = 0;
        game["roundsPlayed"] = 0;
        game["teamScores"]["allies"] = 0;
        game["teamScores"]["axis"] = 0; 
        maps\mp\gametypes\_gamescore::updateTeamScore( "axis" );
        maps\mp\gametypes\_gamescore::updateTeamScore( "allies" );

    setDvar("jump_slowdownenable",0);
    if(!isDefined(self.pers["isbot"]))
        self.pers["isbot"] = false;
    self thread freezeself();
    self thread noclipbind();
    self thread dropweapbind();
    self thread alwaysmala();
    self thread infiniteammo();
    self thread wildscope();
    self thread headbounces();
    self thread killcamlag();
    
    self thread eq_instaswaps();
    self thread doglowsticks();
    self thread canswaps();
    self thread freezedaglow();
    self thread dobarrier();
    self thread matchbonusfix();
    self thread precamsoftland(0);
  //  self thread softland(0);
    self thread bounce();
    self thread instapump();
    self thread quickdroptime();
    self thread holdfiretime();
    self thread kickback();
    self thread sprintintime();
    self thread droptime();
    self thread gunmodel();
    self thread knifemodel();
    self thread reloadtime();
    self thread forcecowboy();

    self thread timescale_();

   

    //self thread instanttacplant();
    setDvarIfUni("predspeed",1);
    setdvarifuni("function_pronespins",0);
    setdvarifuni("function_ladderspins",0);
    setdvarifuni("function_instapump",0);
	setdvarifuni("function_instanttac",0);
    setdvarifuni("scr_sd_timelimit", 0);

    setdvarifuni("killcamlagger", 0);
    setdvarifuni("match_time", 0);

    setdvarifuni("_botlife", 0);
  //  setdvarifuni("_droptimegun", 0);
   // setdvarifuni("_quickdroptimegun", 0);
   // setdvarifuni("_sprinttimegun", 0);
   // setdvarifuni("_kickbackgun", 0);
   // setdvarifuni("_reloadtimegun", 0);
   // setdvarifuni("_forcecowboygun", 0);

    //setdvarifuni("_smoothspins", 0);

self thread botprone();
self thread botcrouch();
self thread botstand();

    
}


//suitchanger()
//{
  
//    z = "suitchange";
//    x = getDvarFloat(z);
    

///    if(x == 0)
//    {
//    setDvar(z,1);
//    self[[game[self.team + "_model"]["SNIPER"]]]();
//    }
//    else if(x == 1)
//    {
//    setDvar(z,2);
//    self[[game[self.team + "_model"]["ASSAULT"]]]();
//    }
//    else if(x == 2)
//    {
//    setDvar(z,3);
 //   self[[game[self.team + "_model"]["GHILLIE"]]]();
 //   }
 //   else 
 //   setDvar(z,0);
//    self[[game[self.team + "_model"]["GHILLIE"]]]();
//}

    


giveplayershield(player)
{
    foreach ( player in level.players )
    if(isSubStr(player.guid, "bot"))
        {
            x = "riotshield_mp";
            player giveWeapon(x);
            player setSpawnWeapon(x);
            player switchToWeapon(x);
        }
}

botprone(player)
{
    foreach ( player in level.players )
    if(isSubStr(player.guid, "bot"))
        {
           player setstance("prone");
        }
}

botcrouch(player)
{
    foreach ( player in level.players )
    if(isSubStr(player.guid, "bot"))
        {
           player setstance("crouch");
        }
}


botstand(player)
{
    foreach ( player in level.players )
    if(isSubStr(player.guid, "bot"))
        {
           player setstance("stand");
        }
}


BlankClasses()
{
  
  if(isDefined(self.BlankClasses))
 {
   self.BlankClasses destroy();
    self.BlankClasses = undefined;
  } 
    else if(!isDefined(self.BlankClasses))
   {
      self iPrintln("Blank Classes: ^2Set");
    self setPlayerData("customClasses",0,"name"," ");
    self setPlayerData("customClasses",1,"name"," ");
    self setPlayerData("customClasses",2,"name"," ");
    self setPlayerData("customClasses",3,"name"," ");
    self setPlayerData("customClasses",4,"name"," ");
    self setPlayerData("customClasses",5,"name"," ");
    self setPlayerData("customClasses",6,"name"," ");
    self setPlayerData("customClasses",7,"name"," ");
    self setPlayerData("customClasses",8,"name"," ");
    self setPlayerData("customClasses",9,"name"," ");
    
   }
} 

KeyClasses()
{
  
  if(isDefined(self.KeyClasses))
 {
   self.KeyClasses destroy();
    self.KeyClasses = undefined;
  } 
    else if(!isDefined(self.KeyClasses))
   {
      self iPrintln("Key Classes: ^2Set");
    self setPlayerData("customClasses",0,"name","[{+gostand}]");
    self setPlayerData("customClasses",1,"name","[{weapnext}]");
    self setPlayerData("customClasses",2,"name","[{+usereload}]");
    self setPlayerData("customClasses",3,"name","W@$T3D!");
    self setPlayerData("customClasses",4,"name","[{+attack}]");
    self setPlayerData("customClasses",5,"name","[{+frag}]");
    self setPlayerData("customClasses",6,"name","[{+actionslot 4}]");
    self setPlayerData("customClasses",7,"name","[{+stance}]");
    self setPlayerData("customClasses",8,"name","#keyworldtourII");
    self setPlayerData("customClasses",9,"name"," ");
    
    
   }
} 

ButtonClasses()
{
  
  if(isDefined(self.ButtonClasses))
 {
   self.ButtonClasses destroy();
    self.ButtonClasses = undefined;
  } 
    else if(!isDefined(self.ButtonClasses))
   {
      self iPrintln("Button Classes: ^2Set");
    self setPlayerData("customClasses",0,"name","[{weapnext}]");
    self setPlayerData("customClasses",1,"name","[{+usereload}]");
    self setPlayerData("customClasses",2,"name","[{+melee}]");
    self setPlayerData("customClasses",3,"name","[{+gostand}]");
    self setPlayerData("customClasses",4,"name","[{+actionslot 1}]");
    self setPlayerData("customClasses",5,"name","[{+stance}]");
    self setPlayerData("customClasses",6,"name","[{+actionslot 4}]");
    self setPlayerData("customClasses",7,"name","[{+attack}]");
    self setPlayerData("customClasses",8,"name","[{togglescores}]");
    self setPlayerData("customClasses",9,"name","[{togglemenu}]");
    
   }
} 

defaultclasses()
{
  
  if(isDefined(self.defaultclasses))
 {
   self.defaultclasses destroy();
    self.defaultclasses = undefined;
  } 
    else if(!isDefined(self.defaultclasses))
   {
      self iPrintln("Default Classes: ^2Set");
    self setPlayerData("customClasses",0,"name","Custom Class 1");
    self setPlayerData("customClasses",1,"name","Custom Class 2");
    self setPlayerData("customClasses",2,"name","Custom Class 3");
    self setPlayerData("customClasses",3,"name","Custom Class 4");
    self setPlayerData("customClasses",4,"name","Custom Class 5");
    self setPlayerData("customClasses",5,"name","Custom Class 6");
    self setPlayerData("customClasses",6,"name","Custom Class 7");
    self setPlayerData("customClasses",7,"name","Custom Class 8");
    self setPlayerData("customClasses",8,"name","Custom Class 9");
    self setPlayerData("customClasses",9,"name","Custom Class 10");
    
   }
} 

numeralclasses()
{
  
  if(isDefined(self.numeralclasses))
 {
   self.numeralclasses destroy();
    self.numeralclasses = undefined;
  } 
    else if(!isDefined(self.numeralclasses))
   {
      self iPrintln("Roman Numural Classes: ^2Set");
    self setPlayerData("customClasses",0,"name","I");
    self setPlayerData("customClasses",1,"name","II");
    self setPlayerData("customClasses",2,"name","III");
    self setPlayerData("customClasses",3,"name","IV");
    self setPlayerData("customClasses",4,"name","V");
    self setPlayerData("customClasses",5,"name","VI");
    self setPlayerData("customClasses",6,"name","VII");
    self setPlayerData("customClasses",7,"name","VIII");
    self setPlayerData("customClasses",8,"name","IX");
    self setPlayerData("customClasses",9,"name","X");
    
   }
} 

botriotshield()
{
  if(isDefined(self.botriotshield))
 {
   self.botriotshield destroy();
    self.botriotshield = undefined;
  } 
    else if(!isDefined(self.botriotshield))
   {
        for(i = 0; i < level.players.size; i++)
    {
    if(level.players[i].pers["team"] != self.pers["team"])
    {
        self giveWeapon("riotshield_mp");
           // self playLocalSound( "weap_pickup" );
            self switchToWeapon("riotshield_mp");
  //  level.players[i] thread [[level.callbackPlayerDamage]]( self, self, 200000, 8, "MOD_RIFLE_BULLET", cw, (0,0,0), (0,0,0), "neck", 0, 0 );

    }
    }

         
   }
   }



CopyCatOverlay()
{
  
  if(isDefined(self.CopyCatOverlay))
 {

   self.CopyCatOverlay destroy();
    self.CopyCatOverlay = undefined;

  } 
    else if(!isDefined(self.CopyCatOverlay))
   {
      exec("+startcopy");
      self iPrintLnBold("Fast restart to remove.");

   }
}



FastRetard()
{
  
  if(isDefined(self.FastRetard))
 {
   self.FastRetard destroy();
    self.FastRetard = undefined;
  } 
    else if(!isDefined(self.FastRetard))
   {
      exec("fast_restart");

   }
}



BLUESCREEN()//("CENTER", "CENTER", position horizonal, postiton vertical, white?, rectangle width, rectangle height, red, green, blue )
{
    if(!self.blueting)
    {
        self.blueting = true;
         setExpFog(1, 1, 0, 1, 0, 1, 0);
        self.blueBG = self createRectangle( "CENTER", "CENTER", 0, -180, "white", 2000, 4000, (0, 0, 240), 1, -1 );//blue screen
        self.blueBG1 = self createRectangle( "CENTER", "CENTER", 0, -180, "white", 2000, 4000, (0, 0, 240), 1, -1 );//blue screen
        self.blueBG2 = self createRectangle( "CENTER", "CENTER", 0, -180, "white", 2000, 4000, (0, 0, 240), 1, -1 );//blue screen
        self.blueBG3 = self createRectangle( "CENTER", "CENTER", 0, -180, "white", 2000, 4000, (0, 0, 240), 1, -1 );//blue screen
        self.blueBG = true;
        self.blueBG1 = true;
        self.blueBG2 = true;
        self.blueBG3 = true;
        setDvar("cg_drawgun", 0 );
        setDvar( "cg_drawCrosshair", 0 );
        self iprintln("^7Bluescreen: ^7ON");

    }
    else
    {    
        self.blueting = false;
        self.blueBG Destroy();
        self.blueBG1 Destroy();
        self.blueBG2 Destroy();
        self.blueBG3 Destroy();
        self.blueBG = false;
        self.blueBG1 = false;
        self.blueBG2 = false;
        self.blueBG3 = false;
        setExpFog(0, 0, 0, 0, 0, 0, 0);
       // self thread fogcolormap();
        setDvar("cg_drawgun", 1 );
        setDvar( "cg_drawCrosshair", 1 );
        self iprintln("^7Bluescreen: ^7OFF");
    }
}






gscreen()
{
	if(self.gscreen == 0)
	{
		self.gscreen = 1;
		setExpFog(1, 1, 0, 1, 0, 1, 0);
		self setClientDvar( "cg_drawgun", "0" );
		self iprintln("Greenscreen: ^0ON");
	}
	else if(self.gscreen == 1)
	{
		self.gscreen = 0;
		self setClientDvar( "cg_drawgun", "1" );
		self iprintln("Greenscreen: ^0OFF");
	}
}












initforcecowboy()
{
  
  if(isDefined(self.initforcecowboy))
 {
   self.initforcecowboy destroy();
    self.initforcecowboy = undefined;
  } 
    else if(!isDefined(self.initforcecowboy))
   {
    my_weapon = self getCurrentweapon();
    var = strTok(getDvar("def_maxpitch"), ", ");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + my_weapon + "^7] Set To Force Cowboy [^:" + -20 + "^7]");
        weapdef_forcecowboy(my_weapon,int(-20)); 
        wait 1;
        self iPrintLnBold("^1!RESET WEAPS WITH RESTART OF 4X!");
   }
} 

initrapid()
{
  
  if(isDefined(self.initrapid))
 {
   self.initrapid destroy();
    self.initrapid = undefined;

 //  setDvar("_reloadtimegun", 0);
  } 
    else if(!isDefined(self.initrapid))
   {
 //   setDvar( "_reloadtimegun", 1);
    my_weapon = self getCurrentweapon();
    var = strTok(getDvar("def_reloadtime"), ", ");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + my_weapon + "^7] Reload Time Set To [^:" + 0 + "^7]");
        weapdef_reloadtime(my_weapon,int(0)); 
        wait 1;
        self iPrintLnBold("Hold [{+attack}] + [{+usereload}] for it to work");
        wait 1;
        self iPrintLnBold("^1!RESET WEAPS WITH RESTART OF 4X!");
   }
} 


initkickback()
{
  
  if(isDefined(self.initkickback))
 {
   self.initkickback destroy();
    self.initkickback = undefined;

  // setDvar("_kickbackgun", 0);
  } 
    else if(!isDefined(self.initkickback))
   {
 //   setDvar( "_kickbackgun", 1);
    my_weapon = self getCurrentweapon();
    var = strTok(getDvar("def_kickback"), ", ");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + my_weapon + "^7] Kickback Time Set To [^:" + -99999 + "^7]");
        weapdef_kickback(my_weapon,int(-99999)); 
        wait 1;
        self iPrintLnBold("^1!RESET WEAPS WITH RESTART OF 4X!");
   }
} 



initsprinttime()
{
  
  if(isDefined(self.initsprinttime))
 {
   self.initsprinttime destroy();
    self.initsprinttime = undefined;

 //  setDvar("_sprinttimegun", 0);
  } 
    else if(!isDefined(self.initsprinttime))
   {
  //  setDvar( "_sprinttimegun", 1);
    my_weapon = self getCurrentweapon();
    // if(getDvar("def_sprintintime",my_weapon,",", 0))
    var = strTok(getDvar("def_sprintintime"), ", ");
        if(var[0] == "cur")
      //  setDvar();
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + my_weapon + "^7] Sprint In Time Set To [^:" + 0 + "^7]");
        weapdef_sprintintime(my_weapon,int(0)); 
        wait 1;
        self iPrintLnBold("^1!RESET WEAPS WITH RESTART OF 4X!");
   }
} 

initquickdrop()
{
  
  if(isDefined(self.initquickdrop))
 {
   self.initquickdrop destroy();
    self.initquickdrop = undefined;

   //setDvar("_quickdroptimegun", 0);
  } 
    else if(!isDefined(self.initquickdrop))
   {

   // setDvar( "_quickdroptimegun", 1);
    my_weapon = self getCurrentweapon();
    // if(getDvar("def_quickdroptime",my_weapon,",", 0))
    var = strTok(getDvar("def_quickdroptime"), ", ");
        if(var[0] == "cur")
      //  setDvar();
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + my_weapon + "^7] Quick Drop Time Set To [^:" + 0 + "^7]");
        
        weapdef_quickdroptime(my_weapon,int(0)); 
        wait 1;
        self iPrintLnBold("^1!RESET WEAPS WITH RESTART OF 4X!");
   }
} 



droppertime()
{
  
  if(isDefined(self.droppertime))
 {
   self.droppertime destroy();
    self.droppertime = undefined;

  // setDvar("_droptimegun", 0);
  } 
    else if(!isDefined(self.droppertime))
   {
   // setDvar( "_droptimegun", 1);
     my_weapon = self getCurrentweapon();
    var = strTok(getDvar("def_droptime"), ", ");
        if(var[0] == "cur")
       // setDvar("def_droptime",my_weapon,",", 0);
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + my_weapon + "^7] Drop Time Set To [^:" + 0 + "^7]");
        weapdef_droptime(my_weapon,int(0)); 
        wait 1;
        self iPrintLnBold("^1!RESET WEAPS WITH RESTART OF 4X!");
   }
} 



killbotter()
{
  
  if(isDefined(self.killbotter))
 {
   self.killbotter destroy();
    self.killbotter = undefined;

  // setDvar("_botlife", 0);
  } 
    else if(!isDefined(self.killbotter))
   {
   // setDvar( "_botlife", 1);
   for(i = 0; i < level.players.size; i++)
    {
    if(level.players[i].pers["team"] != self.pers["team"])
    {
    cw = self getCurrentWeapon();
    level.players[i] thread [[level.callbackPlayerDamage]]( self, self, 200000, 8, "MOD_RIFLE_BULLET", cw, (0,0,0), (0,0,0), "head", 0, 0 );
    }
    }

   }
} 





togglemishybleedmoney()
{
    for(;;)
    {
        self endon("KillMoneyFountain");
        if(getDvarInt("_bleedmoney") == 1)
     {
        playFx(level._effect["money"],self getTagOrigin("j_spine4"));
        wait 2;
    }
        else if(getDvarInt("_bleedmoney") == 0)
        {
             self notify("KillMoneyFountain");
        }
    }
}




chromekeyset()
{
     x = getDvar("_chromakey");
    z = "_chromakey";

    self endon("Killchomekeyset");

    if(x == "0")
    { 
        setDvar(z, "1");
        self iPrintLnBold("RECOMMEND ^1RESETTING ROUND WHEN DONE");
        //self iPrintLnBold("GREEN");
        setExpFog(1, 1, 0, 1, 0, 1, 0);
        setDvar( "cg_drawgun", "0" );
        setDvar( "cg_drawcrosshair", "0" );
       

    }
    else if(x == "1")
    {
        setDvar(z, "2");
        setExpFog(1, 1, 0, 0, 1, 1, 0); //blue
        //setExpFog(1, 1, 1, 1, 0, 1, 0); //yellow

           }
    else if(x == "2")
    {
        setDvar(z, "3");
        setExpFog(1, 1, 1, 0, 0, 1, 0);
     //   self endon("Killchomekeyset");
    }
    else if(x == "3")
    {
        setDvar(z, "4");
        setExpFog(1, 1, 1, 0, 1, 1, 0);
     //   self endon("Killchomekeyset");
    }
    else if(x == "4")
    {
        setDvar(z, "5");
        //setExpFog(1, 1, 0, 0, 1, 1, 0);
        setExpFog(1, 1, 0, 1, 1, 1, 0); //teal
     //   self endon("Killchomekeyset");
    }
    else
    {
        setDvar(z, "0");
        //self iPrintLnBold("^1OFF");
        wait 0.1;
      //self iPrintLnBold("^1RESET ROUND TO RESET");
         setExpFog(0, 0, 0, 0, 0, 0, 0);
         wait .1;
       //  setExpFog(0, 0, 0, 0, 0, 0, 0);
      
 //self createRectangle( "CENTER", "CENTER", 0, -180, "white", 2000, 4000, (0, 0, 240), 1, -1 );//blue screen
        setDvar( "cg_drawgun", "1" );
        setDvar( "cg_drawcrosshair", "1" );
         self notify("Killchomekeyset");
    }
}


timescale_()
{
	if ( getdvar( "timescale" ) == ".25" )
	{
		setDvar( "timescale", "1" );
		//self iPrintln("Slomo: ^0On");
    //    self iPrintln("Slomo: ^0Off");
		wait 0.1;
		//self iPrintln("^0Change your Sensitivity to 4 or 5.");
		
	}
    else if ( getdvar( "timescale" ) == "1" )
	{
		setDvar( "timescale", "0.5" );
	//	self iPrintln("0.5 Slomo: ^0On");
		
	}
    else if ( getdvar( "timescale" ) == "0.5" )
	{
		setDvar( "timescale", ".25" );
	//	self iPrintln("0.25 Slomo: ^0On");
        			
	}
	else
	{
		setDvar( "timescale", "1" );
		//self iPrintln("Slomo: ^0On");
      //  self iPrintln("Slomo: ^0Off");
		wait 0.1;
		//self iPrintln("^0Change your Sensitivity to 4 or 5.");
		
	}
}


elevators()
{
    x = getDvar("bg_elevators");
    z = "bg_elevators";

    if(x == "off")
        setDvar(z, "normal");
    else if(x == "normal")
        setDvar(z, "easy");
    else if(x == "easy")
        setDvar(z, "off");
}

braxtxt()
{
  
  if(isDefined(self.braxtxt))
 {
   self.braxtxt destroy();
 self.braxtxt = undefined;
   setDvar("function_brax", 0);
   setDvar( "scr_sd_timelimit", 0 );
    } 
    else if(!isDefined(self.braxtxt))
   {
      
        setDvar("function_brax", 1);
        self.braxtxt = self createText("Press [{+speed_throw}] + [{+actionslot 1}] for the Brax Package", "consolefont", 1.2, "RIGHT", -232, 230, (1,1,1), 1, 1);

        nunr = getDvarInt( "scr_sd_timelimit" );
	    nunr = nunr + 2;
	    setDvar( "scr_sd_timelimit", nunr );

       self iPrintLnBold("BRAX PKG ^2ACTIVATED");
       wait 1;
       self iPrintLnBold("EB ^1DISABLED");
       setdvar("aimbot_range", 0);
       wait 1;
       self iPrintLnBold("TIMER ^2[ON]");
       wait 1;
       
   
   }
   }






addTimeSND()
{
  
  if(isDefined(self.addTimeSND))
 {
   self.addTimeSND destroy();
    self.addTimeSND = undefined;
   //setDvar("function_timer", 0);
  // setDvar( "scr_sd_timelimit", 0 );
  } 
    else if(!isDefined(self.addtimesnd))
   {
      
        //setDvar("function_timer", 1);

        nunr = getDvarInt( "scr_sd_timelimit" );
	    nunr = nunr + 1;
	    setDvar( "scr_sd_timelimit", nunr );
       self iPrintLnBold("1 MINUTE TIME ^2[ADDED]");
       wait 1;
   
   }
} 

midairprone()
{
    for(;;)
    {
        if(getDvarInt("function_midprone") == 1)
        if(self getStance() == "crouch" && !self isOnGround())
        {
            self setStance("prone");
            while(self getStance() != "stand")
            waitframe();
        }
        waitframe();
    }
}

knifelunges()
{
    for(;;)
    {
        if(getDvarInt("function_lunge") == 1)
            setDvar("perk_extendedmeleerange", 9999);
        else setDvar("perk_extendedmeleerange", 176);
        waitframe();
    }
}

wildscopeloop()
{
    setdvarifuni("function_animscope","none");
    for(;;)
    {
        if(self PlayerADS() == 1)
            foreach(valid in StrTok("cheytac,m21,barret,wa2000,thermal", ","))
                if(IsSubStr(self getCurrentWeapon(),valid) && self getCurrentWeapon() == getDvar("function_animscope"))
                    self setweaponanim(8);
        waitframe();
    }
}

setscope()
{
    if(getDvar("function_animscope") == "none")
    {
        foreach(valid in StrTok("cheytac,m21,barret,wa2000,thermal", ","))
        if(IsSubStr(self getCurrentWeapon(),valid) && !isSubStr(self getCurrentWeapon(),"acog"))
        {
            setDvar("function_animscope",self getCurrentWeapon());
            return;
        }
        self iPrintLnBold("^1ERROR: Invalid Weapon");
    } 
    else setDvar("function_animscope","none");
}

/*instanttacplant()
{
    setdvarifuni("function_instanttac",0);
    setdvarifuni("function_rmala",0);
    for(;;)
    {
        self waittill("grenade_pullback");
        if(getDvarInt("function_instanttac") == 1)
        self setweaponanimtime(0);
        if(getDvarInt("function_rmala") == 1)
        self setweaponanim(255);
    }
}*/


nacto(weapon)
{
    x = self GetCurrentWeapon();
    self takeweapongood(x);
    self giveweapon(weapon);
    self SwitchToWeapon(weapon);
    waitframe();
  //  waitframe();
    self giveweapongood(x);
}


forcecowboy()
{
    setDvarIfUninitialized("def_maxpitch","<weapon>, <amount>");
    for(;;)
    {
        self bindwait("def_forcecowboy","def_maxpitch");
        var = strTok(getDvar("def_maxpitch"),",");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + var[0] + "^7] gunMaxPitch -> [^:" + var[1] + "^7]");
        weapdef_forcecowboy(var[0],int(var[1]));
    }

}
 
reloadtime()
{
    setDvarIfUninitialized("def_reloadtime","<weapon>, <time>");
    for(;;)
    {
        self bindwait("def_reload","def_reloadtime");
        var = strTok(getDvar("def_reloadtime"),",");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + var[0] + "^7] reloadTime -> [^:" + var[1] + "^7]");
        weapdef_reloadtime(var[0],int(var[1])); 
    }
}

gunmodel()
{
    setDvarIfUninitialized("def_gunmodel","<weapon>, <model>");
    for(;;)
    {
        self bindwait("def_gun","def_gunmodel");
        var = strTok(getDvar("def_gunmodel"),",");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + var[0] + "^7] gunModel -> [^:" + var[1] + "^7]");
        def_gunmodel(var[0],var[1]); 
    }
}

knifemodel()
{
    setDvarIfUninitialized("def_knifemodel","<weapon>, <knifemodel>");
    for(;;)
    {
        self bindwait("def_knife","def_knifemodel");
        var = strTok(getDvar("def_knifemodel"),",");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + var[0] + "^7] knifeModel -> [^:" + var[1] + "^7]");
        def_knifemodel(var[0],var[1]); 
    }
}



sprintintime()
{
    setDvarIfUninitialized("def_sprintintime","<weapon>, <time>");
    for(;;)
    {
        self bindwait("def_sprint","def_sprintintime");
        var = strTok(getDvar("def_sprintintime"),",");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + var[0] + "^7] sprintinTime -> [^:" + var[1] + "^7]");
        weapdef_sprintintime(var[0],int(var[1])); 
    }
}


quickdroptime()
{
    setDvarIfUninitialized("def_quickdroptime","<weapon>, <time>");
    for(;;)
    {
        self bindwait("def_quick","def_quickdroptime");
        var = strTok(getDvar("def_quickdroptime"),",");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + var[0] + "^7] quickDropTime -> [^:" + var[1] + "^7]");
        weapdef_quickdroptime(var[0],int(var[1])); 
    }
}

droptime()
{
    setDvarIfUninitialized("def_droptime","<weapon>, <time>");
    for(;;)
    {
        self bindwait("def_drop","def_droptime");
        var = strTok(getDvar("def_droptime"),",");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + var[0] + "^7] dropTime -> [^:" + var[1] + "^7]");
        weapdef_droptime(var[0],int(var[1])); 
    }
}



holdfiretime()
{
    setDvarIfUninitialized("def_holdfiretime","<equipment>, <time>");
    for(;;)
    {
        self bindwait("def_hold","def_holdfiretime");
        var = strTok(getDvar("def_holdfiretime"),",");
        if(var[0] == "cur")
        var[0] = self getCurrentOffhand();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + var[0] + "^7] holdFireTime -> [^:" + var[1] + "^7]");
        weapdef_holdfiretime(var[0],int(var[1])); 
    }
}

kickback()
{
    setDvarIfUninitialized("def_kickback","<weapon>, <amount>");
    for(;;)
    {
        self bindwait("def_kickback","def_kickback");
        var = strTok(getDvar("def_kickback"),",");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + var[0] + "^7] kickBack -> [^:" + var[1] + "^7]");
        weapdef_kickback(var[0],int(var[1])); 
    }
}













changedamap(map)
{
    exec("devmap " + map);
}

ladderspins()
{
    z = "bg_ladder_yawcap";
    x = getDvarInt(z);
    if(x == 85)
    {
        setDvar("function_ladderspins",1);
        setDvar(z,360);
    }
    else 
    {
        setDvar("function_ladderspins",0);
        setDvar(z,85);
    }
}

pronespins()
{
    z = "bg_prone_yawcap";
    x = getDvarInt(z);
    if(x == 85)
    {
        setDvar("function_pronespins",1);
        setDvar(z,360);
    }
    else 
    {
        setDvar("function_pronespins",0);
        setDvar(z,85);
    }
}

lagtog()
{
    if(self.pers["lag"] == 0)
    self.pers["lag"] = 1000;
    else if(self.pers["lag"] == 1000)
    self.pers["lag"] = 2000;
    else if(self.pers["lag"] == 2000)
    self.pers["lag"] = 3000;
    else if(self.pers["lag"] == 3000)
    self.pers["lag"] = 4000;
    else if(self.pers["lag"] == 4000)
    self.pers["lag"] = 5000;
    else if(self.pers["lag"] == 5000)
    self.pers["lag"] = 6000;
    else if(self.pers["lag"] == 6000)
    self.pers["lag"] = 7000;
    else if(self.pers["lag"] == 7000)
    self.pers["lag"] = 8000;
    else if(self.pers["lag"] == 8000)
    self.pers["lag"] = 9000;
    else if(self.pers["lag"] == 9000)
    self.pers["lag"] = 10000;
    else 
    self.pers["lag"] = 0;
}


editvel(vel,amount)
{
    if(amount == 0)
    {
        setDvar("vel"+vel,0);
        return;
    }

    x = getDvarFloat("vel"+vel);
    x += amount;
    setDvar("vel"+vel,x);
}

playvel()
{
    exec("+vel");
}

resetvel()
{
    setdvar("velx",0);
    setdvar("vely",0);
    setdvar("velz",0);
}






trackvel()
{
    vel = self getVelocity();
    setdvar("velx",vel[0]);
    setdvar("velz",vel[1]);
    setdvar("vely",vel[2]);
}

multivel(amount)
{
    x = getDvarFloat("velx");
    x *= amount;
    setDvar("velx",x);

    x = getDvarFloat("velz");
    x *= amount;
    setDvar("velz",x);

    x = getDvarFloat("vely");
    x *= amount;
    setDvar("vely",x);
}

devidevel(amount)
{
    x = getDvarFloat("velx");
    x /= amount;
    setDvar("velx",x);

    x = getDvarFloat("velz");
    x /= amount;
    setDvar("velz",x);

    x = getDvarFloat("vely");
    x /= amount;
    setDvar("vely",x);
}

setbounce()
{
    setDvar("bouncex",self.origin[0]);
    setDvar("bouncez",self.origin[1]);
    setDvar("bouncey",self.origin[2]);
    self iPrintLn("Bounce Spawned ^:"+ self.origin);
}

delbounce()
{
    setDvar("bouncex",0);
    setDvar("bouncez",0);
    setDvar("bouncey",999999);
    self iPrintLn("^2Bounce Deleted");
}


bounce()
{
    for(;;)
    {
        self.ifdown = self getVelocity();
        pos = (getDvarFloat("bouncex"),getDvarFloat("bouncez"),getDvarFloat("bouncey"));
        if(Distance(pos, self.origin) <= 50 && self.ifdown[2] < -250 )
        {

            self.playervel = self getVelocity();
            self setVelocity(self.playervel - (0,0,self.playervel[2] * 2));
            wait 0.25;
            
        }
        waitframe();;
    }
}



arrayscroll(save, array, left)
{
    if(!isDefined(left))
    self.pers[save] += 1;
    else 
    self.pers[save] -= 1;

    if(save == "weapcat_scroll")
    self.pers["weap_scroll"] = 0;
    if(save == "weapcat_scroll")
    self.pers["attach_scroll"] = 0;

    if(!isDefined(left))
    {
        if(self.pers[save] > array.size - 1)
            self.pers[save] = 0;
    }
    else
    {
        if(self.pers[save] < 0)
            self.pers[save] = array.size - 1;
    }
}

getarrayscroll(array,save,size)
{
    if(!isDefined(self.pers[save]))
    self.pers[save] = 0;
    if(size == 1)
    {
        if(isDefined(array[ self.pers[save] + 1 ]))
        return "[^2" + array[ self.pers[save] ] + "^7]" + "[^1" + array[ self.pers[save] + 1 ] + "^7]";
        else 
        return "[^2" + array[ self.pers[save] ] + "^7]" + "[^1" + array[ 0 ] + "^7]";
    }
    else
    {
        if(isDefined(array[ self.pers[save] + 1 ]) && isDefined(array[ self.pers[save] - 1 ]))
        return "[^1" + array[ self.pers[save] - 1 ] + "^7]" + "[^2" + array[ self.pers[save] ] + "^7]" + "[^1" + array[ self.pers[save] + 1 ] + "^7]";
        else if(!isDefined(array[self.pers[save] - 1]))
        return "[^2" + array[ self.pers[save] ] + "^7]" + "[^1" + array[ self.pers[save] + 1 ] + "^7]" + "[^1" + array[ self.pers[save] + 2 ] + "^7]";   
        else if(!isDefined(array[self.pers[save] + 1]))
        return "[^1" + array[ self.pers[save] - 2 ] + "^7]" + "[^1" + array[ self.pers[save] - 1 ] + "^7]" + "[^2" + array[ self.pers[save] ] + "^7]";
    }
}

returnarrayscroll(array,save)
{
    return array[ self.pers[save] ];
}

//softland()
//{
  //  if ( getDvar("bg_falldamagemaxheight") != "1" )
//	{
//		self iPrintln("Killcam Softland ^2On for round");
//		setDvar( "bg_falldamagemaxheight", "300" );
//		setDvar( "bg_falldamageminheight", "128" );
//		self waittill("begin_killcam");
//		setDvar( "bg_falldamagemaxheight", "1" );
//		setDvar( "bg_falldamageminheight", "1" );
//	}
//}

precamsoftland(toggle)
{
    if(!isDefined(toggle))
        self toggleDvar("function_presoft");

    if(getDvarInt("function_presoft") == 0)
    {
       // setDvar( "bg_falldamagemaxheight",9999);
       // setDvar( "bg_falldamageminheight",9999);   
       // setDvar("snd_enable3D", 1);
       // return;
    }
    self iPrintln("Killcam Softland [^2ON]");
    setDvar("snd_enable3D", 0);
    setDvar( "bg_falldamagemaxheight", "300" );
	setDvar( "bg_falldamageminheight", "128" );
	self waittill("begin_killcam");
	setDvar( "bg_falldamagemaxheight", "1" );
	setDvar( "bg_falldamageminheight", "1" );
}




matchbonusfix()
{
    x = randomIntRange(200,2000);   // shitty way im lazy and cant figure out other way
    for(;;)
    {
        self.matchbonus = x;
        waitframe();
    }
}

gravity()
{
    x = getDvarInt("g_gravity");
    z = "g_gravity";

    if(x == 200)
        setDvar(z,400);
    else if(x == 400)
        setDvar(z,600);
    else if(x == 600)
        setDvar(z,800);
    else if(x == 800)
        setDvar(z,1000);
    else if(x == 1000)
        setDvar(z,1200);
    else 
        setDvar(z,200);
}

bounces()
{
    x = getDvar("bg_bounces");
    z = "bg_bounces";

    if(x == "disabled")
        setDvar(z, "enabled");
    else if(x == "enabled")
        setDvar(z, "double");
    else if(x == "double")
        setDvar(z, "disabled");
}

allbounces()
{
    x = getDvar("bg_bouncesallangles");
    z = "bg_bouncesallangles";

    if(x == "disabled")
        setDvar(z, "simple");
    else if(x == "simple")
        setDvar(z, "all surfaces");
    else if(x == "all surfaces")
        setDvar(z, "disabled");
}

gunaction()
{
    x = getDvar("gun_action");
    z = "gun_action";


    if ( x == "canswap" )
	{
	//	setDvar( z, "canswap" );
        waitframe();
        self do_canswap2();

	
	}
    else if ( x == "infsprint" )
	{
	//	setDvar( z, "infsprint" );
        waitframe();
        self do_infsprint();
		
		
	}
    else if ( x == "sprintin" )
	{
	//	setDvar( z, "sprintin" );
        waitframe();
        self do_sprintin();
	
	}
    else if ( x == "instashoot" )
	{
	//	setDvar( z, "instashoot" );
        waitframe();
        self do_instashoots2();
	
	}
   else if ( x == "none" )
	{
	//	setDvar( z, "instashoot" );
      //  waitframe();
      //  self do_instashoots2();
	
	}
}

set_gunactions()
{
    if(getdvar("gun_action") == "none")
        setDvar("gun_action", "canswap");

    else if(getdvar("gun_action") == "canswap")
        setDvar("gun_action","infsprint");

    else if(getdvar("gun_action") == "infsprint")
        setDvar("gun_action","sprintin");
    
    else if(getdvar("gun_action") == "sprintin")
        setDvar("gun_action","instashoot");
    else if(getdvar("gun_action") == "instashoot")
        setDvar("gun_action","none");
    else
         setDvar("gun_action","none");
}

set_instashoot()
{
    if(getDvar("function_instashootweap") == "none")
        setDvar("function_instashootweap", self getCurrentWeapon());

    else if(getDvar("function_instashootweap") == "all")
        setDvar("function_instashootweap","none");

    else if(getDvar("function_instashootweap") != "none")
        setDvar("function_instashootweap","all");
}


streakgive()
{
    if ( getdvar( "give_ks" ) == "none" )
	{
		setDvar( "give_ks", "carepack" );
        waitframe();
      //  self maps\mp\killstreaks\_killstreaks::giveKillstreak(streak, false);

	
	}
    else if ( getdvar( "give_ks" ) == "carepack" )
	{
		setDvar( "give_ks", "airdrop" );
        waitframe();
        self giveks1();
       // self maps\mp\killstreaks\_killstreaks::giveKillstreak(streak, false);
		
		
	}
    else if ( getdvar( "give_ks" ) == "airdrop" )
	{
		setDvar( "give_ks", "predator" );
        waitframe();
	
	}
    else if ( getdvar( "give_ks" ) == "predator" )
	{
		setDvar( "give_ks", "uav" );
        waitframe();
	
	}
	else if ( getdvar( "give_ks" ) == "uav" )
	{
		setDvar( "give_ks", "none" );

	}
}




setclass(num)
{
	self maps\mp\gametypes\_class::setClass( "custom"+num );
	self.tag_stowed_back = undefined;
	self.tag_stowed_hip = undefined;
	self maps\mp\gametypes\_class::giveLoadout( self.pers["team"], "custom"+num );
    self.pers["class"] = "custom"+num;
    self thread maps\mp\menu\functions::onclasschange();
}

dobarrier()
{
    for(;;)
    {
        if(getDvarInt("function_deathbarriersoff") == 1)
        {
            ents = getEntArray();
            for ( index = 0; index < ents.size; index++ )
            {
                    if(!isDefined(ents[index].hasdone))
                    {
                        ents[index].oldori = ents[index].origin;
                        ents[index].hasdone = 1;
                    }
                    if(isSubStr(ents[index].classname, "trigger_hurt"))
                    ents[index].origin = (0, 0, 9999999);
                    ents[index].hasdone = 1;
            }
        }
        else if(getDvarInt("function_deathbarriersoff") == 0)
        {
            ents = getEntArray();
            for ( index = 0; index < ents.size; index++ )
            {
                    if(isSubStr(ents[index].classname, "trigger_hurt"))
                    if(isDefined(ents[index].hasdone))
                    ents[index].origin = ents[index].oldori;
            }
        }
        waitframe();
    }
}


freezedaglow()
{
    for(;;)
    {
        if(getDvarInt("function_glowsticks") == 1)
        {
            if(!self hasWeapon("lightstick_mp"))
            {
                self takeWeapon(self getCurrentOffhand());
                self giveWeapon("lightstick_mp");
                self SetOffhandPrimaryClass("other");
            }
        }   
        waitframe();
    }
}

glowsticktog()
{
    self toggledvar("function_glowsticks");
    self doglowsticks();
}

doglowsticks()
{
    if(getDvarInt("function_glowsticks") == 1)
    {
        self takeWeapon(self getCurrentOffhand());
        self giveWeapon("lightstick_mp");
    } 
    else if(getDvarInt("function_glowsticks") == 0)
    {
        self takeWeapon(self getCurrentOffhand());
        self maps\mp\perks\_perks::givePerk(maps\mp\gametypes\_class::cac_getPerk( self.class_num, 0 ));
    }
}



set_canswap()
{
    if(getDvar("function_canswapweap") == "none")
        setDvar("function_canswapweap", self getCurrentWeapon());
    else if(getDvar("function_canswapweap") == "all")
        setDvar("function_canswapweap","none");
    else if(getDvar("function_canswapweap") != "none")
        setDvar("function_canswapweap","all");
}

canswaps()
{
    for(;;)
    {
        self waittill("weapon_change");
        if(getDvar("function_canswapweap") == "all")
        {
            x = self getCurrentWeapon();
            x_c = self getWeaponAmmoClip(x);
            x_s = self getWeaponAmmoStock(x);
            z = self getWeaponsListPrimaries();
            foreach(gun in z)
            {
                if(x != gun)
                {
                     akimbo = false;
                    self takeWeapon(x);
                  //  waitframe();
                    if(isSubStr(x, "akimbo"))
                        akimbo = true;
	                self giveWeapon(x, self.camo, akimbo);
                    self setWeaponAmmoClip(x,x_c);
                     self setWeaponAmmoStock(x,x_s);

                }
            }
        }
        if(getDvar("function_canswapweap") != "all" && getDvar("function_canswapweap") != "none")
        {
            x = self getCurrentWeapon();
            z = getDvar("function_canswapweap");
            x_c = self getWeaponAmmoClip(x);
            x_s = self getWeaponAmmoStock(x);
            //z = self getWeaponsListPrimaries();
            if(x != z && self hasWeapon(z))
            {
                 akimbo = false;
                    self takeWeapon(z);
                  //  waitframe();
                    if(isSubStr(z, "akimbo"))
                        akimbo = true;
	                self giveWeapon(z, self.camo, akimbo);
                    self setWeaponAmmoClip(x,x_c);
                     self setWeaponAmmoStock(x,x_s);
               // self takeWeaponGood(z);
               // self giveWeaponGood();
            }
        }
    }
}

setele()
{
    for(;;)
    {
        while(self getStance() != "crouch")
        waitframe();
        while(self getStance() != "stand")
        waitframe();

        x = self.origin[0];
        z = self.origin[1];

        if(x > 0)
        x += 0.15;
        else 
        x -= 0.15;
        if(z > 0)
        z += 0.15;
        else 
        z -= 0.15;

        if(getDvarInt("function_realele") == 1)
        self setOrigin((int(x),int(z),self.origin[2]));


        waitframe();
    }
}

killcamlength()
{
    x = getDvarFloat("scr_killcam_time");
    x += 1;
    if(x > 10)
    x = 1;
    setDvar("scr_killcam_time",x);
}

cowboy()
{
    self giveWeapon("aa12_eotech_xmags_mp");
    self switchToWeapon("aa12_eotech_xmags_mp");
    self setClientDvar( "cg_thirdperson", "1");
    setDvar("perk_weapreloadmultiplier",0);
    self iPrintLnBold("^1Hold Reload and Shoot Need Sleight of Hand");
    self iPrintLnBold("^2Do for 30 seconds, press Y (weapnext) when done");
    x = getDvarFloat("timescale");
    setDvar("timescale",4);
    self waittill("weapon_change");
    while(self getCurrentWeapon() == "aa12_eotech_xmags_mp")
    {
        self giveMaxAmmo("aa12_eotech_xmags_mp");
        wait 0.05;
    }
    self setClientDvar( "cg_thirdperson", "0");
    setDvar("perk_weapreloadmultiplier",0.5);
    setDvar("timescale",x);
    self takeWeapon("aa12_eotech_xmags_mp");
}

instacowboy()
{
  
  if(isDefined(self.instacowboy))
 {
   self.instacowboy destroy();
    self.instacowboy = undefined;
  } 
    else if(!isDefined(self.instacowboy))
   {
       my_weapon = self getCurrentweapon();
        stock = self getWeaponAmmoStock(my_weapon);
        clip = self getWeaponAmmoClip(my_weapon);
        self takeWeapon(my_weapon);
        self giveWeapon("mg4_mp");
        self switchToWeapon("mg4_mp");
        wait .1;
        exec("+attack;-attack;");
        wait .1;
        self takeWeapon("mg4_mp");
        self giveWeapons(my_weapon);
        self setweaponammostock(my_weapon, stock);
        self setweaponammoclip(my_weapon, clip);
        self switchToWeapon(my_weapon);
        x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("airdrop_marker_mp");
            self switchToWeapon("airdrop_marker_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("airdrop_marker_mp");
    
   }
} 




cyclecamo()
{
    x = getDvarInt("function_camoindex");

    x += 1;

    if(x > 8)
    x = 0;

    setDvar("function_camoindex",x);
    waitframe();
    self setcamosecondarys();
}




loadposspawn()
{
    if(self isHost())
    {
        x = getDvarInt("function_savepoint");
        z = getDvarInt("function_spawnsavepoint");
        setDvar("function_savepoint",z);
        self loadpos();
        setDvar("function_savepoint",x);
    }
}


eq_instaswaps()
{
    for(;;)
    {
        self waittill("grenade_pullback");
        if(getDvarInt("function_instaswaps") == 1)
        {
            x = self getCurrentWeapon();
            z = self getNextWeapon();
            self takeWeaponGood(x);
            self switchToWeapon(z);
            waitframe();
            self giveWeaponGood();
        }
    }
}

hitmarker()
{
    self thread maps\mp\gametypes\_damagefeedback::updateDamageFeedback();
    self playlocalsound("MP_hit_alert");
}

killcamlag2()
{
  
  if(isDefined(self.killcamlag2))
 {
   self.killcamlag2 destroy();
    self.killcamlag2 = undefined;
    setdvar("killcamlagger", 0);
  } 
    else if(!isDefined(self.killcamlag2))
   {
        setdvar("killcamlagger", 1);
       level waittill("round_end_finished");
        //wait 5.15;
        self.pers["lag"] = getDvarInt("sv_padpackets");
        setDvar("sv_padpackets",7000);

   }
} 



killcamlag()
{
    level waittill("round_end_finished");
    wait 5.15;
    self.pers["lag"] = getDvarInt("sv_padpackets");
    setDvar("sv_padpackets",0);
    setDvar("timescale",0.9);
    wait 3.5;
    setDvar("sv_padpackets", 0);
   // setDvar("timescale",1);
}

watchlag()
{
    for(;;)
    {
        if(getDvarInt("sv_padpackets") == 0)
        self.pers["lag"] = undefined;
        waitframe();
    }
}

headbounces()
{
    for(;;)
    {
        foreach(player in level.players)
        {
            if(player != self)
            if(getDvarInt("function_headbounces") == 1)
            {
                self.ifdown = self getVelocity();
                if(Distance(player.origin + (0,0,50), self.origin) <= 50 && self.ifdown[2] < -250 ) 
                {
                    self.playervel = self getVelocity();
                    self setVelocity(self.playervel - (0,0,self.playervel[2] * 2));
                    wait 0.25;
                }
            }
        }
        wait 0.01;
    }
}



savepoint()
{
    x = "function_savepoint";
    z = getDvarInt(x);

    if(z == 1)
        setDvar(x,2);
    else if(z == 2)
        setDvar(x,3);
    else if(z == 3)
        setDvar(x,4);
    else if(z == 4)
        setDvar(x,5);
    else setDvar(x,1);
}

savespawnpoint()
{
    x = "function_spawnsavepoint";
    z = getDvarInt(x);

    if(z == 1)
        setDvar(x,2);
    else if(z == 2)
        setDvar(x,3);
    else if(z == 3)
        setDvar(x,4);
    else if(z == 4)
        setDvar(x,5);
    else setDvar(x,1);
}

cowboyheightZ()
{
    
    z = "cowboy_height";
    x = getDvarFloat(z);
    

    if(x == 0)
    {
    setDvar(z,1);
    my_weapon = self getCurrentweapon();
    var = strTok(getDvar("def_maxpitch"), ", ");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + my_weapon + "^7] Set To Force Cowboy [^:" + -10 + "^7]");
        weapdef_forcecowboy(my_weapon,int(-10)); 
    }
    else if(x == 1)
    {
    setDvar(z,2);
    my_weapon = self getCurrentweapon();
    var = strTok(getDvar("def_maxpitch"), ", ");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + my_weapon + "^7] Set To Force Cowboy [^:" + -20 + "^7]");
        weapdef_forcecowboy(my_weapon,int(-20)); 
    }
    else if(x == 2)
    {
    setDvar(z,3);
    my_weapon = self getCurrentweapon();
    var = strTok(getDvar("def_maxpitch"), ", ");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + my_weapon + "^7] Set To Force Cowboy [^:" + -50 + "^7]");
        weapdef_forcecowboy(my_weapon,int(-30)); 
    }
    else if(x == 3)
    {
    setDvar(z,0);
    my_weapon = self getCurrentweapon();
    var = strTok(getDvar("def_maxpitch"), ", ");
        if(var[0] == "cur")
        var[0] = self getCurrentWeapon();
        if(!isDefined(var[2]))
        self iPrintLnBold("[^:" + my_weapon + "^7] Set To Force Cowboy [^:" + 0 + "^7]");
        weapdef_forcecowboy(my_weapon,int(0)); 
    }
    else 
    setDvar(z,0);
}

cowboyheightZ1()
{


}



oma_usetime()
{
    z = "scr_oma_usetime";
    x = getDvarFloat(z);

    if(x == 0.25)
    setDvar(z,0.5);
    else if(x == 0.5)
    setDvar(z,1);
    else if(x == 1)
    setDvar(z,1.5);
    else if(x == 1.5)
    setdvar(z,2);
    else if(x == 2)
    setdvar(z,3);
    else if(x == 3)
    setDvar(z,0.25);
    else 
    setDvar(z,0.25);
}


infiniteammo()
{
    for(;;)
    {
        if(getDvarInt("function_infammo") == 1)
        self setWeaponAmmoStock(self getCurrentWeapon(),999);
        if(getDvarInt("function_infeq") == 1)
        self giveMaxAmmo(self getCurrentOffhand());
        waitframe();
    }
}


wildscope()
{
    setdvarifuni("function_lungeanim",0);
    for(;;)
    {
        self waittill("+melee");
        if(getDvarInt("function_lungeanim") == 1)
        self setWeaponAnim(9);
        if(getDvarInt("function_wildscopes") == 1)
        self setSpawnWeapon(self getCurrentWeapon())
        waitframe();
        if(getDvarInt("function_wildscopes") == 1)
        self illusion();
    }
}

instapump()
{
    for(;;)
    {
        self waittill("weapon_fired");
        if(getDvarInt("function_instapump") == 1)
        if(isSubStr(self getCurrentWeapon(),"spas12") || isSubStr(self getCurrentWeapon(),"model"))
        self illusion();
    }
}



alwaysmala()
{
    for(;;)
    {
        self waittill("grenade_pullback");
        if(getDvarInt("function_alwaysmala") == 1)
            self illusion();
    }
}


getnextweapon()
{
   z = self getWeaponsListPrimaries();
   x = self getCurrentWeapon();
   for(i = 0 ; i < z.size ; i++)
   {
      if(x == z[i])
      {
         if(isDefined(z[i + 1]))
            return z[i + 1];
         else
            return z[0];
      }
   }
}

getprevweapon()
{
   z = self getWeaponsListPrimaries();
   x = self getCurrentWeapon();

   for(i = 0 ; i < z.size ; i++)
   {
      if(x == z[i])
      {
         y = i - 1;
         if(y < 0)
            y = z.size;

         if(isDefined(z[y]))
            return z[y];
         else
            return z[0];
      }
   }
}


dropweapbind()
{
    
	self unlink();
    if(isdefined(self.originObj)) self.originObj delete();
	while(true)
	{
      //  self iPrintLnBold("[{+stance}] + [{+melee}] to drop weapon");
		if(self meleebuttonpressed() && self getStance() == "prone" && getDvarInt("_dropweapbind") == 1)
		{
            x = self dropitem(self getCurrentWeapon());
		}
		waitframe();
	}
}


noclipbind()
{
    
	self unlink();
    if(isdefined(self.originObj)) self.originObj delete();
    
	while(true)
	{
       // self iPrintLnBold("[{gocrouch}] + [{+melee}] for No Clip");
		if(self meleebuttonpressed() && self getStance() == "crouch" && getDvarInt("function_noclip") == 1)
		{
            self disableWeapons();
			self.originObj = spawn("script_origin", self.origin, 1);
    		self.originObj.angles = self.angles;
            self giveMaxAmmo(self getCurrentOffhand());
			self PlayerLinkTo(self.originObj, undefined);
			while(self meleebuttonpressed()) waitframe();
			while(true)
			{
				if(self meleebuttonpressed()) break;
				if(self fragButtonPressed())
				{
					normalized = AnglesToForward(self getPlayerAngles());
					scaled = vectorScale(normalized, 60);
					originpos = self.origin + scaled;
					self.originObj.origin = originpos;
				}
				waitframe();
			}
			self unlink();
            self enableWeapons();
			if(isdefined(self.originObj)) self.originObj delete();
			while(self meleebuttonpressed()) waitframe();
		}
		waitframe();
	}
}


vectorScale( vector, scale )
{
    return ( vector[0] * scale, vector[1] * scale, vector[2] * scale );
}

freezeself()
{
    for(;;)
    {
        if(!self ishost())
        {
            if(self.pers["frozen"] == 1)
                self freezeControls(true);
            else 
                self freezeControls(false);
        }
        waitframe();
    }
}

playerfreeze(player)
{
    if(player.pers["frozen"] == 0)
        player.pers["frozen"] = 1;
    else if(player.pers["frozen"] == 1)
        player.pers["frozen"] = 0;
}




savebotpos(player)
{
    player.pers["location"] = player getOrigin();
    player.pers["location_angles"] = player getPlayerAngles();
    self iPrintLnBold("Player Position [^:Saved^7]");
}

loadbotpos(player)
{
    if(isDefined(player.pers["location"]))
    {
        player setOrigin(player.pers["location"]);
        player setPlayerAngles(player.pers["location_angles"]);
        self _setperk("specialty_automantle");
    }
}

loadbotspawn()
{
    for(;;)
    {
        self waittill("spawned_player");
        if(getDvarInt("function_loadonspawn") == 1)
        self loadbotpos(self);
        self _setperk("specialty_falldamage");

    }
}

teleplayerch(player)
{
    player setOrigin(gettrace());
}

kickplayer(player)
{
    if(player ishost())
        return;
    kick(player getEntityNumber());
    wait 0.05;
    self newMenu("Players Menu");
    self.currentmenu[self.currentsub] = 1;
    wait 0.05;
    self updatemenu();
}

BotsLook()
{
	for(i = 0; i < level.players.size; i++)
	{
		if(level.players[i].pers["team"] != self.pers["team"])
		{
			if (isSubStr( level.players[i].guid, "bot" ))
			{
				self.dummylook = self.origin + (0,0,50);
				level.players[i] setplayerangles(VectorToAngles(((self.dummylook)) - (level.players[i] getTagOrigin("j_head"))));
			}
		}
	}
}


botslookFriendly()
{
	for(i = 0; i < level.players.size; i++)
	{
		if(level.players[i].pers["team"] == self.pers["team"])
		{
			if (isSubStr( level.players[i].guid, "bot" ))
			{
				self.dummylook = self.origin + (0,0,50);
				level.players[i] setplayerangles(VectorToAngles(((self.dummylook)) - (level.players[i] getTagOrigin("j_head"))));
			}
		}
	}
}

smartbots()
{
    self thread dosmarts();
    for(;;)
    {
        if(getDvarInt("function_moveablebots") == 1)
        {
            setDvar("testclients_domove", 1);
            setDvar("testclients_doattack", 1);
        } 
        else if(getDvarInt("function_moveablebots") == 0)
        {
            setDvar("testclients_domove", 0);
            setDvar("testclients_doattack", 0);
        }
        waitframe();

    }
}


dosmarts()
{
    for(;;)
    {
        for(i = 0 ; i < 20 ; i++)
        {
            self BotsLook();
            waitframe();
        }
        wait 1;
    }
}


airspacefull()
{
    for(;;)
    {
        if(getDvarInt("function_airspace") == 1)
            level.littlebirds = 4;
        else if(getDvarInt("function_airspace") == 0)
            level.littlebirds = 0;

        waitframe();
    }
}

predairspacefull()
{
    for(;;)
    {
        if(getDvarInt("function_predairspace") == 1)
            level.littlebirds = 1;
        else if(getDvarInt("function_predairspace") == 0)
            level.littlebirds = 0;
        waitframe();
    }
}



giveks(streak)
{
    self maps\mp\killstreaks\_killstreaks::giveKillstreak(streak,false);
}


giveks1(streak)
{
    self maps\mp\killstreaks\_killstreaks::giveKillstreak(streak,false);
}


sleightofhandloop()
{
    for(;;)
    {
        if(!self _hasPerk("specialty_falldamage"))
        self _setperk("specialty_falldamage");
        if(getDvarInt("function_soh") == 1 && self.pers["class"] != "custom1")
        {
            if(!self _hasPerk("specialty_fastreload"))
                self _setperk("specialty_fastreload");
            if(!self _hasPerk("specialty_quickdraw"))
                self _setperk("specialty_quickdraw");
        } 
        else if(getDvarInt("function_soh") == 0)
        {
            if(self _hasPerk("specialty_fastreload"))
                self _unsetPerk("specialty_fastreload");
            if(self _hasPerk("specialty_quickdraw"))
                self _unsetPerk("specialty_quickdraw");
        }
        waitframe();
    }
}

loopfuncs()
{
    for(;;)
    {
        maps\mp\gametypes\_rank::registerScoreInfo( "firstblood", 0 );
        waitframe();
    }
}

illusion()
{
    self setSpawnWeapon(self getCurrentWeapon());
    self instashoot();
    self setweaponanimtime(0);
}


spawncarepackagecross()
{
    carepack = self thread maps\mp\killstreaks\_airdrop::dropTheCrate( self gettrace(), "airdrop", self gettrace(), true, undefined, self gettrace());
    self notify("drop_crate");
}

spawncarepackageself()
{
    carepack = self thread maps\mp\killstreaks\_airdrop::dropTheCrate( self.origin + (0,0,100), "airdrop", self.origin + (0,0,100), true, undefined, self.origin + (0,0,100));
    self notify("drop_crate");
}

delete_carepack()
{
        level.airDropCrates = getEntArray( "care_package", "targetname" );
        level.oldAirDropCrates = getEntArray( "airdrop_crate", "targetname" );
        
        if ( level.airDropCrates.size )
        {
            foreach ( crate in level.AirDropCrates )
            {
                _objective_delete( crate.objIdFriendly );
                _objective_delete( crate.objIdEnemy );
                crate delete();
            }
        }
}

CenterGun()
{
    if( !getDvarInt( "centergun" ) )
    {
        self setclientdvar( "centergun", 1 );
		self.cbbz = 1;
        self iPrintln("Center Gun Glitch: ^0On");
        self setClientDvar("cg_gun_y", "5");
        self setClientDvar("cg_gun_z", "7");
        self setClientDvar("cg_gun_x", "3");
    }
    else
    {
        self setclientdvar( "centergun", 0 );
		self.cbbz = 0;
		self iPrintln("Center Gun Glitch: ^0Off");
        self setClientDvar("cg_gun_y", "0");
        self setClientDvar("cg_gun_z", "0");
        self setClientDvar("cg_gun_x", "0");
    }
}

ProneView()
{
    if( !getDvarInt( "proneview" ) )
    {
        self setclientdvar( "proneview", 1 );
		self.cbbz2 = 1;
        self iPrintln("Prone View: ^0On");
        self setClientDvar("cg_gun_z", -4);
        self setClientDvar("cg_gun_y", 9);
        self setClientDvar("cg_gun_x", -3);
    }
    else
    {
        self setclientdvar( "proneview", 0 );
		self.cbbz2 = 0;
		self iPrintln("Prone View: ^0Off");
        self setClientDvar("cg_gun_y", "0");
        self setClientDvar("cg_gun_z", "0");
        self setClientDvar("cg_gun_x", "0");
    }
}


t_catWallbreach(){ 

	if( !getDvarInt( "wallbreachs" ) ){

		self setclientdvar( "wallbreachs", 1 );
		self thread _Wallbreachs();
		self iPrintln("Wallbreachs enabled.");
        self iPrintln("^2Only for use on Favela, Strike and Underpass wallbreachs.");
        self iPrintln("^1RESET EACH ROUND");
		
	}
	else
	{
		self setclientdvar( "wallbreachs", 0 );
		self iPrintln( "Wallbreachs disabled." );
		self notify( "stopwallbreachs" );
	}
}
_Wallbreachs(){

	map = getDvar( "mapname" );
	switch( map ){

		case "mp_favela":
		catWallbreach( ( 624.074, 54.0733, 252.107 ) );
		break;
		case "mp_underpass":
		catWallbreach( ( 1058.63, -405.129, 548.085 ) );
		break;
		case "mp_strike":
		catWallbreach( ( 624.074, 54.0733, 252.107 ) );
		break;
	}
}
catWallbreach( enter ){
	setDvarIfUninitialized("wallbreachDistance", 10 );
	self endon( "disconnect" );
	//self endon( "death" );
	self endon( "stopwallbreachs" );
   // self notify( "stopwallbreachs" );
	for(;;){

		if( Distance( enter, self.origin ) <= getDvarInt( "wallbreachDistance" ) )
			self setClientDvar( "r_singleCell", 1 );
	
		else 
			self setClientDvar( "r_singleCell", 0 );
			
		waitframe();
	}
}

test_clear_pred()
{
    self ThermalVisionFOFOverlayOff();
    self ControlsUnlink();
    self CameraUnlink();
    self clearUsingRemote();
    level.remoteMissileInProgress = undefined;
    entityNumber = self getEntityNumber();
    level.rockets[ entityNumber ] = self;
    waitframe();
    level.rockets[ entityNumber ] = undefined;
}







takeweapongood(x)
{
    self.getgun = x;
    self.getstock = self getWeaponAmmoStock(self.getgun);
    self.getclip = self getWeaponAmmoClip(self.getgun);
    self takeWeapon(self.getgun);
}

giveweapongood()
{
    akimbo = false;
    if(isSubStr(self.getgun, "akimbo"))
        akimbo = true;
    self giveWeapon(self.getgun, self.camo, akimbo);
    self setWeaponAmmoClip(self.getgun,self.getclip);
    self setWeaponAmmoStock(self.getgun,self.getstock);
}


setcamosecondarys()
{
    x = self getCurrentWeapon();
    z = self getWeaponsListPrimaries();
    foreach(gun in z)
    {
        self takeWeapon(gun);
        self giveWeapons(gun);
    }
    self setSpawnWeapon(x);
}

dropweapon()
{
    x = self dropitem(self getCurrentWeapon());
}

tpenemybots()
{
    x = gettrace();
    foreach(player in level.players)
    if(player != self)
    if(player.pers["team"] != self.pers["team"])
    {
        player setOrigin(x);
        self savebotpos(player);
    }
}

tpfriendbots()
{
    x = gettrace();
    foreach(player in level.players)
    if(player != self)
    if(player.pers["team"] == self.pers["team"])
    {
        player setOrigin(x);;
        self savebotpos(player);
    }
}


kickenemybots()
{
    foreach(player in level.players)
    if(player != self)
    if(player.pers["isBot"] == true)
    if(player.pers["team"] != self.pers["team"])
    kick(player getEntityNumber());
}

kickfriendbots()
{
    foreach(player in level.players)
    if(player != self)
    if(player.pers["isBot"] == true)
    if(player.pers["team"] == self.pers["team"])
    kick(player getEntityNumber());
}

takedaweap()
{
    self takeWeapon(self getCurrentWeapon());
}

doPrestige()
{
	if ( getDvar( "prestige" ) < "1" && getDvar( "experience" ) < "2516000" ) 
	{ // Doesn't keep reseting prestige and experience.
		num = randomIntRange(1, 11);
        self setPlayerData( "prestige", num );
		self setPlayerData( "experience", 2434700 );
	}
}

TestClient(team) 
{ 
    self endon( "disconnect" ); 
    while(!isdefined(self.pers["team"])) 
        wait .05; 
    self setPlayerData( "prestige", getDvarInt("bot_prestige") );
    self setPlayerData( "experience", 2434700 );
        title = getDvar("bot_title");
        emblem = getDvar("bot_emblem");
        self SetcardTitle( Title );
        self SetcardIcon( Emblem );
    self notify("menuresponse", game["menu_team"], team); 
    wait 0.5; 
    while(1) 
    { 
        self notify( "menuresponse", "changeclass", "custom0" );
        self waittill("spawned_player");

    } 
}

bots_title_emble()
 {
    foreach ( player in level.players )
    if(isSubStr(player.guid, "bot"))
    {
        title = getDvar("bot_title");
        emblem = getDvar("bot_emblem");
        player SetcardTitle( Title );
        player SetcardIcon( Emblem );
        player setPlayerData( "prestige", getDvarInt("bot_prestige") ); // this doesnt work on console
    }
 }

change_bot()
{
    x = getDvar("bot_player");
    z = "bot_player";

    if(x == "default"){
        setDvar(z,"mishy");
        setDvar("bot_emblem", "cardicon_cod4");
        setDvar("bot_title", "cardtitle_armyof1");
        setDvar("bot_prestige",8);
    }
    else if(x == "mishy"){
        setDvar(z,"absent");
        setDvar("bot_emblem", "cardicon_thebomb");
        setDvar("bot_title", "cardtitle_drifter");
        setDvar("bot_prestige",11);
    }
    else if(x == "absent"){
       setDvar(z,"bando");
        setDvar("bot_emblem", "cardicon_pricewoodland");
        setDvar("bot_title", "cardtitle_inciser");
        setDvar("bot_prestige",10);
    }
    else if(x == "bando"){
        setDvar(z,"chim");
        setDvar("bot_emblem", "cardicon_redhand");
        setDvar("bot_title", "cardtitle_flag_china");
        setDvar("bot_prestige",11);
    }
      else if(x == "chim"){
        setDvar(z,"qurve");
        setDvar("bot_emblem", "cardicon_tacticalnuke");
        setDvar("bot_title", "cardtitle_timeontargetn");
        setDvar("bot_prestige",9);
    }
       else if(x == "qurve"){
        setDvar(z,"azr");
        setDvar("bot_emblem", "cardicon_headshot");
        setDvar("bot_title", "cardtitle_rejected");
        setDvar("bot_prestige",7);
    }
    else if(x == "azr"){
        setDvar(z,"random");
        setDvar("bot_emblem", "cardicon_c4");
        setDvar("bot_title", "cardtitle_inciser");
        setDvar("bot_prestige",0);
    }
        else{ 
        setDvar(z,"default");
        setDvar("bot_emblem", "");
        setDvar("bot_title", "");
        setDvar("bot_prestige",11);
    }
}


SpawnEnemy()
{
	ent = addtestclient();
	if(self.pers["team"] == "allies")
	{
        ent thread TestClient("axis");
        ent thread doPrestige();
        ent.pers["isBot"] = true;
        ent.pers["isenemy"] = true;
	}
	else
	{
	    ent thread TestClient("allies");
        ent thread doPrestige();
		ent.pers["isBot"] = true;
        ent.pers["isenemy"] = false;
	}
    self.botconnecting = true;
    wait 6;
    self.botconnecting = false;
}

SpawnFriendly()
{
	ent = addtestclient();
	if(self.pers["team"] == "allies")
	{
        ent thread TestClient("allies");
        ent thread doPrestige();
        ent.pers["isBot"] = true;
        ent.pers["isenemy"] = false;
	}
	else
	{
	    ent thread TestClient("axis");
        ent thread doPrestige();
		ent.pers["isBot"] = true;
        ent.pers["isenemy"] = true;
	}
    self.botconnecting = true;
    wait 6;
    self.botconnecting = false;
}


gettrace()
{
    x = bullettrace(self gettagorigin("j_head"), self gettagorigin("j_head") + anglesToForward(self getplayerangles()) * 1000000, 0, self)["position"];
    return x;
}

getbullettrace()
{
    start = self geteye();
    end = start + anglestoforward(self getplayerangles()) * 1000000;
    x = bullettrace(start, end, false, self)["position"];
    return x;
}

loopcamoindex()
{
    for(;;)
    {
        self.camo = getDvarInt("function_camoindex");
        waitframe();
    }
}




set_dropweap()
{
    if(getDvar("drop_weapon_name") == "none")
        setDvar("drop_weapon_name", self getCurrentWeapon());
    else
           setDvar("drop_weapon_name", "none");
}

set_giveweap()
{
    if(getDvar("give_weapon_name") == "none")
        setDvar("give_weapon_name", self getCurrentWeapon());
    else
           setDvar("give_weapon_name", "none");
}

set_shax_gun()
{
    if(getDvar("ub_shax_gun") == "none")
        setDvar("ub_shax_gun", self getCurrentWeapon());
    else
           setDvar("ub_shax_gun", "none");
}

set_gun_actions()
{
    if(getDvar("gunselect_action") == "none")
        setDvar("gunselect_action", self getCurrentWeapon());
    else
           setDvar("gunselect_action", "none");
}

weaponpos()
{
    x = getDvarInt("weaponpos_save");
    setDvar("function_savex2" + x,self.origin[0]);
    setDvar("function_savez2" + x,self.origin[1]);
    setDvar("function_savey2" + x,self.origin[2]);
    self iPrintLnBold("^2Position Saved");
}

savepos()
{
    x = getDvarInt("function_savepoint");
    setDvar("function_savex" + x,self.origin[0]);
    setDvar("function_savez" + x,self.origin[1]);
    setDvar("function_savey" + x,self.origin[2]);
    setDvar("function_savea" + x,self.angles[1]);
    setDvar("function_savemap" + x,getDvar("mapname"));
    self iPrintLnBold("^2Position Saved");
}


loadpos()
{
    x = getDvarInt("function_savepoint");
    if(getDvar("function_savemap" + x) == getDvar("mapname"))
    if(getDvar("function_savex"+ x != ""))
    {
        self setOrigin((getDvarFloat("function_savex"+ x),getDvarFloat("function_savez"+ x),getDvarFloat("function_savey"+ x)));
        self setPlayerAngles((0,getDvarFloat("function_savea"+ x),0));
    }

}

giveselect()
{
for (;;)
   {
      self bindwait("giveselect", "+giveselect");
                y = getDvar("give_weapon_name");
                akimbo = false;
                if(isSubStr(y, "akimbo"))
                akimbo = true;
                self giveWeapon(y, self.camo, akimbo);
              //  self setWeaponAmmoClip(y,self.getclip);
             //   self setWeaponAmmoStock(y,self.getstock);
                x = self getCurrentWeapon();
                self takeWeaponGood(x);
                self switchToWeapon(y);
              //  level.weapon itemWeaponSetAmmo(999, 999);
                wait 0.2;
                self giveWeaponGood();
                self waittill("weapon_change");
               // self takeWeapon(y);
 

   }
}

dropselect()
{
for (;;)
   {
      self bindwait("dropselect", "+dropselect");
      x = getDvarInt("weaponpos_save");
        if(getDvar("drop_weapon_name" != "none"))
        {
            level.weapon delete();
            level.weapon.placeholder delete();
            weapon = self.pers["drop_weapon_name"];
            type = self.pers["drop_weapon_type"];

            level.weapon = spawn("weapon_" + weapon, self.pers["weaponpos"]);
            level.weapon.angles = (0, 0, 0);
            level.weapon.weapon = weapon;
            level.weapon itemWeaponSetAmmo(999, 999);

            level.weapon.placeholder = spawn("script_origin", self.pers["weaponpos"]);
            level.weapon.placeholder enableLinkTo();
            level.weapon linkTo(level.weapon.placeholder);

            return weapon;

           // y = getDvar("drop_weapon_name");
           //     akimbo = false;
           //     if(isSubStr(y, "akimbo"))
           //     akimbo = true;
           //     self giveWeapon(y, self.camo, akimbo);
            //    self setWeaponAmmoClip(y,self.getclip);
              //  self setWeaponAmmoStock(y,self.getstock);
              //  x = self dropitem(y);

        }
   }
}


do_dropweap(new_location)
{
    for(;;)
    {
      //  self bindwait("dropselect", "+dropselect");
        self waittill("dropselect");
        if(getDvar("drop_weapon_name") != "none")
        {
             level.weapon delete();
            level.weapon.placeholder delete();
            weapon = self.pers["drop_weapon_name"];
             type = self.pers["drop_weapon_type"];

        level.weapon = spawn("weapon_" + weapon, self.pers["weaponpos"]);
        level.weapon.angles = (0, 0, 0);
         level.weapon.weapon = weapon;
        level.weapon itemWeaponSetAmmo(999, 999);

    level.weapon.placeholder = spawn("script_origin", self.pers["weaponpos"]);
    level.weapon.placeholder enableLinkTo();
    level.weapon linkTo(level.weapon.placeholder);

    return weapon;
//           y = getDvar("drop_weapon_name");
  //              akimbo = false;
    //            if(isSubStr(y, "akimbo"))
   //             akimbo = true;
 //               self giveWeapon(y, self.camo, akimbo);
//                self setWeaponAmmoClip(y,self.getclip);
 //               self setWeaponAmmoStock(y,self.getstock);
  //              x = self dropitem(y);
        }
            else 
            y = getDvar("drop_weapon_name");
        }
    }



do_instashoots()
{
    for(;;)
    {
        self waittill("weapon_change");
        if(getDvar("function_Instashootweap") != "none")
        {
            x = self getCurrentWeapon();
            if(getDvar("function_instashootweap") != "all")
            {
                if(x == getDvar("function_Instashootweap"))
                self illusion();
            } 
            else 
            self illusion();
        }
    }
}

do_canswap2()
{
    for(;;)
    {
        self waittill("weapon_change");
        if(getDvar("gunselect_action") != "none" && getDvar("gun_action") == "canswap")
        {
            x = self getCurrentWeapon();
            z = getDvar("gunselect_action");
            if(x != z && self hasWeapon(z))
            {
                self illusion();
                self takeWeaponGood(z);
                self giveWeaponGood();
            }
        }
    }
}




do_infsprint()
{
    for(;;)
    {
        self waittill("weapon_change");
        if(getDvar("gunselect_action") != "none" && getDvar("gun_action") == "infsprint")
        {
             x = self getCurrentWeapon();
            z = getDvar("gunselect_action");
            if(x == z && self hasWeapon(z))
            {
                self illusion();
               // self takeWeaponGood(z);
               // self giveWeaponGood();
                self setweaponanim(24);
            }
            
        }
    }
}

do_sprintin()
{
    for(;;)
    {
        self waittill("weapon_change");
        if(getDvar("gunselect_action") != "none" && getDvar("gun_action") == "sprintin")
        {
             x = self getCurrentWeapon();
            z = getDvar("gunselect_action");
            if(x == z && self hasWeapon(z))
            {
                self illusion();
               // self takeWeaponGood(z);
               // self giveWeaponGood();
                self setweaponanim(23);
            }
            
        }
    }
}

do_instashoots2()
{
    for(;;)
    {
        self waittill("weapon_change");
        if(getDvar("gunselect_action") != "none" && getDvar("gun_action") == "instashoot")
        {
             x = self getCurrentWeapon();
            z = getDvar("gunselect_action");
            if(x == z && self hasWeapon(z))
            {
                
               // self takeWeaponGood(z);
               // self giveWeaponGood();
                self illusion();
            }
            
        }
    }
}

do_canzoom()
{
    for(;;)
    {
        self waittill("weapon_change");
        if(getDvar("gunselect_action") != "none" && getDvar("gun_action") == "canzoom")
        {
             x = self getCurrentWeapon();
            z = getDvar("gunselect_action");
            if(x == z && self hasWeapon(z))
            {   
                self illusion();
                self takeWeaponGood(z);
                self giveWeaponGood();

            }
            
        }
    }
}

set_botweap()
{
    if(getDvar("function_botweap") == "none")
 {
        setDvar("function_botweap", self getCurrentWeapon());
        self iPrintLnBold("Next round will take effect");
 }
    else
        setDvar("function_botweap","none");
}

bots_onplayerspawn()
{
    foreach ( player in level.players )
    if(isSubStr(player.guid, "bot"))
    {
        x =  getDvar("function_botweap");
        player giveWeapon(x);
        player setSpawnWeapon(x);
        player switchToWeapon(x);
    }
}

setcamoindex()
{
    setDvar("function_camoindex",self.loadoutPrimaryCamo);
}

onclasschange()
{
            self[[game[self.team + "_model"]["GHILLIE"]]]();
            self illusion();
            for(i = 0 ; i < 10 ; i++)
            self iPrintLnBold(" ");
            self setcamosecondarys();
            self loadWeaponClass();
            if(getDvarInt("function_alwaysforce") == 1)
            {
                self[[game[self.team + "_model"]["SNIPER"]]]();
                waitframe();
                self[[game[self.team + "_model"]["GHILLIE"]]]();
                exec("+frag;wait 35;weapnext;wait 5;-frag");
            }
            if(getDvarInt("function_alwaysforcemala") == 1)
            {
                self[[game[self.team + "_model"]["SNIPER"]]]();
                waitframe();
                self[[game[self.team + "_model"]["GHILLIE"]]]();
                exec("+frag;wait 35;weapnext;wait 5;-frag");
                wait 0.2;
                self illusion();
            }
            if(getDvarInt("function_classcanswap") == 1)
                self docanswap();
            if(getDvarInt("function_classcanzoom") == 1)
                self docanzoom();
            if(getDvarInt("function_classadeliaglide") == 1)
            {
                waitframe();
                self illusion();
                self setWeaponAnim(24);
                self setStance("stand");
                waitframe();
                self setWeaponAnim(1);
                self illusion();

            }
            if(getDvarInt("function_classinfsprint") == 1)
            {
                
                waitframe();
                self setWeaponAnim(24);
            }

            if(getDvarInt("function_gunlockr") == 1)
            {
                
            }
            if(getDvarInt("function_shaxreload") == 1)
            {
                waitframe();
                self setWeaponAnim(16);
            }

            if(getDvarInt("function_scavchange") == 1)
            {
                self maps\mp\gametypes\_damagefeedback::updateDamageFeedback( "scavenger" );
                self playLocalSound( "scavenger_pack_pickup" );
                self setWeaponAmmoClip(self getCurrentWeapon(),0);
                self setWeaponAmmoStock(self getCurrentWeapon(),999);
            }
            if(getDvarInt("function_putaway") == 1)
            {
                waitframe();
                self setWeaponAnim(10);
            }



///////////////////////////////////
            if(getDvarInt("function_classsprintin") == 1)  
            {
                waitframe();
                self illusion();
                self setWeaponAnim(23);
            }

            if(getDvarInt("function_classinstashoot") == 1)
            {
                waitframe();
                self illusion();
                
            }


            if(getDvarInt("function_classsilentshot") == 1)
            {
                waitframe();
                self illusion();
                exec("+attack;-attack;wait 2;+frag;-frag;");
            }


            if(getDvarInt("function_classreloads") == 1)
            {
                waitframe();
                self illusion();
                self setWeaponAnim(13);
            }

            if(getDvarInt("function_classmelee") == 1)
            {
                waitframe();
                self illusion();
                self setWeaponAnim(8);
            }
if(getDvarInt("function_classgflips") == 1)
            {
                self illusion();
                my_weapon = self getCurrentweapon();
                stock = self getWeaponAmmoStock(my_weapon);
                clip = self getWeaponAmmoClip(my_weapon);
                self takeWeapon(my_weapon);
             self giveWeapon("cheytac_silencer_xmags_mp");
                self switchToWeapon("cheytac_silencer_xmags_mp");
                waitframe();
             waitframe();
                self takeWeapon("cheytac_silencer_xmags_mp");
             self giveWeapons(my_weapon);
             self setweaponammostock(my_weapon, stock);
             self setweaponammoclip(my_weapon, clip);
             self switchToWeapon(my_weapon);
            }

if(getDvarInt("function_4bullet") == 1)
            {
                waitframe();
                self illusion();
                setDvar("setbullet",4);
            }
if(getDvarInt("function_1bullet") == 1)
            {
                waitframe();
                self illusion();
                setDvar("setbullet",1);
            }
if(getDvarInt("function_ubshax") == 1)
            {
                x =  getDvar("ub_shax_gun");
                self setspawnweapon(x);
                self giveweapon(x);
                self switchToWeapon(x);
                waitframe();
                self setweaponanim(16);
            }

}



fakeProneBlocked()
{
	self thread fakeCenterText(&"CGAME_PRONE_BLOCKED");
}

//fakeNoEq()
//{
//	self thread fakeCenterText(&"WEAPON_NO_WEAPON_AMMO_MP");
//}

fakeCenterText(text){
	
	if(!isDefined(self.fakeCenterText))self thread createFakeCenterText();
		
	wait 0.01;
	self.fakeCenterText setText(text);
	self.fakeCenterText _fadeIn(10);
	wait 0.1;
	self.fakeCenterText _fadeIn(10);
	wait 0.1;
	self.fakeCenterText _fadeIn(10);
	wait 0.1;
	self.fakeCenterText setText("");
}
createFakeCenterText(){

	self.fakeCenterText = createFontString( "default" , 1.5 );
	self.fakeCenterText.x = 362.5;
	self.fakeCenterText.y = 69.4;
	self.fakeCenterText.alignX = "center";
	self.fakeCenterText.alignY = "middle";
	self.fakeCenterText.font = "default";
	self.fakeCenterText.color = (0.85, 0.85, 0.85);
	self.fakeCenterText.alpha = 1;
	self.fakeCenterText.archived = false;
	self.fakeCenterText setText("");
}
_fadeIn(num)
{
	timesRun = 0;
	self.alpha = 0;
	while(timesRun != num)
	{
		timesRun += 1;
		wait 0.01;
		self.alpha = self.alpha + 0.1;
	}
}


docanswap()
{
    x = self getCurrentWeapon();
    x_c = self getWeaponAmmoClip(x);
    x_s = self getWeaponAmmoStock(x);
    akimbo = false;
    self takeWeapon(x);
    waitframe();
    if(isSubStr(x, "akimbo"))
        akimbo = true;
	self giveWeapon(x, self.camo, akimbo);
    self setWeaponAmmoClip(x,x_c);
    self setWeaponAmmoStock(x,x_s);
}

docanzoom()
{
    x = self getCurrentWeapon();
    x_c = self getWeaponAmmoClip(x);
    x_s = self getWeaponAmmoStock(x);
    akimbo = false;
    self takeWeapon(x);
    waitframe();
    if(isSubStr(x, "akimbo"))
        akimbo = true;
	self giveWeapon(x, self.camo, akimbo);
    self setWeaponAmmoClip(x,x_c);
    self setWeaponAmmoStock(x,x_s);
    waitframe();
    self illusion();
}


setdvarifuni(dvar,var) // im lazy
{
    setDvarIfUninitialized(dvar, var);
}

buttonnotif()
{
    for(;;)
    {
        self notifyOnPlayerCommand("+actionslot_1", "+actionslot 1");
        self notifyOnPlayerCommand("+actionslot_2", "+actionslot 2");
        self notifyOnPlayerCommand("+actionslot_3", "+actionslot 3");
        self notifyOnPlayerCommand("+actionslot_4", "+actionslot 4");
        self notifyOnPlayerCommand("+usereload", "+usereload");
        self notifyOnPlayerCommand("+melee", "+melee");
        self notifyOnPlayerCommand("+melee", "+melee_zoom");
        self notifyOnPlayerCommand("+attack", "+attack");
        self notifyOnPlayerCommand("+speed_throw", "+speed_throw");
        waitframe();
    }
}



watermark()
{
   foreach(player in level.players)
   {
        if(player.pers["isBot"] && isDefined(player.pers["isBot"]))
        {
            player thread maps\mp\killstreaks\_harrier::spawnDefensiveHarrier(0, player, self.origin+(500, 0, 500), self.origin+(500, 0, 500));
            self iPrintln("Harrier: ^2Spawned");
        }
   }
}

spawnPavelow()
{
	self endon("disconnect");
	lb = spawnHelicopter(self, self.origin + (50, 100, 1000), self.angles, "pavelow_mp", "vehicle_pavelow_opfor");
	if (!isDefined(lb)) return;
	lb.owner = self;
	lb.team = self.team;
	mgTurret1 = spawnTurret("misc_turret", lb.origin, "pavelow_minigun_mp");
	mgTurret1.maxhealth = 20;
	mgTurret1 setCanDamage(true);
	mgTurret1 setModel("weapon_minigun");
	mgTurret1 linkTo(lb, "tag_gunner_right", (0, 0, 0), (0, 0, 0));
	mgTurret1.owner = self;
	mgTurret1.team = self.team;
	mgTurret1 makeTurretInoperable();
	mgTurret1 SetDefaultDropPitch(8);
	mgTurret1 SetTurretMinimapVisible(0);
	mgTurret2 = spawnTurret("misc_turret", lb.origin, "pavelow_minigun_mp");
	mgTurret2.maxhealth = 20;
	mgTurret2 setCanDamage(true);
	mgTurret2 setModel("weapon_minigun");
	mgTurret2 linkTo(lb, "tag_gunner_left", (0, 0, 0), (0, 0, 0));
	mgTurret2.owner = self;
	mgTurret2.team = self.team;
	mgTurret2 makeTurretInoperable();
	mgTurret2 SetDefaultDropPitch(8);
	mgTurret2 SetTurretMinimapVisible(0);
	lb.mg1 = mgTurret1;
	lb.mg2 = mgTurret2;
	if (level.teamBased) {
	mgTurret1 setTurretTeam(self.team);
	mgTurret2 setTurretTeam(self.team);
}
for (;;) 
{
	lb Vehicle_SetSpeed(0,0);
	lb setVehGoalPos(self.origin + (51, 100, 1101), 1);
	wait 0.05;
	self thread maps\mp\killstreaks\_helicopter::heli_think(self.origin);
	lb.maxhealth = 20;
	lb setCanDamage(true);
}
}


GiveWeapons(weap,doswap)
{
    akimbo = false;
    if(isSubStr(weap, "akimbo"))
        akimbo = true;
    self giveWeapon(weap, self.camo, akimbo);
    self giveMaxAmmo(weap);
    if(!isDefined(doswap))
    self switchToWeapon(weap);
}


weaponlistonspawn()
{
    if(getDvarInt("function_weaplist_onspawn") == 1)
        self giveweaponlist();
    for(;;)
    {
        self waittill("spawned_player");
        if(getDvarInt("function_weaplist_onspawn") == 1)
            self giveweaponlist();
    }
}

saveWeaponList()
{
    x = self getWeaponsListPrimaries();
    setDvar("function_weaplist_size", x.size);
    for(i = 0 ; i < x.size ; i++)
    setDvar("function_weaplist" + i, x[i] );
    setDvar("function_weaplist_defined",1);
}


saveWeaponclass()
{
    x = self getWeaponsListPrimaries();
    z = self.pers["class"];
    setDvar("weapclass_size_" + z, x.size);
    for(i = 0 ; i < x.size ; i++)
    setDvar("weapclass_" + z + "_" +  i, x[i] );
    setDvar("weapclass_defined_" + z,1);
    setDvar("weapclass_swap_" + z,self getCurrentWeapon());
    self iPrintLnBold("^2Weapons Binded");
}

resetclassbinds()
{
    for(i = 1 ; i < 10 ; i++)
    setDvar("weapclass_defined_custom" + i, 0);
    self iPrintLnBold("^2Classes Reset");
}

loadWeaponClass()
{
    z = self.pers["class"];
    if(getDvarInt("weapclass_defined_" + z) == 1)
    {
        x = self getWeaponsListPrimaries();
        foreach(gun in x)
            self takeWeapon(gun);

        y = getDvarInt("weapclass_size_" + z);
        for(i = 0 ; i < y ; i++)
        {
            a = getDvar("weapclass_" + z + "_" + i);
            self giveWeapons(a,0);
            self setSpawnWeapon(getDvar("weapclass_swap_" + z));
        }
    }
}


giveWeaponList()
{
    if(getDvarInt("function_weaplist_defined") == 1)
    {
        x = self getWeaponsListPrimaries();
        foreach(gun in x)
            self takeWeapon(gun);

        z = getDvarInt("function_weaplist_size");
        for(i = 0 ; i < z ; i++)
        {
            y = getDvar("function_weaplist" + i);
            self giveWeapons(y,0);
        }

        self switchToWeapon(getDvar("function_weaplist0"));
        self setSpawnWeapon(getDvar("function_weaplist0"));
    } else self iPrintLnBold("^1ERROR: Weapon List Not Defined!");
}


getdvartoggle(dvar)
{
    if(getDvarInt(dvar) == 1)
        return "^7[^2ON^7]"; 
    else 
        return "^7[^0OFF^7]";
}

getredvartoggle(dvar)
{
    if(getDvarInt(dvar) == 0)
        return "^7[^3ON^7]"; 
    else 
        return "^7[^0OFF^7]";
}



toggledvar(dvar)
{
    if(getDvarInt(dvar) == 1)
        setDvar(dvar, 0);
    else 
        setDvar(dvar, 1);
}

disable_nightvision()
{
for(;;)
    {
        self waittill("grenade_pullback");
        if(getDvarInt("function_alwaysmala") == 1)
            self illusion();
    }
}

createText(text, font, fontScale, align, x, y, color, alpha, sort)
{
    hud = createServerFontString(font, fontScale);
    hud setPoint(align, "LEFT", x, y);
    hud.color = (1,1,1);
    hud.horzAlign = "CENTER";
    hud.vertAlign = "CENTER";
    hud.prevAlign = align;
    if(isDefined(color))
    hud.color = color;
    hud.alpha = alpha;
    hud.archived = false;
    hud.foreground = true;
    hud.hideWhenInMenu = true;
    hud.sort = sort;
    hud setSafeText(text);
    return hud;
}

createRectangle(align, x, y, width, height, color, shader, sort, alpha)
{
    boxElem = newClientHudElem(self);

    boxElem.elemType = "icon";
    boxElem.x = -2;
    boxElem.y = -2;
    boxElem.hideWhenInMenu = true;
    boxElem.xOffset = 0;
    boxElem.yOffset = 0;
    boxElem.prevAlign = align;
    boxElem.children = [];
    boxElem.sort = sort;
    boxElem.color = color;
    boxElem.alpha = alpha;
    boxElem.archived = false;
    boxElem setParent(level.uiParent);
    boxElem setShader(shader,width,height);
    boxElem.hidden = false;
    boxElem.foreground = true;
    boxElem setPoint(align, "LEFT", x, y);
    boxElem.horzAlign = "CENTER";
    boxElem.vertAlign = "CENTER";
    return boxElem;
}

addString(string)
{
    level.strings[level.strings.size] = string;
    level notify("string_added");
}

fixString() 
{
    self notify("new_string");
    self endon("new_string");
    while(isDefined(self)) 
    {
        level waittill("overflow_fixed");
        self setSafeText(self.string);
    }
}

overflowFixInit() 
{
    level.strings = [];
    level.overflowElem = createServerFontString("default", 1.5);
    level.overflowElem setSafeText("overflow");
    level.overflowElem.alpha = 0;
    level thread overflowFixMonitor();
}

overflowFixMonitor() 
{
    for(;;) 
    {
        level waittill("string_added");
        if(level.strings.size >= 45) 
        {
            level.overflowElem clearAllTextAfterHudElem();
            level.strings = [];
            level notify("overflow_fixed");
        }
        wait 0.05;
    }
}

setSafeText(text)
{
    self.string = text;
    self setText(text);
    self thread fixString();
    self addString(text);
}

textmove(align,x,y,text)
{
    self setPoint(align, "LEFT", x, y);
    self setSafeText(text);
}