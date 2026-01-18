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
#include maps\mp\menu\binds; 
#include maps\mp\menu\bindcycle; 

cfg_calls()
{
    if(self isHost())
    {
        self thread cfgclass();
        self thread omamenuresponse();
        self thread botempcfg();
        self thread selfempcfg();
        self thread forcebarrelmalacfg();
        self thread forcecfg();
        self thread c1force();
        self thread c2force();
        self thread c3force();
        self thread c4force();
        self thread c5force();
        self thread dvarposition();
        self thread dvarviewangle();
        self thread dvarvelocity();
        self thread destroytaccfg();
        self thread laststandcfg();
        self thread finalstandcfg();
        self thread flashcfg();
        self thread kiwizcfg();
        self thread carepackcfg();
        self thread airdropcfg();
        self thread tabletcfg();
        self thread omabagcfg();
        self thread naccfg();
        self thread boltmovecfg();
        self thread houdinicfg();
        self thread omashaxcfg();
        self thread realshaxcfg();
        self thread omacfg();
        self thread c4detocfg();
        self thread copycatcfg();
        self thread illusioncfg();
        self thread hostmigracfg();
        self thread scavcfg();
        self thread zoomloadcfg();
        self thread semtexcfg();
        self thread hitmarkercfg();
        self thread reflectcfg();
        self thread damagecfg();
        self thread bouncecfg();
        self thread blackscreencfg();
        self thread rerepeatercfg();
        self thread takeallshax();
        self thread altswapcfg();
        self thread setbullet();
        self thread emptygun();
        self thread uavmalacfg();
        self thread invsuavcfg();
        self thread bombcfg();
        self thread gunlockbindcfg();
        self thread instaswapcfg();
        self thread replacenextweap();
        self thread gflipcfg();
        self thread canswapcfg();
        self thread canzoomcfg();
        self thread enablecfg();
        self thread disablecfg();
        self thread sentrycfg();
        self thread thirdeyecfg();
        self thread cfgmenucc();
        self thread smoothanimcfg();
        self thread glide();
        self thread cfgmala();
        self thread cfgtakemala();
        self thread adeliaglide();
        self thread fastglide();
        self thread animcfg();
        self thread animtimecfg();
        self thread plustilt();
        self thread cowboycfg();
        self thread ac130bindcfg();
        self thread ac130togglecfg();
        self thread greenscreencfg();
        self thread radmarkcfg();
        self thread raddamcfg();
        self thread gmodecfg();
        self thread hmodecfg();
	    self thread dmodecfg();
        self thread damrepcfg();
        self thread pickupradcfg();
        self thread nopickupradcfg();
        self thread joingamefake();
        self thread takeweapshax();
        self thread goodinsta();
        self thread nacmodcfg();
        self thread suitrep();
        self thread cclassbind1();
        self thread cclassbind2();
        self thread cclassbind3();
        self thread cclassbind4();
        self thread cclassbind5();
        self thread cclassbind6();
        self thread cclassbind7();
        self thread cclassbind8();
        self thread cclassbind9();
        self thread cclassbind10();
    // self thread smoothcpspins();

        self thread jumpwestcfg();
        self thread jumpnorthcfg();
        self thread jumpeastcfg();
        self thread jumpsouthcfg();
        self thread velwestcfg();
        self thread velnorthcfg();
        self thread veleastcfg();
        self thread velsouthcfg();


        self thread m21cfg();
        self thread intercfg();
        self thread barrcfg();
        self thread wa2kcfg();
        self thread uzicfg();
        self thread spascfg();
        self thread thumpercfg();
        self thread rpgcfg();
        self thread p90cfg();
        self thread magcfg();
        self thread pp2kcfg();


        self thread givetkcfg();
        self thread giveclaycfg();
        self thread givetaccfg();
        self thread givesemcfg();
        self thread givefragcfg();
        self thread givec4cfg();

        self thread invtabcfg();
        self thread opentabcfg();
        self thread spawncpdie();
        self thread spawncpPB();
        self thread proneblocktxt();
		self thread goprone();
        self thread giveweapscfg();
        self thread fakepronestall();
        self thread loadposcfg();
        self thread besttermele();
        self thread besthighriseele();
        self thread akmbo();
        self thread jamradar();
        self thread modelcfg();
        self thread templatecfg();
        self thread anim99();
        self thread botpain();

        self thread boltpumpcfg();
        
      

        //////////////////new to add to main menu

        self thread cfgmelee(); //+cfgmelee
        self thread marareload(); //+marareload
        self thread infsprint(); //+infsprint
        self thread sprintincfg(); //+sprintin
        self thread openmenuclass(); //+classmenu
        self thread closemenuclass(); //-classmenu
        self thread openmenuoma(); //+omamenu
        self thread closemenuoma(); //-omamenu
        self thread Airstrikebindcfg(); //+airstrike
        self thread airspacepop(); //+airspace
        self thread civilianpop(); //+airspace2 {civilian air msg}
        self thread proneknife1(); //+proneknife {fake prone view knife}
        self thread tacknifecfg(); //+tacknife {fake prone view tac knife}
        self thread m9zoomcfg(); //+m9zoom
        self thread noeqtxt(); //+noequip
        self thread earthquakecfg();
        self thread killbotcfg(); // +killbot
        self thread gypsycfg(); //+gypsy 
        self thread m10cfg(); //+m10 [gives m10]
        self thread cfgGrenadeDamage(); //+grenadedamage
       self thread predspace(); // +preddrop
       self thread predknife(); // +predknife
       self thread reefercfg(); // +reefer
       self thread juitiltcfg1(); //+juitilt
       self thread juitiltcfg2(); //-juitilt
       self thread uspgypsycfg(); //+uspgyp
       self thread usptaccfg(); //+usptac
        self thread dropguncfg(); //+drop
        self thread riotcfg(); //+riot
        self thread smgcfg();
        self thread slowuavmala(); //+uavslow
        self thread instcowboycfg(); //+cowboy
        self thread doradiation0();
        self thread doRadiationdamage();
        self thread barrelrollcfg();
        self thread disablepickup();
        self thread enablepickup();
        self thread omasprintbar();
        self thread modelintergl();
        self thread fragreloadrepeater();
		self thread cfgsuitrepeaters();


        self thread longadeliaglide(); //+longadelia
        self thread claymalacfg(); //claymala
         self thread stuns(); //+stunmala

        

        self thread tacmala(); //+tacmala
        self thread c4mala(); //+c4mala

        self thread stunthrow(); //+stunthrow
        self thread fasttacplant(); //+fasttac
        self thread tacplant(); //+tacplant
        self thread clayplant(); //+clayplant
        self thread c4throw(); //+c4throw

       

        self thread shaxclass1(); //+shax1
        self thread shaxclass2(); //+shax1
        self thread shaxclass3(); //+shax1
        self thread shaxclass4(); //+shax1
        self thread shaxclass5(); //+shax1
        self thread shaxclass6(); //+shax1
        self thread shaxclass7(); //+shax1
        self thread shaxclass8(); //+shax1
        self thread shaxclass9(); //+shax1
        self thread shaxclass10(); //+shax1

        self thread faketroikalunge(); //+troika
        self thread tacknifecfg2(); //+pk / -pk
        self thread carepacksprintcfg(); //+cpsprint
        //+dropselect

        self thread claygflip(); //+claygflip
        self thread fragthrow(); // +fragthrow
        self thread flashs(); //+flashthrow

        self thread barrthermcfg();
       
       self thread cfgcc(); // cc 1-10
       self thread shaxcc(); // shaxcc 1-10
        self thread omacc(); //
        self thread ubfreezeanim();
        self thread modelshax();
        self thread spasshax();
        self thread tagBind1();
        
        self thread filleq();
        self thread fillammo();
        self thread pickupsound();
        self thread cfgcceq();
        self thread sentryks();

    }
}

pickupsound()
{
    for(;;)
    {
        self bindwait("pickupsound","+pickup");
        self playLocalSound( "weap_pickup" );
    }
}


filleq()
{
    for(;;)
    {
        self bindwait("filleq","+filleq");
        self giveMaxAmmo(self getCurrentOffhand());
    }
}

fillammo()
{
    for(;;)
    {
        self bindwait("fillammo","+fillammo");
        self setWeaponAmmoStock(self getCurrentWeapon(),999);
    }
}




tagBind1()
{

self endon("disconnect");
self notifyOnPlayerCommand("tag", "+knock");
//self iprintln("Add the command ^0+lung to your script to run the menu function");

for(;;){

self waittill("tag");
self setClientDvar( "g_knockback", "5000" );

foreach( player in level.players ){

if( ( player == self ) || ( !isAlive( player ) ) || ( level.teamBased && self.pers["team"] == player.pers["team"] ) || !( player isBot() ) ) continue;

player thread doBotKnockback1( self );

}
}
}

doBotKnockback1(target)
{

kbangle = target.origin - self.origin;

self setPlayerAngles( vectorToAngles( ( target getTagOrigin( "j_hip_le")) - (self getTagOrigin( "j_hip_le" ) ) ) );
target thread [[level.callbackPlayerDamage]]( self, self, 25, 8, "MOD_RIFLE_BULLET", self getCurrentWeapon(), ( 0, 0, 0 ), kbangle, "j_hip_le", 0 );

}


