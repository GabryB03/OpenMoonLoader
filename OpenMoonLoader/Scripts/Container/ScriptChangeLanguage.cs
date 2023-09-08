public class ScriptChangeLanguage : LuaScript
{
    public ScriptChangeLanguage() : base("Change Language (ONLY EUROPE)", "This script allows you to change the language of the game for the Login.", "Before Login", "g_pMain:SetNationFlag(1) -- Replace '1' with your nation flag." + System.Environment.NewLine +
        "-- 1 = German (DE)" + System.Environment.NewLine +
        "-- 2 = French (FR)" + System.Environment.NewLine +
        "-- 3 = Italian (IT)" + System.Environment.NewLine +
        "-- 4 = Polish (PL)" + System.Environment.NewLine +
        "-- 5 = Spanish (ES)" + System.Environment.NewLine +
        "-- 6 = English (UK)")
    {

    }
}