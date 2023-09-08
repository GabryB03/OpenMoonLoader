using System;
using System.Drawing;
using MetroSuite;
using System.Threading;
using System.Diagnostics;
using FastColoredTextBoxNS;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using System.Collections.Generic;
using System.Text;
using InterceptionSharp;
using System.Runtime.InteropServices;

public partial class FormLuaInjector : MetroForm
{
    [DllImport("user32.dll", CharSet = CharSet.Auto, SetLastError = true)]
    static extern IntPtr GetForegroundWindow();

    [DllImport("user32.dll", CharSet = CharSet.Auto, SetLastError = true)]
    static extern int GetWindowText(IntPtr hWnd, StringBuilder text, int count);

    [DllImport("user32.dll", CharSet = CharSet.Auto, SetLastError = true)]
    static extern int GetWindowTextLength(IntPtr hWnd);

    protected static readonly Platform platformType = PlatformType.GetOperationSystemPlatform();
    public Style CommentStyle = new TextStyle(new SolidBrush(ColorTranslator.FromHtml("#57a642")), null, FontStyle.Regular);
    public Style NumberStyle = new TextStyle(new SolidBrush(ColorTranslator.FromHtml("#b5cea8")), null, FontStyle.Regular);
    public Style FunctionsStyle = new TextStyle(new SolidBrush(ColorTranslator.FromHtml("#4ec9b0")), null, FontStyle.Regular);
    public Style KeywordStyle = new TextStyle(new SolidBrush(ColorTranslator.FromHtml("#569cd6")), null, FontStyle.Regular);
    public Style StringStyle = new TextStyle(new SolidBrush(ColorTranslator.FromHtml("#d69d85")), null, FontStyle.Regular);
    public MarkerStyle BracketsStyle = new MarkerStyle(new SolidBrush(Color.FromArgb(100, 17, 61, 111)));
    private ProtoRandom random = new ProtoRandom(100);
    private char[] characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".ToCharArray();
    protected Regex LuaCommentRegex1, LuaCommentRegex2, LuaCommentRegex3, LuaKeywordRegex, LuaNumberRegex, LuaStringRegex, LuaFunctionsRegex;
    public List<LuaScript> scripts;
    public Process ElswordProcess;
    public Input MacroManager;

    public static RegexOptions RegexCompiledOption
    {
        get
        {
            if (platformType == Platform.X86)
            {
                return RegexOptions.Compiled;
            }
            else
            {
                return RegexOptions.None;
            }
        }
    }

    public bool IsPasswordValid(string str)
    {
        foreach (char c in str)
        {
            bool found = false;

            foreach (char s in characters)
            {
                if (c.Equals(s))
                {
                    found = true;
                    break;
                }
            }

            if (!found)
            {
                return false;
            }
        }

        return true;
    }

    private static bool CompareByteArrays(byte[] first, byte[] second)
    {
        if (first.Length != second.Length)
        {
            return false;
        }

        for (int i = 0; i < first.Length; i++)
        {
            if (first[i] != second[i])
            {
                return false;
            }
        }

        return true;
    }

    private string GetCaptionOfActiveWindow()
    {
        try
        {
            var strTitle = string.Empty;
            var handle = GetForegroundWindow();
            var intLength = GetWindowTextLength(handle) + 1;
            var stringBuilder = new StringBuilder(intLength);

            if (GetWindowText(handle, stringBuilder, intLength) > 0)
            {
                strTitle = stringBuilder.ToString();
            }

            return strTitle;
        }
        catch
        {
            return "";
        }
    }

