public class ScriptFOVModification : LuaScript
{
    public ScriptFOVModification() : base("FOV Modification", "This script allows you to get an higher or lower camera FOV (Field Of View).", "Camera", "g_pMain:SetProjectionFov(2) -- Replace '2' with the value of camera FOV you want, '4' if you want to disable it.")
    {

    }
}