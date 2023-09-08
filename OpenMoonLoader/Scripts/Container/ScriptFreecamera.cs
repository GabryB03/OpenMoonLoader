public class ScriptFreecamera : LuaScript
{
    public ScriptFreecamera() : base("Freecamera", "This script allows you to go away into the map with a custom camera vision.", "Camera", "g_pMain:SetFreeCamera(true) -- Use 'true' to enable your Freecamera, 'false' to disable.")
    {

    }
}