    public FormLuaInjector()
    {
        InitializeComponent();

        CheckForIllegalCrossThreadCalls = false;

        MacroManager = new Input();
        MacroManager.KeyboardFilterMode = KeyboardFilterMode.All;
        MacroManager.Load();

        string[] splitted = Environment.GetEnvironmentVariable("SystemRoot").Split('\\');
        string credentials = random.GetRandomString(characters, random.GetRandomInt32(7, 22)) + "-" + random.GetRandomString(characters, random.GetRandomInt32(20, 40));

        if (System.IO.Directory.Exists("autorun"))
        {
            foreach (string file in System.IO.Directory.GetFiles("autorun"))
            {
                Utils.ExecuteLua(System.IO.File.ReadAllText(file));
            }
        }

        Thread thread = new Thread(Check);
        thread.Priority = ThreadPriority.Highest;
        thread.Start();

        scripts = new List<LuaScript>();

        scripts.Add(new ScriptFreecamera());
        scripts.Add(new ScriptFOVModification());
        scripts.Add(new ScriptAutoKill());
        scripts.Add(new ScriptSafeAutoKill());
        scripts.Add(new ScriptDisableAutoKill());
        scripts.Add(new ScriptMonsterVAC());
        scripts.Add(new ScriptDisableMonsterVAC());
        scripts.Add(new ScriptTeleportInVillage());
        scripts.Add(new ScriptTeleportInField());
        scripts.Add(new ScriptSpawnInTraining());
        scripts.Add(new ScriptChangeLanguage());
        scripts.Add(new ScriptTitleMod());
        scripts.Add(new ScriptSkillMod());
        scripts.Add(new ScriptEditSkillsBuffsEffects());
        scripts.Add(new ScriptMapModification());
        scripts.Add(new ScriptMountModification());
        scripts.Add(new ScriptSolaceBot());
        scripts.Add(new ScriptDisableSolaceBot());

        scripts.Add(new ScriptDumpGame());
        scripts.Add(new ScriptDumpSkillProperties());
        scripts.Add(new ScriptDumpSkillsBuffsEffects());

        scripts.Add(new ScriptDumpArguments());
        scripts.Add(new ScriptDumpAITables());
        scripts.Add(new ScriptDumpCalls());
        scripts.Add(new ScriptDumpBuffEffects());
        scripts.Add(new ScriptDeepFunctionCallsInspector());
        scripts.Add(new ScriptDumpTitles());
        scripts.Add(new ScriptDumpTitlesSockets());
        scripts.Add(new ScriptDumpDungeonIDs());
        scripts.Add(new ScriptDumpFunctions());
        scripts.Add(new ScriptDumpLoadedFunctions());
        scripts.Add(new ScriptDumpLoadedTables());
        scripts.Add(new ScriptDumpLoadedUserdatas());
        scripts.Add(new ScriptDumpMultiFunctions());
        scripts.Add(new ScriptDumpMonsterNUIs());
        scripts.Add(new ScriptUniversalFunctionDumper());
        scripts.Add(new ScriptDumpFunction());
        scripts.Add(new ScriptDumpSkills());
        scripts.Add(new ScriptDumpPets());
        scripts.Add(new ScriptDumpBuffFactors());
        scripts.Add(new ScriptDumpRidingPets());

        foreach (LuaScript script in scripts)
        {
            siticoneComboBox2.Items.Add(script.GetScriptType() + ": " + script.GetName());
        }

        siticoneComboBox2.SelectedIndex = 3;

        Utils.ExecuteLua(Encoding.UTF8.GetString(OpenMoonLoader.Properties.Resources.InitialScript));

        new Thread(AutoAttackZ).Start();
        new Thread(AutoSkill).Start();
        new Thread(AutoRestartDungeon).Start();

        gunaComboBox1.SelectedIndex = 0;
        siticoneCheckBox9.Checked = Utils.isDumping;
    }

    public void AutoRestartDungeon()
    {
        while (true)
        {
            Thread.Sleep(25);

            if (siticoneCheckBox2.Checked)
            {
                if (IsElswordFocused())
                {
                    Thread.Sleep(150);
                    MacroManager.SendKey(InterceptionSharp.Keys.F8);
                    Thread.Sleep(150);

                    for (int i = 0; i < 3; i++)
                    {
                        MacroManager.SendKey(InterceptionSharp.Keys.Enter);
                        Thread.Sleep(150);
                    }
                }
            }
        }
    }

    public void AutoAttackZ()
    {
        while (true)
        {
            Thread.Sleep(25);

            if (siticoneCheckBox4.Checked)
            {
                if (IsElswordFocused())
                {
                    MacroManager.SendKey(InterceptionSharp.Keys.Z);
                }
            }

            if (siticoneCheckBox6.Checked)
            {
                if (IsElswordFocused())
                {
                    MacroManager.SendKey(InterceptionSharp.Keys.X);
                }
            }
        }
    }