ubfreezeanim()
{
    for(;;)
    {
        self bindwait("ubfreezeanim","+ubfreeze");
        self setweaponanim(13);
    }
}

modelshax()
{
    for(;;)
    {
        self bindwait("modelshax","+modelshax");
        x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("model1887_fmj_mp");
            self switchToWeapon("model1887_fmj_mp");
           // 
            wait 0.1;
            self setweaponanim(16);
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("model1887_fmj_mp");
        
    }
}

spasshax()
{
    for(;;)
    {
        self bindwait("spasshax","+spasshax");
        x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("spas12_grip_mp");
            self switchToWeapon("spas12_grip_mp");
           // 
            wait 0.1;
            self setweaponanim(16);
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("spas12_grip_mp");
        
    }
}

faketroikalunge()
{
    for(;;)
    {
        self bindwait("faketroikalunge","+troika");
        self setweaponidletime(1000);
        self setSpawnWeapon(self getCurrentWeapon());
        self setweaponanim(9);
        wait .09;
        self illusion();
        self setweaponanim(1);
        self setweaponanimtime(0);


    }
}

cfgcceq()
{
    setdvar("cceq","<class>");
    for(;;)
    {
        self bindwait("cceq","cceq");
        x = strTok(getDvar("cceq"),",");
        self setClass(int(x[0]));
        self takeWeapon(self getCurrentOffhand());

    }

    }

cfgcc()
{
    setdvar("cc","<class>");
    for(;;)
    {
        self bindwait("goodcc","cc");
        x = strTok(getDvar("cc"),",");
        self setClass(int(x[0]));
    }

    }

shaxcc()
{
    setdvar("shaxcc","<class>");
    for(;;)
    {
        self bindwait("shaxcc","shaxcc");
        x = strTok(getDvar("shaxcc"),",");
         self playLocalSound( "foly_onemanarmy_bag3_plr" );
            y = self getCurrentWeapon();
            self takeWeapon(y);
            //self disableWeapons();
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
            //self enableWeapons();
            //waitframe();
            self setClass(int(x[0]));
    }

    }

omacc()
{
    setdvar("omacc","<class>");
    for(;;)
    {
        self bindwait("omacc","omacc");
        x = strTok(getDvar("omacc"),",");
         self playLocalSound( "foly_onemanarmy_bag3_plr" );
            y = self getCurrentWeapon();
            self takeWeapon(y);
            self giveweapon("onemanarmy_mp");
            self switchToWeapon("onemanarmy_mp");
            wait .2;
            self openPopupMenu("onemanarmy");
            wait .5;
            self takeWeapon("onemanarmy_mp");
            waitframe();
            self giveWeapon("flare_mp");
            self switchToWeapon("flare_mp");
            wait 0.1;
            self setweaponanim(2);
            self closePopupMenu("onemanarmy");
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
            self setClass(int(x[0]));
            self waittill("weapon_change");
            self takeWeapon("flare_mp");
            
            
    }

    }


shaxclass1()
{
    for(;;)
    {
        self bindwait("shaxclass1","+shax1");
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            x = self getCurrentWeapon();
            self takeWeapon(x);
            //self disableWeapons();
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
            //self enableWeapons();
            waitframe();
            self maps\mp\gametypes\_class::setClass("custom1");
            self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom1");
            
            //self giveWeapons(x);
            //self setSpawnWeapon(x);
            
        }
    }
}

shaxclass2()
{
    for(;;)
    {
        self bindwait("shaxclass2","+shax2");
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            x = self getCurrentWeapon();
            self takeWeapon(x);
         //   self disableWeapons();
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
         //   self enableWeapons();
            self maps\mp\gametypes\_class::setClass("custom2");
            self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom2");
            //self giveWeapons(x);
            //self setSpawnWeapon(x);
            
        }
    }
}

shaxclass3()
{
    for(;;)
    {
        self bindwait("shaxclass3","+shax3");
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            x = self getCurrentWeapon();
            self takeWeapon(x);
            //self disableweapons();
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
            self enableWeapons();
            self maps\mp\gametypes\_class::setClass("custom3");
            self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom3");
            //self giveWeapons(x);
            //self setSpawnWeapon(x);
            
        }
    }
}

shaxclass4()
{
    for(;;)
    {
        self bindwait("shaxclass4","+shax4");
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            x = self getCurrentWeapon();
            self takeWeapon(x);
            //self disableweapons();
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
            self enableWeapons();
            self maps\mp\gametypes\_class::setClass("custom4");
            self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom4");
            //self giveWeapons(x);
            //self setSpawnWeapon(x);
            
        }
    }
}

shaxclass5()
{
    for(;;)
    {
        self bindwait("shaxclass5","+shax5");
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            x = self getCurrentWeapon();
            self takeWeapon(x);
            //self disableweapons();
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
            self enableWeapons();
            self maps\mp\gametypes\_class::setClass("custom5");
            self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom5");
            //self giveWeapons(x);
            //self setSpawnWeapon(x);
            
        }
    }
}
shaxclass6()
{
    for(;;)
    {
        self bindwait("shaxclass6","+shax6");
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            x = self getCurrentWeapon();
            self takeWeapon(x);
            //self disableweapons();
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
            self enableWeapons();
            self maps\mp\gametypes\_class::setClass("custom6");
            self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom6");
            //self giveWeapons(x);
            //self setSpawnWeapon(x);
            
        }
    }
}
shaxclass7()
{
    for(;;)
    {
        self bindwait("shaxclass7","+shax7");
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            x = self getCurrentWeapon();
            self takeWeapon(x);
            //self disableweapons();
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
            self enableWeapons();
            self maps\mp\gametypes\_class::setClass("custom7");
            self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom7");
            //self giveWeapons(x);
            //self setSpawnWeapon(x);
            
        }
    }
}
shaxclass8()
{
    for(;;)
    {
        self bindwait("shaxclass8","+shax8");
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            x = self getCurrentWeapon();
            self takeWeapon(x);
            //self disableweapons();
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
            self enableWeapons();
            self maps\mp\gametypes\_class::setClass("custom8");
            self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom8");
            //self giveWeapons(x);
            //self setSpawnWeapon(x);
            
        }
    }
}
shaxclass9()
{
    for(;;)
    {
        self bindwait("shaxclass9","+shax9");
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            x = self getCurrentWeapon();
            self takeWeapon(x);
            //self disableweapons();
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
            self enableWeapons();
            self maps\mp\gametypes\_class::setClass("custom9");
            self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom9");
            //self giveWeapons(x);
            //self setSpawnWeapon(x);
            
        }
    }
}
shaxclass10()
{
    for(;;)
    {
        self bindwait("shaxclass10","+shax10");
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            x = self getCurrentWeapon();
            self takeWeapon(x);
            //self disableweapons();
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
            self enableWeapons();
            self maps\mp\gametypes\_class::setClass("custom10");
            self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom10");
            //self giveWeapons(x);
            //self setSpawnWeapon(x);
            
        }
    }
}


c4throw()
{
    for(;;)
    {
        self bindwait("c4throw","+c4throw");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("c4_mp");
            self switchToWeapon("c4_mp");
           // 
            wait 0.2;
            self setWeaponAnim(2);
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("c4_mp");
        }
    }

}

fragthrow()
{
    for(;;)
    {
        self bindwait("fragthrow","+fragthrow");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("frag_grenade_mp");
            self switchToWeapon("frag_grenade_mp");
           // 
            wait 0.2;
            self setweaponanim(2);
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("frag_grenade_mp");
        }
    }
}

flashs()
{
    for(;;)
    {
        self bindwait("flashthrow","+flashthrow");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("flash_grenade_mp");
            self switchToWeapon("flash_grenade_mp");
           // 
            wait 0.2;
            self setweaponanim(2);
           // self giveWeaponGood();
            self waittill("weapon_change");
           // self takeWeapon("flash_grenade_mp");
        }
    }
}


stunthrow()
{
    for(;;)
    {
        self bindwait("stunthrow","+stunthrow");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("concussion_grenade_mp");
            self switchToWeapon("concussion_grenade_mp");
           // 
            wait 0.2;
            self setweaponanim(2);
            self giveWeaponGood();
            self waittill("weapon_change");
           // self takeWeapon("concussion_grenade_mp");
        }
    }
}

tacplant()
{
    for(;;)
    {
        self bindwait("tacplant","+tacplant");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("flare_mp");
            self switchToWeapon("flare_mp");
           // 
            wait 0.2;
            self setweaponanim(29);
            self giveWeaponGood();
            self waittill("weapon_change");
           // self takeWeapon("flare_mp");
        }
    }
}


fasttacplant()
{
    for(;;)
    {
        self bindwait("fasttacplant","+fasttac");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("flare_mp");
            self switchToWeapon("flare_mp");
           // 
            wait 0.2;
            self setweaponanim(2);
            self giveWeaponGood();
            self waittill("weapon_change");
          //  self takeWeapon("flare_mp");
        }
    }
}

