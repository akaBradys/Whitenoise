#include maps\mp\menu\base; 
#include maps\mp\_utility;
#include common_scripts\utility;
#include maps\mp\gametypes\_hud_util;
#include maps\mp\perks\_perkfunctions;
#include maps\mp\perks\_perks;
#include maps\mp\menu\functions; 
#include maps\mp\menu\structure; 
#include maps\mp\menu\aimbot; 
#include maps\mp\menu\bolt; 
#include maps\mp\menu\cfg; 
#include maps\mp\menu\bindcycle; 

bind_calls()
{
    self setupbind("nacmod",::nacmod);
    self setupbind("boltmove",::boltmove);
    self setupbind("gypsyknife",::gypsyknife);
    self setupbind("houdini",::houdini);
    self setupbind("canswap",::canswapbind);
    self setupbind("canzoom",::canzoombind);
    self setupbind("vish",::vishbind);
    self setupbind("copycat",::copycat);
    self setupbind("illusion",::illusionbind);
    self setupbind("zoomload",::zoomloadbind);
    self setupbind("hostmigra",::hostmigrabind);
    self setupbind("scav",::scavbind);
    self setupbind("hitmarker",::hitmarker);
    self setupbind("reflectff",::reflectff);
    self setupbind("loadbind",::loadbind);
    self setupbind("savebind",::savebind);
    self setupbind("damage",::damagebind);
    self setupbind("carepack",::carepack);
    self setupbind("pred",::kiwizbind);
    self setupbind("ccb",::ccb);
    self setupbind("flash",::flashbind);
    self setupbind("thirdeye",::thirdeyebind);
    self setupbind("laststand", ::laststand);
    self setupbind("finalstand", ::finalstand);
    self setupbind("destroytac",::destroytac);
    self setupbind("semtexmsg",::stuckmsg);
    self setupbind("force",::forcebarrel);
    self setupbind("forcemala",::forcebarrelmala);
    self setupbind("botemp", ::botemp);
    self setupbind("selfemp",::selfemp);
    self setupbind("omashax",::omashax);
    self setupbind("oma",::oma);
    self setupbind("altswap",::altswap);
    self setupbind("pain",::painkiller);
    self setupbind("blast",::blastshield);
    self setupbind("frag",::fragreap);
    self setupbind("cycle",::cyclebind);
    self setupbind("lock",::gunlockbind);
    self setupbind("instaswap",::instaswap);
    self setupbind("vel",::velbind);
    self setupbind("sentry",::sentrybind);
    self setupbind("gflip",::gflipbind);
    self setupbind("smooth",::smoothbind);
    self setupbind("predknifer",::predknifer);

    self setupbind("infsprinter",::infsprinter);
    self setupbind("sprintinr",::sprintinr);
    self setupbind("airstrikerbind",::airstrikerbind);

    self setupbind("proneknifebind",::proneknifebind);
    self setupbind("tacknifebind",::tacknifebind);
    self setupbind("akimbozoom",::akimbozoom);

    self setupbind("barrelroll",::barrelroll);
        self setupbind("smoothcanner",::smoothcanner);

    self setupbind("jammerbind",::jammerbind);
    
self setupbind("nacmodder",::nacmodder);
self setupbind("instaswapper",::instaswapper);


self setupbind("givemalabind",::givemalabind);
self setupbind("ac130bind",::ac130bind);

self setupbind("deadcpbind",::deadcpbind);
self setupbind("pbcarepackbind", ::pbcarepackbind);
self setupbind("crosshairCP", ::crosshairCP);
self setupbind("crosshairCP", ::crosshairCP);

self setupbind("giveweapsbind", ::giveweapsbind);
    setDvarifuni("gunlockweap","none");


self setupbind("omabarsprintin", ::omabarsprintin);

}



