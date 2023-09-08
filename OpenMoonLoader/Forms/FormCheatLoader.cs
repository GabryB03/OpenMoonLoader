using System.Windows.Forms;
using MetroSuite;
using System.Diagnostics;
using System.Threading;
using System;
using System.Security.Principal;
using System.Text;
using System.Linq;
using System.Management;
using System.IO;

public partial class FormCheatLoader : MetroForm
{
    private string thingFolderName = "";
    private string rootDir = Environment.GetFolderPath(Environment.SpecialFolder.System).Substring(0, 1) + ":";
    private string folderName, nvcplDllName;
    private bool canDo = false;
    private ProtoRandom random = new ProtoRandom(100);
    private char[] characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".ToCharArray();

    private void timer1_Tick(object sender, EventArgs e)
    {
        if (canDo)
        {
            canDo = false;
            timer1.Stop();
            Process theProcess = null;

            foreach (Process p in Process.GetProcesses())
            {
                try
                {
                    if (p.ProcessName.ToLower().Equals("x2"))
                    {
                        theProcess = p;
                        break;
                    }
                }
                catch
                {

                }
            }

            if (theProcess == null)
            {
                Process.GetCurrentProcess().Kill();
                return;
            }

            while (!theProcess.Responding)
            {
                Thread.Sleep(5);
            }

            Thread.Sleep(1500);
            new FormLuaInjector().Show();
            this.Hide();
            this.Size = new System.Drawing.Size(0, 0);
            this.Visible = false;
            this.Enabled = false;
            this.Opacity = 0;
        }
    }

    private void FormCheatLoader_FormClosing(object sender, FormClosingEventArgs e)
    {
        Process.GetCurrentProcess().Kill();
    }

    public int FindBytes(byte[] src, byte[] find)
    {
        int index = -1;
        int matchIndex = 0;

        for (int i = 0; i < src.Length; i++)
        {
            if (src[i] == find[matchIndex])
            {
                if (matchIndex == (find.Length - 1))
                {
                    index = i - matchIndex;
                    break;
                }

                matchIndex++;
            }
            else if (src[i] == find[0])
            {
                matchIndex = 1;
            }
            else
            {
                matchIndex = 0;
            }
        }

        return index;
    }