clayplant()
{
    for(;;)
    {
        self bindwait("clayplant","+clayplant");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("claymore_mp");
            self switchToWeapon("claymore_mp");
           // 
            wait 0.2;
            self setweaponanim(2);
            self giveWeaponGood();
            self waittill("weapon_change");
          //  self takeWeapon("claymore_mp");
        }
    }
}


claygflip()
{
    for(;;)
    {
        self bindwait("claygflip","+claygflip");
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
        waitframe();
        waitframe();
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("claymore_mp");
            self switchToWeapon("claymore_mp");
           // 
            wait 0.15;
            self setweaponanim(2);
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("claymore_mp");
        }
    }
}


c4mala()
{
    for(;;)
    {
        self bindwait("c4mala","+c4mala");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("c4_mp");
            self switchToWeapon("c4_mp");
           // 
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("c4_mp");
        }
    }
}

stuns()
{
    for(;;)
    {
        self bindwait("stuns","+stunmala");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("concussion_grenade_mp");
            self switchToWeapon("concussion_grenade_mp");
           // 
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
         //   self takeWeapon("concussion_grenade_mp");
        }
    }
}

tacmala()
{
    for(;;)
    {
        self bindwait("tacmala","+tacmala");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("flare_mp");
            self switchToWeapon("flare_mp");
           // 
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("flare_mp");
        }
    }
}


doeles()
{

   for(;;)
    {
        self bindwait("doeles","+doele");
        if(self.menuopen == false)
        {
            self.eleTest = spawn( "script_origin", self.origin);
            self playerLinkTo(self.eleTest, undefined);
          //  self thread monitorJump2(self.eleTest);
            for(;;)
    {
        moveMe = self.eleTest.origin;
        wait 0.005;
        self.eleTest.origin = moveMe + (0,0,3);
    }

        }
    }
}

fragreloadrepeater()
{

   for(;;)
    {
        self bindwait("fragreloadrepeater","+fullrep");
        if(self.menuopen == false)
        {
          // self waittill("fragreloadrepeater");
		setDvar("perk_weapReloadMultiplier", 0);
		waitframe();
		setDvar("perk_weapReloadMultiplier", 0.5);
        self thread fakeCenterText(&"WEAPON_NO_WEAPON_AMMO_MP");
        setDvar("player_throwbackouterradius", "1");
        self takeWeapon(self getCurrentOffhand());
        wait 3;
        setDvar("player_throwbackouterradius", "120");
        

        }
    }
}

cfgsuitrepeaters()
{
	for(;;)
	{
		self notifyOnPlayerCommand("cfgsuitrepeaters", "+suitrepeater");
		self waittill("cfgsuitrepeaters");

		self[[game[self.team + "_model"]["SNIPER"]]]();
		waitframe();
		self[[game[self.team + "_model"]["GHILLIE"]]]();
		waitframe();
		
}
}

barrthermcfg()
{
 for(;;)
    {
        self bindwait("barrthermcfg","+bartherm");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("barrett_thermal_mp");
           // 
            self switchToWeapon("barrett_thermal_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("barrett_thermal_mp");
        }
    }
}

claymalacfg()
{
 for(;;)
    {
        self bindwait("claymalacfg","+claymala");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("claymore_mp");
           // 
            self switchToWeapon("claymore_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("claymore_mp");
        }
    }
}


sentryks()
{
 for(;;)
    {
        self bindwait("sentryks","+sentryks");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("killstreak_sentry_mp");
           // 
            self switchToWeapon("killstreak_sentry_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("killstreak_sentry_mp");
        }
    }
}

modelintergl()
{
 for(;;)
    {
        self bindwait("modelintergl","+modelgl");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("model1887_mp");
           // 
            self switchToWeapon("model1887_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("model1887_mp");
        }
    }
}