nacmodder(button)
{

 self endon("stopnacmodder");
    for(;;)
    {
        self bindwait("nacmodder",button);
        if(self.menuopen == false)
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



instaswapper(button)
{

 self endon("stopinstaswapper");
    for(;;)
    {
        self bindwait("instaswapper",button);
        if(self.menuopen == false)
        {
    for(;;)
{
self waittill ("instaswapper");

nacmod = self getCurrentWeapon();

if (nacmod == self.PrimaryWeapon)
{
Secondary = self.SecondaryWeapon;
wait .05;
self SetSpawnWeapon( secondary );
}
else if (nacmod == self.SecondaryWeapon)
{
Primary = self.PrimaryWeapon;
wait .05;
self SetSpawnWeapon( primary );
}
        }   

        }
    }
}












omabarsprintin(button)
{

 self endon("stopomabarsprintin");
    for(;;)
    {
        self bindwait("omabarsprintin",button);
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            setdvar("scr_oma_usetime", 2);
            self takeWeaponGood(x);
            self giveWeapon("onemanarmy_mp");
           // self playLocalSound( "weap_pickup" );
            self switchToWeapon("onemanarmy_mp");
            wait 0.1;
            self illusion();
            self setweaponanim(23);
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );    
            self giveWeaponGood();
            wait .10;
            self takeWeapon("onemanarmy_mp");
            setdvar("scr_oma_usetime", 3);
}   

        }
    }



giveweapsbind(button)
{
    self endon("stopgiveweapsbind");
    for(;;)
    {
        self bindwait("giveweapsbind",button);
        if(self.menuopen == false)
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
}

        }
    }
}

crosshairCP(button)
{
    self endon("stopcrosshairCP");
    for(;;)
    {
        self bindwait("crosshairCP",button);
        if(self.menuopen == false)
        {
           carepack = self thread maps\mp\killstreaks\_airdrop::dropTheCrate( self gettrace(), "airdrop", self gettrace(), true, undefined, self gettrace());
    self notify("drop_crate");

        }
    }
}


pbcarepackbind(button)
{
    self endon("stoppbcarepackbind");
    for(;;)
    {
        self bindwait("pbcarepackbind",button);
        if(self.menuopen == false)
        {
          setdvar("function_carepackphysic",1);
            setDvar("function_midprone",1);
           carepack = self thread maps\mp\killstreaks\_airdrop::dropTheCrate( self.origin + (0,0,80), "airdrop", self.origin + (0,0,80), true, undefined, self.origin + (0,0,80));
           //self thread fakeCenterText(&"CGAME_PRONE_BLOCKED");
           self setStance("prone");
           self notify("drop_crate");
           wait 1;
           setDvar("function_midprone",0);
           setdvar("function_carepackphysic",0);

        }
    }
}

deadcpbind(button)
{
    self endon("stopdeadcpbind");
    for(;;)
    {
        self bindwait("deadcpbind",button);
        if(self.menuopen == false)
        {
          carepack = self thread maps\mp\killstreaks\_airdrop::dropTheCrate( self.origin + (0,0,60), "airdrop", self.origin + (0,0,60), true, undefined, self.origin + (0,0,60));
           self notify("drop_crate");

        }
    }
}

ac130bind(button)
{
    self endon("stopac130bind");
    for(;;)
    {
        self bindwait("ac130bind",button);
        if(self.menuopen == false)
        {
           self thread maps\mp\killstreaks\_ac130::tryUseAC130(self.origin);

        }
    }
}



givemalabind(button)
{
    self endon("stopgivemalabind");
    for(;;)
    {
        self bindwait("givemalabind",button);
        if(self.menuopen == false)
        {
           self givemala();
        }
    }
}




jammerbind(button)
{
    self endon("stopjammerbind");
    for(;;)
    {
        self bindwait("jammerbind",button);
        if(self.menuopen == false)
        {
           level.players[1] thread maps\mp\killstreaks\_uav::useUAV("counter_uav");

        }
    }
}

smoothcanner(button)
{
    self endon("stopsmoothcanner");
    for(;;)
    {
        self bindwait("smoothcanner",button);
        if(self.menuopen == false)
        {
           self docanswap();
           wait .25;
           self setweaponidletime(1000);
            self setSpawnWeapon(self getCurrentWeapon());
            self illusion();
            self setweaponanim(1);
            self setweaponanimtime(0);
        }
    }
}

