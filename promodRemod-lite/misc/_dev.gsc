#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include maps\mp\gametypes\_globallogic_utils;

//< Developers > ======================================================================
isDev()
{
    switch (self getGuid()) {
    case "00000000847ee25aff19ba10e0f4fbf4": //enter dev's guid ("/pb_myguid" in client console or "status" in server console)
        return true;
    case "enterDevGuidHere": //enter dev's guid ("/pb_myguid" in client console or "status" in server console)
        return true;
    }
    return false;
}
//< Admins > ==>
isAdmin()
{
    switch (self getGuid()) {
    case "00000000847ee25aff19ba10dwa4": //enter admins's guid ("/pb_myguid" in client console or "status" in server console)
        return true;
    case "enterAdminGuidHere": //enter admins's guid ("/pb_myguid" in client console or "status" in server console)
        return true;
    }
    return false;
}
//=================================================================================

init()
{
    level thread onPlayerConnect();
    precacheStatusIcon("hud_status_dev");
    precacheStatusIcon("hud_status_admin");
}
onPlayerConnect()
{
    for (;;) {
        level waittill("connecting", player);
        if (player isDev()) {
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
