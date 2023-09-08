using System;
using System.Diagnostics;
using System.IO.Compression;
using System.IO;
using System.Linq;
using System.Security.Principal;
using System.Windows.Forms;
using System.Reflection;

internal static class Program
{
    [STAThread]
    static void Main(string[] args)
    {
        Utils.InitializeLua();

        if (!(new WindowsPrincipal(WindowsIdentity.GetCurrent())).IsInRole(WindowsBuiltInRole.Administrator))
        {
            MessageBox.Show("You must run the program with Administrator privileges!", "", MessageBoxButtons.OK, MessageBoxIcon.Error);
            Process.GetCurrentProcess().Kill();
            return;
        }

        if (!System.IO.Directory.Exists("autorun"))
        {
            System.IO.Directory.CreateDirectory("autorun");
        }

        Application.EnableVisualStyles();
        Application.SetCompatibleTextRenderingDefault(false);
        Application.Run(new FormCheatLoader());
    }
}