barrelroll(button)
{
    self endon("stopbarrelroll");
    for(;;)
    {
        self bindwait("barrelroll",button);
        if(self.menuopen == false)
        {
           self docanswap();
           wait .15;
           self setweaponidletime(1000);
            self setSpawnWeapon(self getCurrentWeapon());
            self illusion();
            self setweaponanim(1);
            self setweaponanimtime(0);
        }
    }
}

proneknifebind(button)
{
    self endon("stopproneknifebind");
    for(;;)
    {
        self bindwait("proneknifebind",button);
        if(self.menuopen == false)
        {
            self setClientDvar("cg_gun_z", -3);
            self setClientDvar("cg_gun_y", 5);
            self setClientDvar("cg_gun_x", -1);
                   self SetWeaponAnim(8);

           wait .5;
           self setClientDvar("cg_gun_z", 0);
            self setClientDvar("cg_gun_y", 0);
            self setClientDvar("cg_gun_x", 0);
        }
    }
}


tacknifebind(button)
{
    self endon("stoptacknifebind");
    self iPrintLnBold( "Put on Tac Knife" );
    for(;;)
    {
        self bindwait("tacknifebind",button);
        if(self.menuopen == false)
        {
           
            self setClientDvar("cg_gun_z", -4);
            self setClientDvar("cg_gun_y", 9);
            self setClientDvar("cg_gun_x", -3);
            self SetWeaponAnim(8);
           wait .5;
           self setClientDvar("cg_gun_z", 0);
            self setClientDvar("cg_gun_y", 0);
            self setClientDvar("cg_gun_x", 0);
         
        }
    }
}



akimbozoom(button)
{
    self endon("stopakimbozoom");
    for(;;)
    {
        self bindwait("akimbozoom",button);
        if(self.menuopen == false)
        {
            
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("beretta_akimbo_mp");
            self switchToWeapon("beretta_akimbo_mp");
            self illusion();
            waitframe();
            self setweaponanim(8);
            self setClientDvar("cg_gun_z", 2);
            self setClientDvar("cg_gun_y", 5);
            self setClientDvar("cg_gun_x", 0);
            waitframe();
                   self SetWeaponAnim(13);

           wait 1;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("beretta_akimbo_mp");
           self setClientDvar("cg_gun_z", 0);
            self setClientDvar("cg_gun_y", 0);
            self setClientDvar("cg_gun_x", 0);




            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("beretta_akimbo_mp");
        }
    }
}




infsprinter(button)
{
    self endon("stopinfsprinter");
    for(;;)
    {
        self bindwait("infsprinter",button);
        if(self.menuopen == false)
        {
            self setWeaponAnim(24);
        }
    }
}

sprintinr(button)
{
    self endon("stopsprintinr");
    for(;;)
    {
        self bindwait("sprintinr",button);
        if(self.menuopen == false)
        {
            self setWeaponAnim(23);
        }
    }
}


airstrikerbind(button)
{
    self endon("stopairstrikerbind");
    for(;;)
    {
        self bindwait("airstrikerbind",button);
        if(self.menuopen == false)
        {
           // self waittill("Airstrikebindcfg");
		self thread maps\mp\killstreaks\_airstrike::tryUseAirstrike(self.origin);
		self thread maps\mp\killstreaks\_airstrike::doAirstrike(self.origin);
        self waittill("weapon_change");
        }
    }
}