    public void AutoSkill()
    {
        while (true)
        {
            Thread.Sleep(siticoneMetroTrackBar2.Value * 100);

            if (siticoneCheckBox8.Checked)
            {
                if (IsElswordFocused())
                {
                    InterceptionSharp.Keys keyToSend = InterceptionSharp.Keys.A;

                    switch (gunaComboBox1.SelectedIndex)
                    {
                        case 0: keyToSend = InterceptionSharp.Keys.A; break;
                        case 1: keyToSend = InterceptionSharp.Keys.S; break;
                        case 2: keyToSend = InterceptionSharp.Keys.D; break;
                        case 3: keyToSend = InterceptionSharp.Keys.C; break;
                        case 4: keyToSend = InterceptionSharp.Keys.F; break;
                        case 5: keyToSend = InterceptionSharp.Keys.Q; break;
                        case 6: keyToSend = InterceptionSharp.Keys.W; break;
                        case 7: keyToSend = InterceptionSharp.Keys.E; break;
                        case 8: keyToSend = InterceptionSharp.Keys.R; break;
                        case 9: keyToSend = InterceptionSharp.Keys.T; break;
                        default: keyToSend = InterceptionSharp.Keys.A; break;
                    }

                    MacroManager.SendKey(keyToSend);
                }
            }
        }
    }

    public void Check()
    {
        while (true)
        {
            Thread.Sleep(1000);

            bool found = false;

            foreach (Process process in Process.GetProcesses())
            {
                try
                {
                    if (process.ProcessName.ToLower().Contains("elsword"))
                    {
                        Process.GetCurrentProcess().Kill();
                        return;
                    }
                    else if (process.ProcessName.ToLower().Contains("x2"))
                    {
                        found = true;
                        break;
                    }
                }
                catch
                {

                }
            }

            if (!found)
            {
                Process.GetCurrentProcess().Kill();
                return;
            }
        }
    }

