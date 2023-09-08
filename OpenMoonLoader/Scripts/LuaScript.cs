public class LuaScript
{
    private string name, version, description, scriptType, code;

    public LuaScript(string name, string description, string scriptType, string code)
    {
        this.name = name;
        this.description = description;
        this.scriptType = scriptType;
        this.code = code;
    }

    public string GetName()
    {
        return this.name;
    }

    public void SetName(string name)
    {
        this.name = name;
    }

    public string GetDescription()
    {
        return this.description;
    }

    public void SetDescription(string description)
    {
        this.description = description;
    }

    public string GetScriptType()
    {
        return this.scriptType;
    }

    public void SetScriptType(string scriptType)
    {
        this.scriptType = scriptType;
    }

    public string GetCode()
    {
        return "-- {" + $"\"Name\": \"{this.GetName()}\", \"Type\": \"{this.GetScriptType()}\"" + "}" +
            System.Environment.NewLine + "-- " + this.GetDescription() + System.Environment.NewLine + System.Environment.NewLine +
            this.code;
    }

    public void SetCode(string code)
    {
        this.code = code;
    }
}