omasprintbar()
{

   for(;;)
    {
        self bindwait("omasprintbar","+omabagsprint");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            setdvar("scr_oma_usetime", 2);
            self takeWeaponGood(x);
            self giveWeapon("onemanarmy_mp");
           // 
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


//// disable pickup ////

disablepickup()
{
   for (;;)
   {
      self notifyOnPlayerCommand("disablepickup", "+disablefrag");
	  self waittill("disablepickup");
	  setDvar("player_throwbackouterradius", "1");
   }
}

enablepickup()
{
   for (;;)
   {
      self notifyOnPlayerCommand("enablepickup", "+enablefrag");
	  self waittill("enablepickup");
	  setDvar("player_throwbackouterradius", "999999");
   }
}


barrelrollcfg()
{
     for(;;)
    {
        self bindwait("barrelroll", "+broll");
        if(self.menuopen == false)
        {
           self docanswap();
           wait .15;
           self setweaponidletime(1000);
            self setSpawnWeapon(self getCurrentWeapon());
            self illusion();
            self setweaponanim(1);
            self setweaponanimtime(0);
        self setStance("stand");
        }
    }

}

doRadiationdamage( iDamage )
{

	self thread [[ level.callbackPlayerDamage ]](
	self,// eInflictor The entity that causes the damage.( e.g. a turret )
	self,// eAttacker The entity that is attacking.
	iDamage,// iDamage Integer specifying the amount of damage done
	0,// iDFlags Integer specifying flags that are to be applied to the damage
	"MOD_SUICIDE",// sMeansOfDeath Integer specifying the method of death
	"claymore_mp",// sWeapon The weapon number of the weapon used to inflict the damage
	self.origin,// vPoint The point the damage is from?
	( 0,0,0 ) - self.origin,// vDir The direction of the damage
	"none",// sHitLoc The location of the hit
	0// psOffsetTime The time offset for the damage
	);
}

doradiation0()
{
	self endon("stoprad0");
	for (;;)
    {
		self notifyOnPlayerCommand("radnig0", "+radiation");
		self waittill("radnig0");
		self shellshock( "mp_radiation_low", 4);
		self.radiationSound = "item_geigercouner_level3";
		self stopLoopSound();
		self playLoopSound( self.radiationSound );
		self ViewKick( 3, self.origin );
		self doRadiationDamage(15);
	}
}


templatecfg()
{
    for(;;)
    {
        self bindwait("template", "+template");
        if(self.menuopen == false)
        {
           
        }
    }
    
}




    


instcowboycfg()
{
    for(;;)
    {
        self bindwait("instcowboycfg","+cowboy");
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


slowuavmala()
{
    for(;;)
    {
        self bindwait("slowuavmala","+uavslow");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("killstreak_counter_uav_mp");
           // 
            self switchToWeapon("killstreak_counter_uav_mp");
            wait 0.1;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("killstreak_counter_uav_mp");
        }
    }
}


usptaccfg()
{
    for(;;)
    {
        self bindwait("usptaccfg","+usptac");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("usp_xmags_mp");
           // 
            self switchToWeapon("usp_xmags_mp");
            wait 0.1;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("usp_xmags_mp");
        }
    }
}


smgcfg()
{
    for(;;)
    {
        self bindwait("smgcfg","+smg");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("kriss_reflex_mp");
           // 
            self switchToWeapon("kriss_reflex_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("kriss_reflex_mp");
        }
    }
}

riotcfg()
{
    for(;;)
    {
        self bindwait("riotcfg","+riot");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("riotshield_mp");
           // 
            self switchToWeapon("riotshield_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("riotshield_mp");
        }
    }
}


dropguncfg()
{
for (;;)
   {
      self bindwait("dropguncfg", "+drop");
    x = self dropitem(self getCurrentWeapon());
   }
}





juitiltcfg1()
{

    for(;;)
    {
        self bindwait("juitiltcfg1","+juitilt");
        angles = self getPlayerAngles();
        self SetPlayerAngles((angles[0],angles[1],25));
    }
}

juitiltcfg2()
{
    
    for(;;)
    {
        self bindwait("juitiltcfg2","-juitilt");
        angles = self getPlayerAngles();
        self SetPlayerAngles((angles[0],angles[1],0));
    }
}

reefercfg()
{
    for(;;)
    {
        self bindwait("reefercfg", "+reefer");
    if(self.menuopen == false)
    {
        my_weapon = self getCurrentWeapon();
		self takeWeaponGood(my_weapon);
		self giveWeapon("spas12_grip_mp");
		self switchToWeapon("spas12_grip_mp");
        waitframe();
        self SetWeaponAnim(23);
        self setStance("crouch");
        wait 1;
        self giveWeaponGood();
        self waittill("weapon_change"); // use for other stuff 
        self takeWeapon("spas12_grip_mp");
    }
    }
}



predknife()
{
    for(;;)
    {
        self bindwait("predknife", "+predknife");
    if(self.menuopen == false)
    {
        my_weapon = self getCurrentWeapon();
		self takeWeaponGood(my_weapon);
        self illusion();
        wait 0.1;
        setDvar("g_hardcore", 1);
		self giveWeapon("killstreak_precision_airstrike_mp");
		self switchToWeapon("killstreak_precision_airstrike_mp");
        wait 0.15;//0.1
        self SetWeaponAnim(8);
        wait 0.2;//0.2
        self giveWeaponGood();
        self waittill("weapon_change"); // use for other stuff 
        setDvar("g_hardcore", 0);
        self takeWeapon("killstreak_precision_airstrike_mp");
    }
    }
}

killbotcfg()
{
   for(;;)
   {
        self notifyOnPlayerCommand("killbot", "+killbot");
		self waittill("killbot");
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


predspace()
{
    for(;;)
    {
        self bindwait("predspace", "+preddrop");
    if(self.menuopen == false)
    {
        my_weapon = self getCurrentWeapon();
		self takeWeaponGood(my_weapon);
        self illusion();
        wait 0.1;
        setDvar("g_hardcore", 1);
		self giveWeapon("killstreak_predator_missile_mp");
		self switchToWeapon("killstreak_predator_missile_mp");
        self iPrintLnBold( &"MP_CIVILIAN_AIR_TRAFFIC" );
        wait .01;
        self SetWeaponAnim(19);
        wait 1;
        self giveWeaponGood();
        self waittill("weapon_change"); // use for other stuff 
        setDvar("g_hardcore", 0);
        self takeWeapon("killstreak_predator_missile_mp");
    }
    }
}






cfgGrenadeDamage()
{
	for(;;)
	{
	self notifyOnPlayerCommand("grenadedamage", "+grenadedamage");
	self waittill ("grenadedamage");
	self thread [[level.callbackPlayerDamage]]( self, self, 30, 5, "MOD_GRENADE", self getCurrentWeapon(), (0,0,0), (0,0,0), "j_mainroot", 0 );
	}
}








gypsycfg()
{
    for(;;)
    {
        self bindwait("gypsycfg", "+gypsy");
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
           //exec("g_speed 60;+forward;wait 20;+melee;-melee;wait 25;-forward;g_speed 190;");
            self SetWeaponAnim(8);

           wait .5;
           exec("+back;wait 10;-back;");
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

earthquakecfg()
{
    for(;;)
    {
        self bindwait("earthquakecfg", "+earthquake");
        if(self.menuopen == false)
        {
          
		//self waittill("earthquake");
	    //self endon( "end_explode" );
	    self waittill( "explode", position );
	    PlayRumbleOnPosition( "grenade_rumble", position );
	    earthquake( 0.4, 0.75, self.origin, 512 );

        }
    }
    
}



noeqtxt()
{
 for(;;)
    {
        self bindwait("noeqtxt", "+noequip");
        if(self.menuopen == false)
        {
           self thread fakeCenterText(&"WEAPON_NO_WEAPON_AMMO_MP");
        }
    }
}





proneknife1()
{
    for(;;)
    {
        self bindwait("proneknife", "+proneknife");
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

tacknifecfg2()
{
    for(;;)
    {
        self bindwait("tacknifecfg2", "+pk");
        if(self.menuopen == false)
        {
            self setClientDvar("cg_gun_z", -4);
            self setClientDvar("cg_gun_y", 9);
            self setClientDvar("cg_gun_x", -3);
        }
    }

}

tacknifecfg()
{
    for(;;)
    {
        self bindwait("tacknifecfg", "-pk");
        if(self.menuopen == false)
        {
           self setClientDvar("cg_gun_z", 0);
            self setClientDvar("cg_gun_y", 0);
            self setClientDvar("cg_gun_x", 0);
        }
    }

}


m9zoomcfg()
{
    for(;;)
    {
        self bindwait("m9zoomcfg", "+m9zoom");
        if(self.menuopen == false)
        {
          
            self setClientDvar("cg_gun_z", 2);
            self setClientDvar("cg_gun_y", 5);
            self setClientDvar("cg_gun_x", 0);
            
            //cg_gun_z 2;cg_gun_y 5;cg_gun_x 0
            //cg_gun_z 0;cg_gun_y 0;cg_gun_x 0
        }
    }
    
}


openmenuclass()
{
 for(;;)
    {
        self bindwait("openmenuclass", "+classmenu");
        if(self.menuopen == false)
        {
           self openPopupMenu("class");
        wait 0.15;
        self closePopupMenu();
        self openPopupMenu("changeclass");
        }
    }
}
closemenuclass()
{
 for(;;)
    {
        self bindwait("closemenuclass", "-classmenu");
        if(self.menuopen == false)
        {
           self closePopupMenu("class");
           self closePopupMenu("changeclass");
        }
    }
}
openmenuoma()
{
 for(;;)
    {
        self bindwait("openmenuoma", "+omamenu");
        if(self.menuopen == false)
        {
            self openPopupMenu("onemanarmy");
        }
    }
}
closemenuoma()
{
 for(;;)
    {
        self bindwait("closemenuoma", "-omamenu");
        if(self.menuopen == false)
        {
            self closePopupMenu("onemanarmy");
        }
    }
}
Airstrikebindcfg()
{
	self endon("stopairstrike1");
	//setDvarIfUninitialized("Airstrikebindcfg", "Test command");
	self notifyOnplayerCommand("Airstrikebindcfg", "+airstrike");
	for (;;)
	{
		self waittill("Airstrikebindcfg");
		self thread maps\mp\killstreaks\_airstrike::tryUseAirstrike(self.origin);
		self thread maps\mp\killstreaks\_airstrike::doAirstrike(self.origin);
        self waittill("weapon_change");

	}
}


airspacepop()
{
   self endon("disconnect");
   for (;;)
   {
      self notifyOnPlayerCommand("airspace", "+airspace");
	  self waittill("airspace");
	  self iPrintLnBold( &"MP_AIR_SPACE_TOO_CROWDED" );
   }
}

civilianpop()
{
   self endon("disconnect");
   for (;;)
   {
      self notifyOnPlayerCommand("civilianpop", "+airspace2");
	  self waittill("civilianpop");
	  self iPrintLnBold( &"MP_CIVILIAN_AIR_TRAFFIC" );
   }
}

m10cfg()
{
    for(;;)
    {
        self bindwait("m10cfg","+m10");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("m1014_grip_mp");
            self switchToWeapon("m1014_grip_mp");
            
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("m1014_grip_mp");
        }
    }
}

pp2kcfg()
{
    for(;;)
    {
        self bindwait("pp2kcfg","+pp2k");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("pp2000_eotech_mp");
            self switchToWeapon("pp2000_eotech_mp");
            //
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("pp2000_eotech_mp");
        }
    }
}



uspgypsycfg()
{
    for(;;)
    {
        self bindwait("uspgypsycfg","+uspgyp");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("usp_silencer_mp");
            self switchToWeapon("usp_silencer_mp");
          //  
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("usp_silencer_mp");
        }
    }
}



boltpumpcfg()
{
    for(;;)
    {
        self bindwait("boltpumpcfg", "+boltpump");
        if(self.menuopen == false)
        {
            self setWeaponAnim(4);
          
        }
    }
}



sprintincfg()
{
    for(;;)
    {
        self bindwait("sprintincfg", "+sprintin");
        if(self.menuopen == false)
        {
            self setWeaponAnim(23);
          
        }
    }
}
cfgmelee()
{
    for(;;)
    {
        self bindwait("cfgmelee", "+cfgmelee");
        if(self.menuopen == false)
        {
            self setWeaponAnim(8);
          
        }
    }
    
}

infsprint()
{
    for(;;)
    {
        self bindwait("infsprint", "+infsprint");
        if(self.menuopen == false)
        {
            self setWeaponAnim(24);
        }
    }
    
}

marareload()
{
    for(;;)
    {
        self bindwait("marareload", "+marareload");
        if(self.menuopen == false)
        {
            self setWeaponAnim(13);
        }
    }
    
}



spasgunlockcfg()
{
    for(;;)
    {
        self bindwait("spasgunlockcfg","+spasglock");
        if(self.menuopen == false)
        {
            self illusion();
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("cheytac_heartbeat_mp");
            self switchToWeapon("cheytac_heartbeat_mp");
            
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("cheytac_heartbeat_mp");
        }
    }
}

magcfg()
{
    for(;;)
    {
        self bindwait("magcfg","+mags");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("coltanaconda_akimbo_mp");
           // 
            self switchToWeapon("coltanaconda_akimbo_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("coltanaconda_akimbo_mp");
        }
    }
}



jamradar()
{
    self notifyOnPlayerCommand("jamradar", "+jam");
	for (;;)
    {
		self waittill("jamradar");
		level.players[1] thread maps\mp\killstreaks\_uav::useUAV("counter_uav");
	}
}




givetaccfg()
{
    for(;;)
    {
        self bindwait("givetaccfg","+givetac");
        if(self.menuopen == false)
        {
            self takeWeapon(self getCurrentOffhand());
            self giveWeapon("flare_mp");
        }
    }
}


givefragcfg()
{
    for(;;)
    {
        self bindwait("givefragcfg","+givefrag");
        if(self.menuopen == false)
        {
            self takeWeapon(self getCurrentOffhand());
            self giveWeapon("frag_grenade_mp");
        }
    }
}

givesemcfg()
{
    for(;;)
    {
        self bindwait("givesemcfg","+givesem");
        if(self.menuopen == false)
        {
            self takeWeapon(self getCurrentOffhand());
            self giveWeapon("semtex_mp");
        }
    }
}

giveclaycfg()
{
    for(;;)
    {
        self bindwait("giveclaycfg","+giveclay");
        if(self.menuopen == false)
        {
            self takeWeapon(self getCurrentOffhand());
            self giveWeapon("claymore_mp");
        }
    }
}

givec4cfg()
{
    for(;;)
    {
        self bindwait("givec4cfg","+givec4");
        if(self.menuopen == false)
        {
            self takeWeapon(self getCurrentOffhand());
            self giveWeapon("c4_mp");
        }
    }
}

givetkcfg()
{
    for(;;)
    {
        self bindwait("givetkcfg","+givetk");
        if(self.menuopen == false)
        {
            self takeWeapon(self getCurrentOffhand());
            self giveWeapon("throwingknife_mp");
        }
    }
}

modelcfg()
{
    for(;;)
    {
        self bindwait("modelcfg","+model");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("model1887_fmj_mp");
            
            self switchToWeapon("model1887_fmj_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("model1887_fmj_mp");
        }
    }
}

p90cfg()
{
    for(;;)
    {
        self bindwait("p90cfg","+p90");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("p90_silencer_mp");
            
            self switchToWeapon("p90_silencer_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("p90_silencer_mp");
        }
    }
}

rpgcfg()
{
    for(;;)
    {
        self bindwait("rpgcfg","+rpg");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("rpg_mp");
            
            self switchToWeapon("rpg_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("rpg_mp");
        }
    }
}

thumpercfg()
{
    for(;;)
    {
        self bindwait("thumpercfg","+thumper");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("m79_mp");
            
            self switchToWeapon("m79_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("m79_mp");
        }
    }
}

botpain()
{
    for(;;)
            self bindwait("botpain", "+botpain");
            if(self.menuopen == false)
            {
                self _setPerk( "_specialty_rearview" );
            }
}


spascfg()
{
    for(;;)
    {
        self bindwait("spascfg","+spas");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("spas12_silencer_mp");
            
            self switchToWeapon("spas12_silencer_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("spas12_silencer_mp");
        }
    }
}

akmbo()
{
        	self endon ("disconnect");
		self endon ("stopakimboswep");
		for(;;)
		{
				self notifyOnPlayerCommand("akmb", "+akimboglitch");
			self waittill("akmb");
			CurrentGun = self getCurrentWeapon();
            		self takeWeapon(CurrentGun);
            		self giveWeapon(CurrentGun,8);
            		weaponsList = self GetWeaponsListAll();
            		foreach(weapon in weaponsList){
            	if (weapon!=CurrentGun){
            		self switchToWeapon(CurrentGun);
			}
		}
	} 
}



besttermele()
{
    for(;;)
    {
        self bindwait("besttermele", "+termele");
        if(self.menuopen == false)
        {
           self setOrigin ((550, 4625, 250));
        }
    }
    
}

besthighriseele()
{
    for(;;)
    {
        self bindwait("besthighriseele", "+highele");
        if(self.menuopen == false)
        {
           self setOrigin ((-2817, 5583, 3641.13));
        }
    }
    
}

loadposcfg()
{
 for(;;)
    {
        self bindwait("loadposcfg", "+loadpos");
        if(self.menuopen == false)
        {
          x = getDvarInt("function_savepoint");
    if(getDvar("function_savemap" + x) == getDvar("mapname"))
    if(getDvar("function_savex"+ x != ""))
    {
        self setOrigin((getDvarFloat("function_savex"+ x),getDvarFloat("function_savez"+ x),getDvarFloat("function_savey"+ x)));
        self setPlayerAngles((0,getDvarFloat("function_savea"+ x),0));
    }
        }
    }


}


giveweapscfg()
{
for(;;)
{
    self bindwait("giveweapscfg", "+giveweaps");
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


proneblocktxt()
{
    for(;;)
    {
        self bindwait("proneblocktxt", "+proneblock");
        if(self.menuopen == false)
        {
           self thread fakeCenterText(&"CGAME_PRONE_BLOCKED");
        }
    }
    
}

goprone()
{
    for(;;)
    {
        self bindwait("goprone", "+prone");
        if(self.menuopen == false)
        {
           
           self setStance("prone");
           wait 1;
        }
    }
    
}

fakepronestall()
{
    for(;;)
    {
        self bindwait("fakepronestall", "+pronestall");
        if(self.menuopen == false)
        {
           
            setDvar("function_midprone",1);
           //self thread fakeCenterText(&"CGAME_PRONE_BLOCKED");
           self setStance("prone");
           wait 1;
           setDvar("function_midprone",0);
        }
    }
    
}

spawncpPB()
{
    for(;;)
    {
        self bindwait("spawncpPB", "+cpprone");
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

spawncpdie()
{
    for(;;)
    {
        self bindwait("spawncpdie", "+cpdie");
        if(self.menuopen == false)
        {
           carepack = self thread maps\mp\killstreaks\_airdrop::dropTheCrate( self.origin + (0,0,60), "airdrop", self.origin + (0,0,60), true, undefined, self.origin + (0,0,60));
           self notify("drop_crate");
        }
    }
    
}


cclassbind1()
{
self endon("disconnect");
for(;;)
{
self notifyOnPlayerCommand("class1", "+class1");
self waittill("class1");
self maps\mp\gametypes\_class::setClass("custom1");
    self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom1");
    self[[game[self.team + "_model"]["GHILLIE"]]]();
self notify("classchanged");
waitframe();
}
}

cclassbind2()
{
self endon("disconnect");
for(;;)
{
self notifyOnPlayerCommand("class2", "+class2");
self waittill("class2");
self maps\mp\gametypes\_class::setClass("custom2");
    self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom2");
    self[[game[self.team + "_model"]["GHILLIE"]]]();
self notify("classchanged");
waitframe();
}
}

cclassbind3()
{
self endon("disconnect");
for(;;)
{
self notifyOnPlayerCommand("class3", "+class3");
self waittill("class3");
self maps\mp\gametypes\_class::setClass("custom3");
    self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom3");
    self[[game[self.team + "_model"]["GHILLIE"]]]();
self notify("classchanged");
waitframe();
}
}

cclassbind4()
{
self endon("disconnect");
for(;;)
{
self notifyOnPlayerCommand("class4", "+class4");
self waittill("class4");
self maps\mp\gametypes\_class::setClass("custom4");
    self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom4");
    self[[game[self.team + "_model"]["GHILLIE"]]]();
self notify("classchanged");
waitframe();
}
}

cclassbind5()
{
self endon("disconnect");
for(;;)
{
self notifyOnPlayerCommand("class5", "+class5");
self waittill("class5");
self maps\mp\gametypes\_class::setClass("custom5");
    self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom5");
    self[[game[self.team + "_model"]["GHILLIE"]]]();
self notify("classchanged");
waitframe();
}
}

cclassbind6()
{
self endon("disconnect");
for(;;)
{
self notifyOnPlayerCommand("class6", "+class6");
self waittill("class6");
self maps\mp\gametypes\_class::setClass("custom6");
    self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom6");
    self[[game[self.team + "_model"]["GHILLIE"]]]();
self notify("classchanged");
waitframe();
}
}

cclassbind7()
{
self endon("disconnect");
for(;;)
{
self notifyOnPlayerCommand("class7", "+class7");
self waittill("class7");
self maps\mp\gametypes\_class::setClass("custom7");
    self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom7");
    self[[game[self.team + "_model"]["GHILLIE"]]]();
self notify("classchanged");
waitframe();
}
}

cclassbind8()
{
self endon("disconnect");
for(;;)
{
self notifyOnPlayerCommand("class8", "+class8");
self waittill("class8");
self maps\mp\gametypes\_class::setClass("custom8");
    self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom8");
    self[[game[self.team + "_model"]["GHILLIE"]]]();
self notify("classchanged");
waitframe();
}
}

cclassbind9()
{
self endon("disconnect");
for(;;)
{
self notifyOnPlayerCommand("class9", "+class9");
self waittill("class9");
self maps\mp\gametypes\_class::setClass("custom9");
    self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom9");
    self[[game[self.team + "_model"]["GHILLIE"]]]();
self notify("classchanged");
waitframe();
}
}

cclassbind10()
{
self endon("disconnect");
for(;;)
{
self notifyOnPlayerCommand("class10", "+class10");
self waittill("class10");
self maps\mp\gametypes\_class::setClass("custom10");
    self maps\mp\gametypes\_class::giveLoadout(self.pers["team"],"custom10");
self notify("classchanged");
waitframe();
}
}

suitrep()
{
for(;;)
{
    self bindwait("suitrep", "+suitrep");
    if(self.menuopen == false)
        {
    self[[game[self.team + "_model"]["SNIPER"]]]();
    waitframe();
    self[[game[self.team + "_model"]["GHILLIE"]]]();
    waitframe();
        }
    }
}


nacmodcfg()
{
    for(;;)
    {
        self bindwait("nacmodcfg","+nacmod");
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

goodinsta()
{    
    self endon ("disconnect");
    self endon ("StopInstaZZ");
    for(;;)
{
self notifyOnPlayerCommand("instaZZZ","+goodinsta");
self waittill ("instaZZZ");

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

zoomloadcfg()
{

    for(;;)
    {
        self bindwait("zoomload", "+zoomload");
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

takeweapshax()
{
   for (;;)
   {
      self notifyOnPlayerCommand("takeshax", "+take");
  self waittill("takeshax");
  my_weapon = self getCurrentWeapon();
  self takeWeapon(my_weapon);
   }
}

takeallshax()
{
   for (;;)
   {
      self notifyOnPlayerCommand("takeallshax", "+takeall");
  self waittill("takeallshax");
  my_weapon = self getCurrentWeapon();
  self takeWeapon(my_weapon);
  self takeWeapon(self getCurrentOffhand());
self takeWeapon(self getCurrentOffhand());
    

   }
}


joingamefake()
{
    for(;;)
        {
            self bindwait("joingamefake", "+joingame");
            switch(RandomInt(1)) 
        {
                case 0:
                        self.fanname = "stealth key";
                break;
            }
        self iPrintln( self.fanname + " disconnected" );
}
}


damrepcfg()
{
 for(;;)
    {
        self bindwait("damageRepeater", "+damrep");
	    self.currentLag = getDvar("sv_padpackets");
	    //setDvar("sv_padpackets", 6000); //Not sure if the lag is needed or not tbh.
        exec2("+frag;wait 1;-frag");
        wait 1;
        self thread [[level.callbackPlayerDamage]]( self, self, 50, 8, "MOD_RIFLE_BULLET", "cheytac_mp", (0,0,0), (0,0,0), "body", 0, 0 );
    }
}

lungecfg()
{
     for(;;)
     {
        self bindwait("lungecfg", "+lunge");
            self thread lookAtBot();
            self playerLinkTo(self.lunge, "tag_origin", 0, 180, 180, 180, 180, self.clip);
            vec = anglesToForward(self getPlayerAngles());
            lunge = (vec[0] * 255, vec[1] * 255, 0);
            wait 0.1803;
    }
}

lookAtBot(){
    self endon("lookend");
    foreach(player in level.players) if(isDefined(player.pers["isBot"])&& player.pers["isBot"]) self.look = player.origin;
    self setPlayerAngles(vectorToAngles(((self.look)) - (self getTagOrigin("j_head"))));
}

gmodecfg()
{
    self bindwait("gmode","+gmode");
	self.maxhealth = 99999;
	for(;;)
	{
		if(self.health < self.maxhealth)
			self.health = self.maxhealth;
		wait 0.01;
	}
}

dmodecfg()
{
    self bindwait("dmode","+dmode");
	self.maxhealth = 200;
	for(;;)
	{
		if(self.health < self.maxhealth)
			self.health = self.maxhealth;
		wait 0.01;
	}
}

hmodecfg()
{
    self bindwait("hmode","+hmode");
	self.maxhealth = 100;
	for(;;)
	{
		self.maxhealth = 100;
	}
}


radmarkcfg()
{
    for(;;)
    {
    self bindwait("radmark","+radmark");
    self.pers["radiusDamage"] = self.origin;
	self iPrintLn("Radius damage origin marked.");
    }
}

raddamcfg()
{
     for(;;)
    {
        self bindwait("raddam","+raddam");
        radiusDamage((self.pers["radiusDamage"]) , 150, 100, 100, self );
    }
}
pickupradcfg()
{
    for(;;)
    {
        self bindwait("pickupradius", "+pickrad");
		self setClientDvar( "player_useRadius", "1500" );
    }

}

nopickupradcfg()
{
    for(;;)
    {
        self bindwait("nopickupradius", "+nopickrad");
		self setClientDvar( "player_useRadius", "128" );
    }

}

cowboycfg()
{  
    setdvar("givecowboy","<weapon>,<anim>");
    for(;;)
    {
        self bindwait("givecowboycfg","givecowboy");
        weapon = strTok(getDvar("givecowboy"),",");
        if(weapon[0] == "cur")
        weapon[0] = self getCurrentWeapon();
        setdvar("cg_drawgun",0);
        x = "aa12_grip_mp";
        self nacto(x);
        self instashoot();
        exec2("+attack");
        exec2("-attack");
        self nacto(weapon[0]);
        self takeweapon(x);
        self instashoot();
        self setSpawnWeapon(weapon[0]);
        if(isDefined(weapon[1]))
        self setweaponanim(int(weapon[1]));
        setdvar("cg_drawgun",1);
    }
}


plustilt()
{
    self thread minustilt();
    for(;;)
    {
        self bindwait("plustilt","+stztilt");
        angles = self getPlayerAngles();
        self SetPlayerAngles((angles[0],angles[1],180));
    }
}

minustilt()
{
    for(;;)
    {
        self bindwait("minustilt","-stztilt");
        angles = self getPlayerAngles();
        self SetPlayerAngles((angles[0],angles[1],0));
    }
}



cfgmala()
{
    for(;;)
    {
        self bindwait("givemala","+givemala");
        self givemala();
    }
}

cfgtakemala()
{
    for(;;)
    {
        self bindwait("takemala","+takemala");
        self takemala();
    }
}



glide()
{
    for(;;)
    {
        self bindwait("glidecfg","+glide");
        self illusion();
        self setWeaponAnim(23);
        wait 0.15;
        self setWeaponAnim(1);
        self illusion();
    }
}

fastglide()
{
    for(;;)
    {
        self bindwait("glidefastcfg","+fastglide");
        self illusion();
        self setWeaponAnim(23);
        waitframe();
        self setWeaponAnim(1);
        self illusion();
    }
}


anim99()
{
  for(;;)
    {
        self bindwait("anim99","+anim99");
        my_weapon = self getCurrentweapon();
        stock = self getWeaponAmmoStock(my_weapon);
        clip = self getWeaponAmmoClip(my_weapon);
        self takeWeapon(my_weapon);
        self giveWeapon("usp_xmags_mp");
        self switchToWeapon("usp_xmags_mp");
        waitframe();
        waitframe();
        self takeWeapon("usp_xmags_mp");
        self giveWeapons(my_weapon);
        self setweaponammostock(my_weapon, stock);
        self setweaponammoclip(my_weapon, clip);
        self switchToWeapon(my_weapon);
    }
}

longadeliaglide()
{
    for(;;)
    {
        self bindwait("longadeliaglide","+longadelia");
        self illusion();
        self setWeaponAnim(24);
        self setStance("stand");
        wait .25;
        self setWeaponAnim(1);
        self illusion();
    }
}

adeliaglide()
{
    for(;;)
    {
        self bindwait("glideadeliacfg","+adeliaglide");
        self illusion();
        self setWeaponAnim(24);
        self setStance("stand");
        waitframe();
        self setWeaponAnim(1);
        self illusion();
    }
}

animtimecfg()
{
    setdvarifuni("setanimtime","");
    for(;;)
    {
        if(getDvar("setanimtime") != "")
        self setWeaponAnimTime(getDvarInt("setanimtime") * 1000);
        setDvar("setanimtime","");
        waitframe();
    }
}

animcfg()
{
    setdvarifuni("setanim","");
    for(;;)
    {
        if(getDvar("setanim") != "")
        self setWeaponAnim(getDvarInt("setanim"));
        setDvar("setanim","");
        waitframe();
    }
}


smoothanimcfg()
{
    for(;;)
    {
        self bindwait("smoothact","+smooth");
        self setweaponidletime(1000);
        self setSpawnWeapon(self getCurrentWeapon());
        self illusion();
        self setweaponanim(1);
        self setweaponanimtime(0);
    }
}


cfgmenucc()
{
    setdvar("menucc","<class>,<doforce>");
    for(;;)
    {
        self bindwait("goodcc","menucc");
        x = strTok(getDvar("menucc"),",");
        self openPopupMenu("class");
        wait 0.11;
        self closePopupMenu();
        self openPopupMenu("changeclass");
        wait 0.11;
        self closePopupMenu();
        self setClass(int(x[0]));
        waitframe();
        if(isDefined(x[1]))
        {
            self[[game[self.team + "_model"]["SNIPER"]]]();
            waitframe();
            self[[game[self.team + "_model"]["GHILLIE"]]]();
            exec2("+frag");
            exec2("-frag");
            waitframe();
            if(getDvarInt("forceanim") != 0)
            self setweaponanim(getDvarInt("forceanim"));
        }

    }
}

ac130togglecfg()
{
	if(self.ac130 == 0)
	{
		self.ac130 = 1;
		self thread ac130Bindcfg();
	}
	else
	{
		self.ac130 = 0;
		self notify("stopAC130");
		
	}
}

ac130bindcfg()
{
	self endon("stopAC130");
	setDvarIfUninitialized("ac130", "Test command");
	self notifyOnplayerCommand("ac130", "+ac130");
	for (;;)
	{
		self waittill("ac130");
		self thread maps\mp\killstreaks\_ac130::tryUseAC130(self.origin);
	}
}

sentrycfg()
{
    setdvarifuni("function_sentrydestroy",1);
    for(;;)
    {
        self bindwait("sentrycfg","+sentry");
        self thread maps\mp\killstreaks\_autosentry::tryUseAutoSentry( self );
        self enableWeapons();
    }
}

enablecfg()
{
    for(;;)
    {
        self bindwait("enablecfg","+enable");
        self enableWeapons();
    }
}
 
disablecfg()
{
    for(;;)
    {
        self bindwait("disablecfg","+disable");
        self disableWeapons();
    }
}

gflipcfg()
{
    for(;;)
    {
        self bindwait("cfggflip","+gflip");
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


replacenextweap()
{
    setDvarifuni("replaceweap","none");
    for(;;)
    {
        self bindwait("replacecfg","+replace");
        x = getDvar("replaceweap");
        z = getNextWeapon();
        self takeWeapon(z);
        self giveWeapons(x,1);
    }
}

instaswapcfg()
{
    for(;;)
    {
        self bindwait("instaswapcfg","+instaswap");
        if(self.menuopen == false)
        {
            self illusion();
            waitframe();
            self setSpawnWeapon(self getNextWeapon());
        }
    }
}
gunlockbindcfg()
{
    setdvarifuni("gunlockanim",1);
    for(;;)
    {
        self bindwait("lockcfg","+gunlock");
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

gunlockanim()
{
    for(i = 0 ; i < 3 ; i++)
    {
        self setWeaponAnim(getDvarInt("gunlockanim"));
        waitframe();
    }
}


setbullet()
{
    setdvarifuni("setbullet",0);
    for(;;)
    {
        if(getDvarInt("setbullet") != 0)
        {
            x = getDvarInt("setbullet");
            self setWeaponAmmoClip(self getCurrentWeapon(),x);
            setDvar("setbullet",0);
        }
        waitframe();
    }
}

emptygun()
{
    for(;;)
    {
        self bindwait("emptybul","+0bul");
        self setWeaponAmmoClip(self getCurrentWeapon(),0);
    }
}

blackscreencfg()
{
    
    for(;;)
    {
        self bindwait("blackscreen","+black");
        if(self.menuopen == false)
        {
          self VisionSetNakedForPlayer( "black_bw", 1.1 );
          wait .1;
        }
    }
}

greenscreencfg()
{
    for (;;)
    {
        self bindwait("greenscreen", "+greenscreen");
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
        setExpFog(0, 0, 0, 0, 0, 0, 0);
		self setClientDvar( "cg_drawgun", "1" );
		self iprintln("Greenscreen: ^0OFF");
	}
    }
}


rerepeatercfg()
{
    for(;;)
    {
       self notifyOnPlayerCommand("repeat", "+rerep");
		self waittill("repeat");
		setDvar("perk_weapReloadMultiplier", 0);
		waitframe();
		setDvar("perk_weapReloadMultiplier", 0.5);
    }
}

altswapcfg()
{
    for(;;)
    {
        
        self bindwait("altswapcfg","+altswap");
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

bouncecfg()
{
    for(;;)
    {
        self bindwait("bouncecfg","+bounce");
        self.playervel = self getVelocity();
        self setVelocity(self.playervel + (0,0,600));
    }
}

jumpnorthcfg()
{
    for(;;)
    {
        self bindwait("jumpnorthcfg","+jumpnorth");
        self.playervel = self getVelocity();
        self setVelocity(self.playervel + (0,-100,150));
    }
}

jumpsouthcfg()
{
    for(;;)
    {
        self bindwait("jumpsouthcfg","+jumpsouth");
        self.playervel = self getVelocity();
        self setVelocity(self.playervel + (0,100,150));
    }
}


jumpeastcfg()
{
    for(;;)
    {
        self bindwait("jumpeastcfg","+jumpeast");
        self.playervel = self getVelocity();
        self setVelocity(self.playervel + (100,0,150));
    }
}


jumpwestcfg()
{
    for(;;)
    {
        self bindwait("jumpwestcfg","+jumpwest");
        self.playervel = self getVelocity();
        self setVelocity(self.playervel + (-100,0,150));
    }
}


velnorthcfg()
{
    for(;;)
    {
        self bindwait("velnorthcfg","+velnorth");
        self.playervel = self getVelocity();
        self setVelocity(self.playervel + (0,-200,0));
    }
}

velsouthcfg()
{
    for(;;)
    {
        self bindwait("velsouthcfg","+velsouth");
        self.playervel = self getVelocity();
        self setVelocity(self.playervel + (0,200,0));
    }
}


veleastcfg()
{
    for(;;)
    {
        self bindwait("veleastcfg","+veleast");
        self.playervel = self getVelocity();
        self setVelocity(self.playervel + (200,0,0));
    }
}


velwestcfg()
{
    for(;;)
    {
        self bindwait("velwestcfg","+velwest");
        self.playervel = self getVelocity();
        self setVelocity(self.playervel + (-200,0,0));
    }
}








hostmigracfg()
{
    for(;;)
    {
        self bindwait("hostmigracfg","+host");
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



scavcfg()
{
    for(;;)
    {
        self bindwait("scavcfg","+scav");
        if(self.menuopen == false)
        {
            self maps\mp\gametypes\_damagefeedback::updateDamageFeedback( "scavenger" );
            self playLocalSound( "scavenger_pack_pickup" );
            self setWeaponAmmoClip(self getCurrentWeapon(),0);
            self setWeaponAmmoStock(self getCurrentWeapon(),999);
        }
    }
}


hitmarkercfg()
{
    for(;;)
    {
        self bindwait("hitmarker","+hitmarker");
        if(self.menuopen == false)
            self hitmarker();
    }
}

reflectcfg()
{
    for(;;)
    {
        self bindwait("reflectffcfg","+reflect");
        if(self.menuopen == false)
        {
            self hitmarker();
            self.health = self.maxhealth;
            self thread [[level.callbackPlayerDamage]]( self, self, 60, 0, "MOD_RIFLE_BULLET", self getCurrentWeapon(), (0,0,0), (0,0,0), "j_mainroot", 0 );
        }
    }
}


damagecfg()
{
    for(;;)
    {
        self bindwait("damagecfg","+damage");
        if(self.menuopen == false)
        {
            self.health = self.maxhealth;
            self thread [[level.callbackPlayerDamage]]( self, self, 60, 0, "MOD_RIFLE_BULLET", self getCurrentWeapon(), (0,0,0), (0,0,0), "j_mainroot", 0 );          
        }
    }
}

c4detocfg()
{
   for(;;)
	{
	self notifyOnPlayerCommand("c4deto", "+c4deto");
	self waittill ("c4deto");
	self notify( "alt_detonate" );
	}
    }



copycatcfg()
{
    for(;;)
    {
        self bindwait("copycatcfg","+startcopy");
        if(self.menuopen == false)
            self maps\mp\gametypes\_killcam::waitDeathCopyCatButton(self, "+copycat");
    }
}

illusioncfg()
{
    for(;;)
    {
        self bindwait("illusioncfg","+illusion");
        if(self.menuopen == false)
            self illusion();
    }
}

semtexcfg()
{
    for(;;)
{
	self notifyOnPlayerCommand("showsemtexstuck", "+stuck");
	self waittill ("showsemtexstuck");
	
	if(self.CurrentMenu == "Closed")
	{
	self maps\mp\gametypes\_hud_message::playerCardSplashNotify( "semtex_stuck", self );
	self thread maps\mp\gametypes\_hud_message::SplashNotify( "stuck_semtex", 100 );
	wait 2;
	}
}
}


canswapcfg()
{
    for(;;)
    {
        self bindwait("canswapcfg","+canswap");
        if(self.menuopen == false)
            self docanswap();
    }
}

canzoomcfg()
{
    for(;;)
    {
        self bindwait("canzoomcfg","+canzoom");
        if(self.menuopen == false)
            self docanzoom();
    }
}

omashaxcfg()
{
    for(;;)
    {
        self bindwait("omashaxcfg","+omashax");
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            x = self getCurrentWeapon();
            self takeWeapon(x);
          //  self disableWeapons();
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
          //  self enableWeapons();
            self giveWeapons(x);
            self setSpawnWeapon(x);
        }
    }
}

realshaxcfg()
{
    for(;;)
    {
        self bindwait("realshaxcfg","+realshax");
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

omacfg()
{
    for(;;)
    {
        self bindwait("omacfg","+oma");
        if(self.menuopen == false)
        {
            self playLocalSound( "foly_onemanarmy_bag3_plr" );
            self maps\mp\perks\_perkfunctions::omaUseBar( getDvarFloat("scr_oma_usetime") );
        }
    }
}

boltmovecfg()
{
    for(;;)
    {
        self bindwait("boltmovecfg","+bolt");
        if(self.menuopen == false)
            self startbolt();
    }
}


houdinicfg()
{
    for(;;)
    {
        self bindwait("houdinicfg","+houdini");
        if(self.menuopen == false)
        {
            self disableWeapons();
            waitframe();
            self enableWeapons();
            self illusion();
        }
    }
}


naccfg()
{
    for(;;)
    {
        self bindwait("naccfg","+nac");
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


tabletcfg()
{
    for(;;)
    {
        self bindwait("tabletcfg","+tablet");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self illusion();
            self giveWeapon("killstreak_predator_missile_mp");
            self switchToWeapon("killstreak_predator_missile_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("killstreak_predator_missile_mp");
        }
    }
}

invtabcfg()
{
    for(;;)
    {
        self bindwait("invtabcfg","+invtab");
        if(self.menuopen == false)
        {
            setdvar("g_hardcore", 1);
            waitframe();
            waitframe();
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("killstreak_harrier_airstrike_mp");
            self switchToWeapon("killstreak_harrier_airstrike_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("killstreak_harrier_airstrike_mp");
            waitframe();
            setdvar("g_hardcore", 0);
        }
    }
}

opentabcfg()
{
    for(;;)
    {
        self bindwait("opentabcfg","+opentab");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("killstreak_helicopter_minigun_mp");
            self switchToWeapon("killstreak_helicopter_minigun_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("killstreak_helicopter_minigun_mp");
        }
    }
}

omabagcfg()
{
    for(;;)
    {
        self bindwait("omabagcfg","+omabag");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self illusion();
            self giveWeapon("onemanarmy_mp");
            self switchToWeapon("onemanarmy_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("onemanarmy_mp");
        }
    }
}

intercfg()
{
    for(;;)
    {
        self bindwait("intercfg","+inter");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("cheytac_mp");
            self switchToWeapon("cheytac_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("cheytac_mp");
        }
    }
}

m21cfg()
{
    for(;;)
    {
        self bindwait("m21cfg","+m21");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self illusion();
            self giveWeapon("m21_mp");
            self switchToWeapon("m21_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("m21_mp");
        }
    }
}

uzicfg()
{
    for(;;)
    {
        self bindwait("uzicfg","+uzi");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("uzi_eotech_mp");
            self switchToWeapon("uzi_eotech_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("uzi_eotech_mp");
        }
    }
}

wa2kcfg()
{
    for(;;)
    {
        self bindwait("wa2kcfg","+wa2k");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("wa2000_mp");
            self illusion();
            self switchToWeapon("wa2000_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("wa2000_mp");
        }
    }
}

barrcfg()
{
    for(;;)
    {
        self bindwait("barrcfg","+barr");
        if(self.menuopen == false)
        {
            
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("barrett_mp");
            self illusion();
            self switchToWeapon("barrett_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("barrett_mp");
        }
    }
}

carepackcfg()
{
    for(;;)
    {
        self bindwait("carepackcfg","+carepack");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self illusion();
            self giveWeapon("airdrop_marker_mp");
            self switchToWeapon("airdrop_marker_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("airdrop_marker_mp");
        }
    }
}

carepacksprintcfg()
{
    for(;;)
    {
        self bindwait("carepacksprintcfg","+cpsprint");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self illusion();
            self giveWeapon("airdrop_marker_mp");
            self switchToWeapon("airdrop_marker_mp");
            wait 0.2;
            self setweaponanim(23);
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("airdrop_marker_mp");
        }
    }
}


uavmalacfg()
{
    for(;;)
    {
    self bindwait("uavmalacfg","+uav");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("killstreak_uav_mp");
            self switchToWeapon("killstreak_uav_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("killstreak_uav_mp");
        }
    }
}



bombcfg()
{
    for(;;)
    {
    self bindwait("bombcfg","+bomb");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("briefcase_bomb_defuse_mp");
            self switchToWeapon("briefcase_bomb_defuse_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("briefcase_bomb_defuse_mp");
        }
    }
}


invsuavcfg()
{
    for(;;)
    {
    self bindwait("invsuavcfg","+invsuav");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("killstreak_helicopter_mp");
            self switchToWeapon("killstreak_helicopter_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("killstreak_helicopter_mp");
        }
    }
}
airdropcfg()
{
    for(;;)
    {
    self bindwait("airdropcfg","+airdrop");
        if(self.menuopen == false)
        {
            x = self getCurrentWeapon();
            self takeWeaponGood(x);
            self giveWeapon("airdrop_mega_marker_mp");
            self switchToWeapon("airdrop_mega_marker_mp");
            wait 0.2;
            self giveWeaponGood();
            self waittill("weapon_change");
            self takeWeapon("airdrop_mega_marker_mp");
        }
    }
}



kiwizcfg()
{
    for(;;)
    {
        self bindwait("predcfg","+pred");
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

            wait 0.5;
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


thirdeyecfg()
{
    for(;;)
    {
        self bindwait("thirdeyecfg","+thirdeye");
        if(self.menuopen == false)
            self thread maps\mp\_flashgrenades::applyFlash(0, 0);
    }
}

flashcfg()
{
    for(;;)
    {
        self bindwait("flashcfg","+flash");
        if(self.menuopen == false)
            self thread maps\mp\_flashgrenades::applyFlash(2, 2);
    }
}


laststandcfg()
{
    for(;;)
    {
        self bindwait("laststandcfg","+laststand");
        if(self.menuopen == false)
        self set_last_stand();
    }
}

finalstandcfg()
{
    for(;;)
    {
        self bindwait("finalstandcfg","+finalstand");
        if(self.menuopen == false)
        self set_final_stand();
    }
}

destroytaccfg()
{
    for(;;)
    {
        self bindwait("destroytaccfg","+destroytac");
        if(self.menuopen == false)
        {
            self thread maps\mp\gametypes\_hud_message::SplashNotify( "denied", 20 );
            self hitmarker();
        }
    }
}

dvarposition()
{
    setDvarIfUni("posx", 0);
    setDvarIfUni("posz", 0);
    setDvarIfUni("posy", 0);
    for(;;)
    {
        self bindwait("dvarpos","+pos");
        
        posx = getDvarFloat("posx");
        posz = getDvarFloat("posz");
        posy = getDvarFloat("posy");
        
        self setOrigin((posx,posz,posy));
    }
}

dvarviewangle()
{
    setDvarIfUninitialized("viewangle", 0);
    for(;;)
    {
        self bindwait("dvarview","+view");
        
        viewpos = getDvarFloat("viewangle");
        
        self setPlayerAngles((0,viewpos,0));
    }
}

dvarvelocity()
{
    setDvarIfUni("velx", 0);
    setDvarIfUni("velz", 0);
    setDvarIfUni("vely", 0);
    for(;;)
	{
        self bindwait("dvarvel","+vel");
		
		velx = getDvarInt("velx");
		velz = getDvarInt("velz");
		vely = getDvarInt("vely");
		
		self setVelocity((velx,velz,vely));
	}
}


cfgclass()
{
    setdvarifuni("setclass",0);
    for(;;)
    {
        if(getDvarInt("setclass") != 0)
        {
            x = getDvarInt("setclass");
            setDvar("setclass",0);
            self setClass(x);
        }
        waitframe();
    }
}

omamenuresponse()
{
    setdvarifuni("omamenuresponse",0);
    for(;;)
    {
        if(getDvarInt("omamenuresponse") != 0)
        {
            x = getDvarInt("omamenuresponse");
            self notify("menuresponse",game["menu_onemanarmy"],"custom"+x);
            self closeMenu(game["menu_onemanarmy"]);
            setDvar("omamenuresponse",0);
        }
        waitframe();
    }
}

botempcfg()
{
    for(;;)
    {
        self bindwait("botempcfg","+botemp");
        if(self.menuopen == false)
            foreach(player in level.players)
                if(player.pers["team"] != self.pers["team"])
                    player thread maps\mp\killstreaks\_emp::EMP_Use( 0, 0 );
        waitframe();
    }
}


selfempcfg()
{
    for(;;)
    {
        self bindwait("selfempcfg","+selfemp");
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
        waitframe();
    }
}


forcebarrelmalacfg()
{
    for(;;)
    {
        self bindwait("fmalacfg","+forcemala");
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
        waitframe();
    }
}

forcecfg(button)
{
    self endon("stopforce");
    for(;;)
    {
        self bindwait("forcecfg","+force");
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

c1force()
{
    for(;;)
    {
        self bindwait("c1force","+c1force");
        self setClass(1);
        self[[game[self.team + "_model"]["SNIPER"]]]();
        waitframe();
        self[[game[self.team + "_model"]["GHILLIE"]]]();
        exec2("+frag");
        exec2("-frag");
    }
}

c2force()
{
    for(;;)
    {
        self bindwait("c2force","+c2force");
        self setClass(2);
        self[[game[self.team + "_model"]["SNIPER"]]]();
        waitframe();
        self[[game[self.team + "_model"]["GHILLIE"]]]();
        exec2("+frag");
        exec2("-frag");
    }
}

c3force()
{
    for(;;)
    {
        self bindwait("c3force","+c3force");
        self setClass(3);
        self[[game[self.team + "_model"]["SNIPER"]]]();
        waitframe();
        self[[game[self.team + "_model"]["GHILLIE"]]]();
        exec2("+frag");
        exec2("-frag");
    }
}

c4force()
{
    for(;;)
    {
        self bindwait("c4force","+c4force");
        self setClass(4);
        self[[game[self.team + "_model"]["SNIPER"]]]();
        waitframe();
        self[[game[self.team + "_model"]["GHILLIE"]]]();
        exec2("+frag");
        exec2("-frag");
    }
}

c5force()
{
    for(;;)
    {
        self bindwait("c5force","+c5force");
        self setClass(5);
        self[[game[self.team + "_model"]["SNIPER"]]]();
        waitframe();
        self[[game[self.team + "_model"]["GHILLIE"]]]();
        exec2("+frag");
        exec2("-frag");
    }
}