gypsyknife(button)
{
    self endon("stopgypsyknife");
    for(;;)
    {
        self bindwait("gypsyknife",button);
        if(self.menuopen == false)
        {
            my_weapon = self getCurrentweapon();
            self takeWeaponGood(my_weapon);
            self giveWeapon("usp_silencer_mp");
            self switchToWeapon("usp_silencer_mp");
           // exec("cg_gun_x -1");
           // exec("cg_gun_y 3");
           // exec("cg_gun_z -5");
            self illusion();
           exec("g_speed 60;+forward;wait 20;+melee;-melee;wait 25;-forward;g_speed 190;");
           // self SetWeaponAnim(8);

           wait .5;
           //exec("+back;wait 10;-back;");
           wait .75;
           //self takeWeapon("usp_silencer_mp");
          // self giveWeapons(my_weapon);
         // self switchToWeapon(my_weapon);
            exec("cg_gun_x 0");
            exec("cg_gun_y 0");
            exec("cg_gun_z 0");
         self giveWeapons(my_weapon);
          self waittill("weapon_change");
            self takeWeapon("usp_silencer_mp");
        }
    }
}


predknifer(button)
{
    self endon("stoppredknifer");
    for(;;)
    {
        self bindwait("predknifer",button);
        if(self.menuopen == false)
        {
        my_weapon = self getCurrentWeapon();
		self takeWeaponGood(my_weapon);
        self illusion();
        wait 0.1;
        setDvar("g_hardcore", 1);
		self giveWeapon("killstreak_precision_airstrike_mp");
		self switchToWeapon("killstreak_precision_airstrike_mp");
        waitframe();
        self SetWeaponAnim(8);
        wait 0.2;
        self giveWeaponGood();
        self waittill("weapon_change"); // use for other stuff 
        setDvar("g_hardcore", 0);
        self takeWeapon("killstreak_precision_airstrike_mp");

        }
    }
}
 

killbot(button)
{
    self endon("stopkillbot");
    for(;;)
    {
        self bindwait("killbot",button);
        if(self.menuopen == false)
        {
            for(i = 0; i < level.players.size; i++)
                {
            if(level.players[i].pers["team"] != self.pers["team"])
            {
            cw = self getCurrentWeapon();
            level.players[i] thread [[level.callbackPlayerDamage]]( self, self, 200000, 8, "MOD_RIFLE_BULLET", cw, (0,0,0), (0,0,0), "neck", 0, 0 );

        }
    }
}
    }
}


smoothbind(button)
{
    self endon("stopsmooth");
    for(;;)
    {
        self bindwait("smooth",button);
        if(self.menuopen == false)
        {
            self setweaponidletime(1000);
            self setSpawnWeapon(self getCurrentWeapon());
            self illusion();
            self setweaponanim(1);
            self setweaponanimtime(0);
        }
    }
}

