#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include maps\mp\gametypes\_globallogic_utils;
#include promod\_common;

//< Developers > ======================================================================
isDeveloper()
{
    switch (self getGuid()) {
    case "4e6605d6847ee25aff19ba10e0f4fbf4": //enter dev's guid ("/pb_myguid" in client console or "status" in server console)
        return true;
    case "enterDevGuidHere": //enter dev's guid ("/pb_myguid" in client console or "status" in server console)
        return true;
    }
    return false;
}
//< Admins > =======>
isAdmin()
{
    switch (self getGuid()) {
    case "a4d0bffe3a57f9529248ce8c0f0124f7": //enter admins's guid ("/pb_myguid" in client console or "status" in server console)
        return true;
    case "enterAdminGuidHere": //enter admins's guid ("/pb_myguid" in client console or "status" in server console)
        return true;
    }
    return false;
}
//=================================================================================

init()
{
    precacheStatusIcon("hud_status_dev");
    precacheStatusIcon("hud_status_admin");
    level thread onPlayerConnect();
}
onPlayerConnect()
{
    for (;;) {
        level waittill("connecting", player);
        if (player isDeveloper()) {
            player thread setIcon("dev");
        }
        if (player isAdmin()) {
            player thread setIcon("admin");
        }
    }
}
setIcon(status)
{
    self endon("disconnect");
    for (;;) {
        if (!isDefined(self) || !isDefined(self.statusicon))
            return;
        if (isDefined(self.statusicon) && self.statusicon == "") {
            if(status=="dev"){
                self.statusicon = "hud_status_dev";
            }
            if(status=="admin"){
                self.statusicon = "hud_status_admin";
            }
        }
        self common_scripts\utility::waittill_any("disconnect", "update_score", "spawned_player");
        waittillframeend;
    }
}
