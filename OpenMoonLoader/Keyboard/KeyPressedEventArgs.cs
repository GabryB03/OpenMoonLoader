using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace InterceptionSharp
{
    public class KeyPressedEventArgs : EventArgs
    {
        public Keys Key { get; set; }
        public KeyState State { get; set; }
        public bool Handled { get; set; }
    }
}