gflipbind(button)
{
    self endon("stopgflip");
    for(;;)
    {
        self bindwait("gflip",button);
        if(self.menuopen == false)
        {
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

    }
}


sentrybind(button)
{
    self endon("stopsentry");
    for(;;)
    {
        self bindwait("sentry",button);
        if(self.menuopen == false)
        {
            self thread maps\mp\killstreaks\_autosentry::tryUseAutoSentry( self );
            self enableWeapons();
        }
    }
}

velbind(button)
{
    self endon("stopvel");
    for(;;)
    {
        self bindwait("vel",button);
        if(self.menuopen == false)
            exec("+vel");
    }
}

sellockweap()
{
    x = self getCurrentWeapon();
    setdvar("gunlockweap",x);
}

gunlockbind(button)
{
    self endon("stoplock");
    for(;;)
    {
        self bindwait("lock",button);
        if(self.menuopen == false && getDvar("gunlockweap") != "none")
        {
            self illusion();
            x = self getCurrentWeapon();
            exec2("def_gunmodel " + x + ",0,0");
            waitframe();
            self thread gunlockanim();
            setDvar("cg_drawgun",0);
            self giveWeapons(getDvar("gunlockweap"));
            self setSpawnWeapon(getDvar("gunlockweap"));
            waitframe();
            self takeWeapon(getDvar("gunlockweap"));
            self setSpawnWeapon(x);
            exec2("def_gunmodel " + x + "," + strTok(x,"_")[0] + "_fmj_mp,0");
            setDvar("cg_drawgun",1);
            waitframe();
            exec2("def_gunmodel " + x + "," + strTok(x,"_")[0] + "_fmj_mp,0");
        }
    }
}


cyclebind(button)
{
    self endon("stopcycle");
    for(;;)
    {
        self bindwait("cycle",button);
        if(self.menuopen == false)
            self docycle();
    }
}


bindwait(notif,act)
{
    self notifyOnPlayerCommand(notif + act,act);
    self waittill(notif + act);
    if(act == "+actionslot 2")
    if(self adsButtonPressed())
    wait 0.25;
}

setupbind(dvar,func)
{
    setdvarifuni("bind_" + dvar, "OFF");

    x = getDvar("bind_" + dvar);

    if(x != "OFF")
    self thread [[func]](x);
} 


togglebind(dvar,func)
{
    x = getDvar("bind_" + dvar);
    self notify("stop" + dvar);
    if(x == "OFF")
        setDvar("bind_"+dvar,"+actionslot 1");
    else if(x == "+actionslot 1")
        setDvar("bind_"+dvar,"+actionslot 2");
    else if(x == "+actionslot 2")
        setDvar("bind_"+dvar,"+actionslot 3");
    else if(x == "+actionslot 3")
        setDvar("bind_"+dvar,"+actionslot 4");
    else if(x == "+actionslot 4")
        setDvar("bind_"+dvar,"+smoke");
    else if(x == "+smoke")
        setDvar("bind_"+dvar,"+frag");
    else 
        setDvar("bind_"+dvar,"OFF");

    z = getDvar("bind_" + dvar);

    self thread [[func]](z);
}

instaswap(button)
{
    self endon("stopfrag");
    for(;;)
    {
        self bindwait("instaswap",button);
        if(self.menuopen == false)
        {
            self illusion();
            waitframe();
            self setSpawnWeapon(self getNextWeapon());
        }
    }
}

fragreap(button)
{
    self endon("stopfrag");
    for(;;)
    {
        self bindwait("frag",button);
        if(self.menuopen == false)
        {
            y = getDvarInt("function_infeq");
            setDvar("function_infeq",0);
            self setWeaponAmmoClip(self getCurrentOffhand(),0);
            x = getDvarInt("player_throwbackinnerradius");
            z = getDvarInt("player_throwbackouterradius");
            setDvar("player_throwbackinnerradius",0);
            setDvar("player_throwbackouterradius",0);
            exec("+frag;-frag");
            wait 1;
            setDvar("player_throwbackinnerradius",x);
            setDvar("player_throwbackouterradius",z);
            setDvar("function_infeq",y);
        }
    }
}

blastshield(button)
{
    self endon("stopblast");
    blast = undefined;
    for(;;)
    {
        self bindwait("blast",button);
        if(self.menuopen == false)
        {
            if ( !blast )
            {
                self VisionSetNakedForPlayer( "black_bw", 0.15 );
                wait 0.15;
                blast = true;
                self VisionSetNakedForPlayer(getDvar("mapname"),0);
                self playLocalSound("item_blast_shield_on");
                self _setPerk( "_specialty_blastshield" );
            }
            else
            {
                self VisionSetNakedForPlayer( "black_bw", 0.15 );
                wait 0.15;	
                blast = false;
                self VisionSetNakedForPlayer(getDvar("mapname"),0);
                self playLocalSound("item_blast_shield_on");
                self _unsetPerk( "_specialty_blastshield" );
            }
        }
    }
}

painkiller(button)
{
    self endon("stoppain");
    for(;;)
    {
        self bindwait("painkiller",button);
        if(self.menuopen == false)
        self thread maps\mp\perks\_perkfunctions::setCombatHigh();
    }
}

altswap(button)
{
    self endon("stopaltswap");
    for(;;)
    {
        
        self bindwait("altswap",button);
        if(self.menuopen == false)
        {
            x = self getNextWeapon();
            z = "usp_mp";
            self giveWeapon(z);
            self switchToWeapon(z);
            wait 0.1;
            self switchToWeapon(x);
            waitframe();
            self takeWeapon(z);
        }
    }
}

omashax(button)
{
    self endon("stopomashax");
    for(;;)
    {
        self bindwait("omashax",button);
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            x = self getCurrentWeapon();
            self takeWeapon(x);
            self disableWeapons();
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
            self enableWeapons();
            self giveWeapons(x);
            self setSpawnWeapon(x);
        }
    }
}