    protected void InitLuaRegex()
    {
        LuaStringRegex = new Regex(@"""""|''|"".*?[^\\]""|'.*?[^\\]'", RegexCompiledOption);
        LuaCommentRegex1 = new Regex(@"--.*$", RegexOptions.Multiline | RegexCompiledOption);
        LuaCommentRegex2 = new Regex(@"(--\[\[.*?\]\])|(--\[\[.*)", RegexOptions.Singleline | RegexCompiledOption);
        LuaCommentRegex3 = new Regex(@"(--\[\[.*?\]\])|(.*\]\])", RegexOptions.Singleline | RegexOptions.RightToLeft | RegexCompiledOption);
        LuaNumberRegex = new Regex(@"\b\d+[\.]?\d*([eE]\-?\d+)?[lLdDfF]?\b|\b0x[a-fA-F\d]+\b", RegexCompiledOption);
        LuaKeywordRegex = new Regex(@"\b(and|break|do|else|elseif|end|false|for|function|if|in|local|nil|not|or|repeat|return|then|true|until|while)\b", RegexCompiledOption);
        LuaFunctionsRegex = new Regex(@"\b(assert|collectgarbage|dofile|error|getfenv|getmetatable|ipairs|load|loadfile|loadstring|module|next|pairs|pcall|print|rawequal|rawget|rawset|require|select|setfenv|setmetatable|tonumber|tostring|type|unpack|xpcall)\b", RegexCompiledOption);
    }

    public bool IsElswordFocused()
    {
        return GetCaptionOfActiveWindow().StartsWith("[x64] Elsword - ");
    }

    private void fastColoredTextBox1_DragEnter(object sender, DragEventArgs e)
    {
        if (e.Data.GetDataPresent(DataFormats.FileDrop))
        {
            e.Effect = DragDropEffects.Copy;
        }
    }

    private void fastColoredTextBox1_DragDrop(object sender, DragEventArgs e)
    {
        if (e.Data.GetDataPresent(DataFormats.FileDrop))
        {
            string totalScript = "";

            foreach (string str in (string[])e.Data.GetData(DataFormats.FileDrop))
            {
                if (totalScript == "")
                {
                    totalScript = System.IO.File.ReadAllText(str);
                }
                else
                {
                    totalScript += Environment.NewLine + Environment.NewLine + System.IO.File.ReadAllText(str);
                }
            }

            if (siticoneCheckBox1.Checked)
            {
                fastColoredTextBox1.Text = fastColoredTextBox1.Text + Environment.NewLine + Environment.NewLine + totalScript;
            }
            else
            {
                fastColoredTextBox1.Text = totalScript;
            }
        }
    }

    private void siticoneCheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        Utils.ExecuteLua($"GodModeEnabled = {siticoneCheckBox3.Checked.ToString().ToLower()}");
    }

    private void gunaButton5_Click(object sender, EventArgs e)
    {
        Utils.ExecuteLua("g_pDungeonGame:GetMyUnit():SetNowHP(0)");
    }

    private void siticoneCheckBox5_CheckedChanged(object sender, EventArgs e)
    {
        Utils.ExecuteLua($"AllElixirsHackEnabled = {siticoneCheckBox5.Checked.ToString().ToLower()}");
    }

    public string GetAttackSpeedHackValue()
    {
        switch (siticoneMetroTrackBar1.Value)
        {
            case 1: return "1.1"; break;
            case 2: return "1.2"; break;
            case 3: return "1.3"; break;
            case 4: return "1.4"; break;
            case 5: return "1.5"; break;
            case 6: return "1.6"; break;
            case 7: return "1.7"; break;
            case 8: return "1.8"; break;
            case 9: return "1.9"; break;
            case 10: return "2.0"; break;
            default: return "1.0"; break;
        }

        return "1.0";
    }

    private void siticoneCheckBox7_CheckedChanged(object sender, EventArgs e)
    {
        Utils.ExecuteLua($"AttackSpeedHackValue = {(GetAttackSpeedHackValue()).ToString()}\r\nAttackSpeedHackEnabled = {siticoneCheckBox7.Checked.ToString().ToLower()}");
    }

    private void gunaButton6_Click(object sender, EventArgs e)
    {
        Process.Start("C:\\Elsword Lua Dumps");
    }

    private void siticoneCheckBox9_CheckedChanged(object sender, EventArgs e)
    {
        if (siticoneCheckBox9.Checked)
        {
            Utils.StartDumping();
        }
        else
        {
            Utils.StopDumping();
        }
    }

    private void fastColoredTextBox1_TextChanged(object sender, TextChangedEventArgs e)
    {
        Range range = e.ChangedRange;

        range.tb.CommentPrefix = "--";
        range.tb.LeftBracket = '(';
        range.tb.RightBracket = ')';
        range.tb.LeftBracket2 = '{';
        range.tb.RightBracket2 = '}';

        range.tb.BracketsHighlightStrategy = BracketsHighlightStrategy.Strategy2;

        range.ClearStyle(StringStyle, CommentStyle, NumberStyle, KeywordStyle, FunctionsStyle, BracketsStyle);

        if (LuaStringRegex == null)
        {
            InitLuaRegex();
        }

        range.SetStyle(CommentStyle, LuaCommentRegex1);
        range.SetStyle(CommentStyle, LuaCommentRegex2);
        range.SetStyle(CommentStyle, LuaCommentRegex3);

        range.SetStyle(StringStyle, LuaStringRegex);

        range.SetStyle(NumberStyle, LuaNumberRegex);
        range.SetStyle(KeywordStyle, LuaKeywordRegex);
        range.SetStyle(FunctionsStyle, LuaFunctionsRegex);

        range.tb.BracketsStyle = BracketsStyle;
        range.tb.BracketsStyle2 = BracketsStyle;

        range.ClearFoldingMarkers();
        range.SetFoldingMarkers("{", "}");
        range.SetFoldingMarkers(@"--\[\[", @"\]\]");
    }

    private void siticoneComboBox2_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        if (!siticoneCheckBox1.Checked)
        {
            fastColoredTextBox1.Text = scripts[siticoneComboBox2.SelectedIndex].GetCode();
        }
        else
        {
            if (fastColoredTextBox1.Text.Replace(" ", "").Replace('\t'.ToString(), "") == "")
            {
                fastColoredTextBox1.Text = scripts[siticoneComboBox2.SelectedIndex].GetCode();
            }
            else
            {
                fastColoredTextBox1.Text += "\r\n\r\n" + scripts[siticoneComboBox2.SelectedIndex].GetCode();
            }
        }
    }

    private void gunaButton2_Click(object sender, System.EventArgs e)
    {
        if (openFileDialog1.ShowDialog().Equals(DialogResult.OK))
        {
            string totalScript = "";

            foreach (string file in openFileDialog1.FileNames)
            {
                if (totalScript == "")
                {
                    totalScript = System.IO.File.ReadAllText(file);
                }
                else
                {
                    totalScript += Environment.NewLine + Environment.NewLine + System.IO.File.ReadAllText(file);
                }
            }

            if (siticoneCheckBox1.Checked)
            {
                if (fastColoredTextBox1.Text == "")
                {
                    fastColoredTextBox1.Text = totalScript;
                }
                else
                {
                    fastColoredTextBox1.Text += Environment.NewLine + Environment.NewLine + totalScript;
                }
            }
            else
            {
                fastColoredTextBox1.Text = totalScript;
            }
        }
    }

    private void gunaButton3_Click(object sender, System.EventArgs e)
    {
        if (saveFileDialog1.ShowDialog().Equals(DialogResult.OK))
        {
            System.IO.File.WriteAllText(saveFileDialog1.FileName, fastColoredTextBox1.Text);
        }
    }

    private void gunaButton4_Click(object sender, System.EventArgs e)
    {
        if (gunaButton4.Text == "Open Console for printing")
        {
            Utils.ExecuteLua("loadstring(([==[ 242 034#Y 217y 216 217 217 223 217 222 215 244 225 216 215 215+ 217 226W 019 217 215 215 019 218 216 215 227 219 215 215 003 218 217 217 235 219 217 215 019 220 216 215 227 221 216 215 003 220 217 217 001 218 220 218 008 219 217 215 004 217 216 215 019 217 216 215 227 218 215 215 003 217 217 217 235 218 218 215 001 215 218 217 010 217 215 215 022 217 219 217 022 217 220 217 010 218 216 215 227 219 215 215 227 221 215 215 022 220 221 215 003 220 217 217 240 221 222 215 003 217 221 216 030 215 216 215 215 151 219 151 223C<E 229.I@K< 029@C< 221 026 221 225 221 224 228KFJKI@E> 225GI@EKp 218 218 215 221 215 224 215 235 019 215 215 215 235 216 216 215 003 215 217 217 022 216 217 215 235 217 218 215 003 216 217 216 237 216 205 214 237 217 204 214 237 218 203 214 022 219 219 215 022 219 220 219 003 219 216 216 022 219 219 215 022 219 221 219 227 220 217 215 003 219 217 217 016 220 222 215 020 220 223 215 015 215 215W 030 215 216 215 225GI@EK 215 232 030<K*K; 0318E;C< 232 024CCF: 026FEJFC< 221 026h 217 247 247 247 2479FFC 24766JK;:8CC 247 024CCF: 026FEJFC< 255 000 018 225 247 247 247 247@EK 24766JK;:8CC 247 030<K*K; 0318E;C< 255@EK 247E*K; 0318E;C< 000 018 225 247 247 247 247 225 247 247 247 2479FFC 24766JK;:8CC 247.I@K< 029@C< 255 225 247 247 247 247 247 247 247 247@EK 247? 029@C< 003 225 247 247 247 247 247 247 247 247:FEJK 247:?8I 001 247CG 025L==<I 003 225 247 247 247 247 247 247 247 247@EK 247E%LD9<I&= 025PK<J+F.I@K< 003 225 247 247 247 247 247 247 247 247@EK 001 247CG%LD9<I&= 025PK<J.I@KK<E 003 225 247 247 247 247 247 247 247 247MF@; 001 247CG&M<IC8GG<; 000 018 225 224:;<= 223==@ 227I<HL@I< 215]==]):gsub([[ (%d%d%d)]],function(s) return string.char(tonumber(s)) end):gsub([[.]], function(s) return string.char((string.byte(s) + 41) % 256)end))(luacode,cfg)");
            gunaButton4.Text = "Close Console for printing";
        }
        else
        {
            Utils.ExecuteLua("local ffi = require(\"ffi\")" + Environment.NewLine +
                "ffi.cdef[[" + Environment.NewLine +
                "bool __stdcall FreeConsole();" + Environment.NewLine +
                "]]" + Environment.NewLine +
                "ffi.C.FreeConsole()" + Environment.NewLine +
                "print = function(...)" + Environment.NewLine +
                "return" + Environment.NewLine +
                "end");
            gunaButton4.Text = "Open Console for printing";
        }
    }

    private void gunaButton1_Click(object sender, System.EventArgs e)
    {
        Utils.ExecuteLua(fastColoredTextBox1.Text);
    }
}