    public byte[] ReplaceBytes(byte[] src, byte[] search, byte[] repl)
    {
        byte[] dst = null;
        int index = FindBytes(src, search);

        if (index >= 0)
        {
            dst = new byte[src.Length - search.Length + repl.Length];

            Buffer.BlockCopy(src, 0, dst, 0, index);
            Buffer.BlockCopy(repl, 0, dst, index, repl.Length);
            Buffer.BlockCopy(src, index + search.Length, dst, index + repl.Length, src.Length - (index + search.Length));
        }

        return dst;
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

    public FormCheatLoader()
    {
        try
        {
            InitializeComponent();
            Process.GetCurrentProcess().PriorityClass = ProcessPriorityClass.RealTime;
            CheckForIllegalCrossThreadCalls = false;

            if (!System.IO.Directory.Exists(rootDir + "\\Temp"))
            {
                System.IO.Directory.CreateDirectory(rootDir + "\\Temp");
            }

            folderName = random.GetRandomString(characters, random.GetRandomInt32(32, 64));

            if (System.IO.Directory.Exists(rootDir + "\\Temp\\" + folderName))
            {
                System.IO.Directory.Delete(rootDir + "\\Temp\\" + folderName);
            }

            foreach (string file in System.IO.Directory.GetFiles(rootDir + "\\"))
            {
                try
                {
                    if (System.IO.Path.GetExtension(file).ToLower().Equals(".dll") && System.IO.Path.GetFileNameWithoutExtension(file).Length == 7)
                    {
                        System.IO.File.SetAttributes(file, System.IO.FileAttributes.Normal);
                        System.IO.File.Delete(file);
                    }
                }
                catch
                {

                }
            }

            System.IO.Directory.CreateDirectory(rootDir + "\\Temp\\" + folderName);
            nvcplDllName = random.GetRandomString(characters, random.GetRandomInt32(32, 64));
            byte[] nvcpl = OpenMoonLoader.Properties.Resources.ElsDll;

            string[] strings = new string[]
            {
                "C:\\Users\\gabry\\Desktop\\OpenMoonLoader\\ElsDll\\ElsDll\\x64\\Release\\ElsDll.pdb",
            };

            foreach (string str in strings)
            {
                nvcpl = ReplaceBytes(nvcpl, System.Text.Encoding.UTF8.GetBytes(str), System.Text.Encoding.UTF8.GetBytes(random.GetRandomString(characters, str.Length)));
            }

            byte[] newthing = Combine(nvcpl, System.Text.Encoding.UTF8.GetBytes(random.GetRandomString(characters, 250)));
            System.IO.File.WriteAllBytes(rootDir + "\\Temp\\" + folderName + "\\" + nvcplDllName + ".dll", newthing);
            HideFile(rootDir + "\\Temp\\" + folderName + "\\" + nvcplDllName + ".dll");
            Clipboard.SetText(rootDir + "\\Temp\\" + folderName + "\\" + nvcplDllName + ".dll");
            System.IO.DirectoryInfo info = new System.IO.DirectoryInfo(rootDir + "\\Temp\\" + folderName);
            info.Attributes = System.IO.FileAttributes.Hidden | System.IO.FileAttributes.Directory | System.IO.FileAttributes.ReadOnly;
          
            try
            {
                foreach (string file in System.IO.Directory.GetFiles(rootDir + "\\Users\\" + Environment.UserName + "\\AppData\\Roaming\\Microsoft\\Windows\\Recent"))
                {
                    try
                    {
                        if (file.ToLower().Contains("elzloader") || file.ToLower().Contains("openmoonloader") || file.ToLower().Contains("skype") || file.ToLower().Contains("x2") || file.ToLower().Contains("elsword"))
                        {
                            System.IO.File.Delete(file);
                        }
                    }
                    catch
                    {

                    }
                }
            }
            catch
            {

            }

            timer1.Start();

            Thread thread = new Thread(Waiting);
            thread.Priority = ThreadPriority.Highest;
            thread.Start();
        }
        catch 
        {
            Process.GetCurrentProcess().Kill();
            return;
        }
    }

    public static void ExecuteAsAdmin(string fileName, string arguments)
    {
        Process proc = new Process();
        proc.StartInfo.FileName = fileName;
        proc.StartInfo.Arguments = arguments;
        proc.StartInfo.UseShellExecute = true;
        proc.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
        proc.StartInfo.CreateNoWindow = true;
        proc.StartInfo.Verb = "runas";
        proc.Start();
        proc.WaitForExit();
    }

    public static void HideFile(string file)
    {
        System.IO.File.SetAttributes(file, System.IO.FileAttributes.Hidden);
        System.IO.FileInfo info = new System.IO.FileInfo(file);
        info.IsReadOnly = true;
    }

    public static void ShowFile(string file)
    {
        System.IO.File.SetAttributes(file, System.IO.FileAttributes.Normal);
        System.IO.FileInfo info = new System.IO.FileInfo(file);
        info.IsReadOnly = false;
    }

    public static byte[] Combine(byte[] first, byte[] second)
    {
        byte[] ret = new byte[first.Length + second.Length];

        Buffer.BlockCopy(first, 0, ret, 0, first.Length);
        Buffer.BlockCopy(second, 0, ret, first.Length, second.Length);

        return ret;
    }

    private void siticoneCheckBox7_CheckedChanged(object sender, EventArgs e)
    {
        Utils.isDumping = true;
        siticoneCheckBox7.Enabled = false;
        File.Create("C:\\start_dumping.data");
    }

    private void gunaButton6_Click(object sender, EventArgs e)
    {
        Process.Start("https://github.com/GabryB03/OpenMoonLoader/");
    }

    public void Waiting()
    {
        bool canContinue = true;

        while (canContinue)
        {
            try
            {
                if (label1.Text.Equals("Waiting for the launcher..."))
                {
                    foreach (Process process in Process.GetProcesses())
                    {
                        try
                        {
                            if (process.ProcessName.ToLower().Equals("elsword") || process.ProcessName.ToLower().Equals("elsrift"))
                            {
                                label1.Text = "Waiting for the game...";
                                break;
                            }
                        }
                        catch
                        {

                        }
                    }
                }
                else if (label1.Text.Equals("Waiting for the game..."))
                {
                    foreach (Process process in Process.GetProcesses())
                    {
                        try
                        {
                            if (process.ProcessName.ToLower().Equals("x2"))
                            {
                                Utils.InjectDLL(process.Id, rootDir + "\\Temp\\" + folderName + "\\" + nvcplDllName + ".dll");

                                try
                                {
                                    Utils.DataFolder = "";

                                    try
                                    {
                                        Utils.DataFolder = process.MainModule.FileName.ToLower().Replace("\\x2.exe", "");
                                    }
                                    catch
                                    {

                                    }

                                    if (Utils.DataFolder == "" || Utils.DataFolder == null)
                                    {
                                        Process.GetCurrentProcess().Kill();
                                        return;
                                    }
                                }
                                catch 
                                {
                                    Process.GetCurrentProcess().Kill();
                                    return;
                                }

                                label1.Text = "Waiting for the window...";
                                break;
                            }
                        }
                        catch
                        {

                        }
                    }
                }
                else if (label1.Text.Equals("Waiting for the window..."))
                {
                    bool found = false;

                    foreach (Process process in Process.GetProcesses())
                    {
                        try
                        {
                            if (process.ProcessName.ToLower().Equals("x2"))
                            {
                                found = true;

                                if (process.MainWindowHandle == IntPtr.Zero || process.MainWindowHandle == new IntPtr(-1) || !process.MainWindowTitle.StartsWith("[x64] Elsword - "))
                                {
                                    continue;
                                }
                                else
                                {
                                    canContinue = false;
                                    break;
                                }
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
            catch
            {

            }
        }

        label1.Text = "Injecting, please wait...";
        canDo = true;
    }
}