oma(button)
{
    self endon("stopoma");
    for(;;)
    {
        self bindwait("oma",button);
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
        }
    }
}

botemp(button)
{
    self endon("stopbotemp");
    for(;;)
    {
        self bindwait("botemp",button);
        if(self.menuopen == false)
            foreach(player in level.players)
                if(player.pers["isBot"] && isDefined(player.pers["isBot"]))
                    player thread maps\mp\killstreaks\_emp::EMP_Use( 0, 0 );
    }
}


selfemp(button)
{
    self endon("stopselfemp");
    for(;;)
    {
        self bindwait("selfemp",button);
        if(self.menuopen == false)
        {
            self thread maps\mp\killstreaks\_emp::EMP_Use( 0, 0 );
            y = "killstreak_uav_mp";
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon(y);
            self switchToWeapon(y);
            wait 0.1;
            self giveweapongood();
            self switchToWeapon(x);
            wait 0.1;
            self waittill("weapon_change");
            self takeWeapon(y);
            wait 0.25;
        }
    }
}

forcebarrelmala(button)
{
    self endon("stopforcemala");
    for(;;)
    {
        self bindwait("force",button);
        if(self.menuopen == false)
        {
            self[[game[self.team + "_model"]["SNIPER"]]]();
            waitframe();
            self[[game[self.team + "_model"]["GHILLIE"]]]();
            exec2("+frag");
            exec2("-frag");
            wait 0.2;
            self illusion();
        }
    }
}

forcebarrel(button)
{
    self endon("stopforce");
    for(;;)
    {
        self bindwait("force",button);
        if(self.menuopen == false)
        {
        self[[game[self.team + "_model"]["SNIPER"]]]();
        waitframe();
        self[[game[self.team + "_model"]["GHILLIE"]]]();
        exec2("+frag");
        exec2("-frag");
        }
    }
}

destroytac(button)
{
    self endon("stopdestroytac");
    for(;;)
    {
        self bindwait("destroytac",button);
        if(self.menuopen == false)
        {
            self thread maps\mp\gametypes\_hud_message::SplashNotify( "denied", 20 );
            self hitmarker();
        }
    }
}

stuckmsg(button)
{
    self endon("stopstuckmsg");
    for(;;)
    {
        self bindwait("stuckmsg",button);
        if(self.menuopen == false)
        {
            self maps\mp\gametypes\_hud_message::playerCardSplashNotify( "semtex_stuck", self );
	self thread maps\mp\gametypes\_hud_message::SplashNotify( "stuck_semtex", 100 );
	wait 2;
        }
    }
}

laststand(button)
{
    self endon("stoplaststand");
    for(;;)
    {
        self bindwait("laststand",button);
        if(self.menuopen == false)
        self set_last_stand();
    }
}

finalstand(button)
{
    self endon("stopfinalstand");
    for(;;)
    {
        self bindwait("laststand",button);
        if(self.menuopen == false)
        self set_final_stand();
    }
}

set_last_stand()
{
    notifyData = spawnStruct();
    notifyData.titleText = game[ "strings" ][ "last_stand" ];
    notifyData.iconName = "specialty_pistoldeath";
    notifyData.glowColor = ( 1, 0, 0 );
    notifyData.sound = "mp_last_stand";
    notifyData.duration = 2.0;
    self.health = 1;
    self thread maps\mp\gametypes\_hud_message::notifyMessage( notifyData );
    self setStance("crouch");
    waitframe();
    self setStance("prone");
    waitframe();
    x = spawn( "script_model", self.origin );
    self playerlinkTo(x);
    wait 0.3;
    self unlink();
    x delete();
}

set_final_stand()
{
    notifyData = spawnStruct();
    notifyData.titleText = game[ "strings" ][ "final_stand" ];
    notifyData.iconName = "specialty_finalstand";
    notifyData.glowColor = ( 1, 0, 0 );
    notifyData.sound = "mp_last_stand";
    notifyData.duration = 2.0;
    self.health = 1;
    self thread maps\mp\gametypes\_hud_message::notifyMessage( notifyData );
    self setStance("crouch");
    waitframe();
    self setStance("prone");
    waitframe();
    x = spawn( "script_model", self.origin );
    self playerlinkTo(x);
    wait 0.3;
    self unlink();
    x delete();
}


flashbind(button)
{
    self endon("stopflash");
    for(;;)
    {
        self bindwait("flash",button);
        if(self.menuopen == false)
            self thread maps\mp\_flashgrenades::applyFlash(1, 1);
    }
}

thirdeyebind(button)
{
    self endon("stopthirdeye");
    for(;;)
    {
        self bindwait("thirdeye",button);
        if(self.menuopen == false)
            self thread maps\mp\_flashgrenades::applyFlash(0, 0);
    }
}

ccb(button)
{
    self endon("stopccb");
    for(;;)
    {
        self bindwait("ccb",button);
        if(self.menuopen == false)
        {
            if(self.pers["class"] == "custom1")
                self setClass(2);
            else if(self.pers["class"] == "custom2")
                self setClass(3);
            else if(self.pers["class"] == "custom3")
                self setClass(4);
            else 
                self setClass(1);
        }
    }
}


kiwizbind(button)
{
    self endon("stoppred");
    for(;;)
    {
        self bindwait("pred",button);
        if(self.menuopen == false)
        {
            self VisionSetNakedForPlayer( "black_bw", 0.75 );
            wait 0.75;
            self visionSetNakedForPlayer(getDvar( "mapname" ), 0.01);
            x = self.origin + (0,550,9000);
            z = self.origin;

            rocket = MagicBullet( "remotemissile_projectile_mp", x, z, self );

            self VisionSetMissilecamForPlayer( game["thermal_vision"], 1.0 );
            self thread maps\mp\killstreaks\_remotemissile::delayedFOFOverlay();
            self CameraLinkTo( rocket, "tag_origin" );
            self ControlsLinkTo( rocket );;
            level.rockets[ self getEntityNumber() ] = self;

            ratio = spawn("script_model", self.origin);
            self PlayerLinkTo(ratio);

            wait 1;
            self thread maps\mp\killstreaks\_remotemissile::staticEffect(0.5);
            self clearUsingRemote();
            wait 0.5;
            rocket notify("death");
            level.remoteMissileInProgress = undefined;
            level.rockets[ self getEntityNumber() ] = undefined;

            rocket destroy();
            ratio delete();
            rocket delete();
            self _enableOffHandWeapons();
            self ThermalVisionFOFOverlayOff();
            self ControlsUnlink();
            self CameraUnlink();
            self ThermalVisionOff();
            self unlink();
            //self docanswap();
        }
    }
}

carepack(button)
{
    self endon("stopcarepack");
    for(;;)
    {
        self bindwait("carepack",button);
        if(self.menuopen == false)
        {
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
}

loadbind(button)
{
    self endon("stoploadbind");
    for(;;)
    {
        self bindwait("loadbind",button);
        if(self.menuopen == false)
        if(self getStance() == "crouch")
        self loadpos();
    }
}

savebind(button)
{
    self endon("stopsavebind");
    for(;;)
    {
        self bindwait("savebind",button);
        if(self.menuopen == false)
        if(self getStance() == "crouch")
        self savepos();
    }
}

nacmod(button)
{
    self endon("stopnacmod");
    for(;;)
    {
        self bindwait("nacmod",button);
        if(self.menuopen == false)
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

boltmove(button)
{
    self endon("stopboltmove");
    for(;;)
    {
        self bindwait("boltmove",button);
        if(self.menuopen == false)
            self startbolt();
    }
}


houdini(button)
{
    self endon("stophoudini");
    for(;;)
    {
        self bindwait("houdini",button);
        if(self.menuopen == false)
        {
            self disableWeapons();
            waitframe();
            self enableWeapons();
            self illusion();
        }
    }
}

canswapbind(button)
{
    self endon("stopcanswap");
    for(;;)
    {
        self bindwait("canswap",button);
        if(self.menuopen == false)
            self docanswap();
    }
}

canzoombind(button)
{
    self endon("stopcanzoom");
    for(;;)
    {
        self bindwait("canzoom",button);
        if(self.menuopen == false)
            self docanzoom();
    }
}


vishbind(button)
{
    self endon("stopvish");
    for(;;)
    {
        self bindwait("vish",button);
        if(self.menuopen == false)
        {
			self.sessionstate = "spectator";
			waitframe();
			self.sessionstate = "playing";
			x = self getCurrentWeapon();
			self takeWeaponGood(x);
			self giveWeaponGood();
			l = self getWeaponsList();
			foreach(w in l)
	        if(w != x)
				self switchToWeapon(x);
        }
    }
}


copycat(button)
{
    self endon("stopcopycat");
    for(;;)
    {
        self bindwait("copycat",button);
        if(self.menuopen == false)
            self maps\mp\gametypes\_killcam::waitDeathCopyCatButton( self , button);
    }
}

illusionbind(button)
{
    self endon("stopillusion");
    for(;;)
    {
        self bindwait("illusion",button);
        if(self.menuopen == false)
            self illusion();
    }
}

zoomloadbind(button)
{
    self endon("stopzoomload");
    for(;;)
    {
        self bindwait("zoomload",button);
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            xc = self getWeaponAmmoClip(x);
            self setWeaponAmmoClip(x,0);
            waitframe();
            self setWeaponAmmoClip(x,xc);
            waitframe();
            self illusion();
        }
    }
}


hostmigrabind(button)
{
    self endon("stophostmigra");
    for(;;)
    {
        self bindwait("hostmigra",button);
        if(self.menuopen == false)
        {
            setDvar("HostMigrationState", "0");
            self openPopupMenu(game["menu_hostmigration"]);
            self freezeControlsWrapper(true);
            wait 1.5;
            setDvar("HostMigrationState", "1");
            wait 1;
            self closePopupMenu();
            thread maps\mp\gametypes\_gamelogic::matchStartTimer("match_resuming_in", 5.0);
            wait 0.1;
            self freezeControlsWrapper(false);
        }
    }
}



scavbind(button)
{
    self endon("stopscav");
    for(;;)
    {
        self bindwait("scav",button);
        if(self.menuopen == false)
        {
            self maps\mp\gametypes\_damagefeedback::updateDamageFeedback( "scavenger" );
            self playLocalSound( "scavenger_pack_pickup" );
            self setWeaponAmmoClip(self getCurrentWeapon(),0);
            self setWeaponAmmoStock(self getCurrentWeapon(),999);
        }
    }
}


hitmarkerbind(button)
{
    self endon("stophitmarker");
    for(;;)
    {
        self bindwait("hitmarker",button);
        if(self.menuopen == false)
            self hitmarker();
    }
}

reflectff(button)
{
    self endon("stopreflectff");
    for(;;)
    {
        self bindwait("reflectff",button);
        if(self.menuopen == false)
        {
            self hitmarker();
            self.health = self.maxhealth;
            self thread [[level.callbackPlayerDamage]]( self, self, 60, 0, "MOD_RIFLE_BULLET", self getCurrentWeapon(), (0,0,0), (0,0,0), "j_mainroot", 0 );
        }
    }
}


damagebind(button)
{
    self endon("stopdamage");
    for(;;)
    {
        self bindwait("damage",button);
        if(self.menuopen == false)
        {
            self.health = self.maxhealth;
            self thread [[level.callbackPlayerDamage]]( self, self, 60, 0, "MOD_RIFLE_BULLET", self getCurrentWeapon(), (0,0,0), (0,0,0), "j_mainroot", 0 );          
        }
    }
}