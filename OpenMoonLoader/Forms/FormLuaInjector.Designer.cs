partial class FormLuaInjector
{
    private System.ComponentModel.IContainer components = null;

    protected override void Dispose(bool disposing)
    {
        if (disposing && (components != null))
        {
            components.Dispose();
        }
        base.Dispose(disposing);
    }

    private void InitializeComponent()
    {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormLuaInjector));
            this.gunaControlBox2 = new Guna.UI.WinForms.GunaControlBox();
            this.gunaControlBox1 = new Guna.UI.WinForms.GunaControlBox();
            this.fastColoredTextBox1 = new FastColoredTextBoxNS.FastColoredTextBox();
            this.gunaButton4 = new Guna.UI.WinForms.GunaButton();
            this.gunaButton1 = new Guna.UI.WinForms.GunaButton();
            this.siticoneCheckBox1 = new ns1.SiticoneCheckBox();
            this.gunaButton2 = new Guna.UI.WinForms.GunaButton();
            this.gunaButton3 = new Guna.UI.WinForms.GunaButton();
            this.siticoneComboBox2 = new ns1.SiticoneComboBox();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.saveFileDialog1 = new System.Windows.Forms.SaveFileDialog();
            this.label2 = new System.Windows.Forms.Label();
            this.siticoneCheckBox2 = new ns1.SiticoneCheckBox();
            this.siticoneCheckBox3 = new ns1.SiticoneCheckBox();
            this.gunaButton5 = new Guna.UI.WinForms.GunaButton();
            this.siticoneCheckBox4 = new ns1.SiticoneCheckBox();
            this.siticoneCheckBox5 = new ns1.SiticoneCheckBox();
            this.siticoneCheckBox6 = new ns1.SiticoneCheckBox();
            this.siticoneCheckBox7 = new ns1.SiticoneCheckBox();
            this.siticoneMetroTrackBar1 = new ns1.SiticoneMetroTrackBar();
            this.siticoneCheckBox8 = new ns1.SiticoneCheckBox();
            this.siticoneMetroTrackBar2 = new ns1.SiticoneMetroTrackBar();
            this.gunaComboBox1 = new Guna.UI.WinForms.GunaComboBox();
            this.siticoneCheckBox9 = new ns1.SiticoneCheckBox();
            this.gunaButton6 = new Guna.UI.WinForms.GunaButton();
            ((System.ComponentModel.ISupportInitialize)(this.fastColoredTextBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // gunaControlBox2
            // 
            this.gunaControlBox2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.gunaControlBox2.Animated = true;
            this.gunaControlBox2.AnimationHoverSpeed = 0.07F;
            this.gunaControlBox2.AnimationSpeed = 0.03F;
            this.gunaControlBox2.ControlBoxType = Guna.UI.WinForms.FormControlBoxType.MinimizeBox;
            this.gunaControlBox2.IconColor = System.Drawing.Color.White;
            this.gunaControlBox2.IconSize = 15F;
            this.gunaControlBox2.Location = new System.Drawing.Point(836, 11);
            this.gunaControlBox2.Name = "gunaControlBox2";
            this.gunaControlBox2.OnHoverBackColor = System.Drawing.Color.DarkRed;
            this.gunaControlBox2.OnHoverIconColor = System.Drawing.Color.White;
            this.gunaControlBox2.OnPressedColor = System.Drawing.Color.Black;
            this.gunaControlBox2.Size = new System.Drawing.Size(45, 29);
            this.gunaControlBox2.TabIndex = 25;
            // 
            // gunaControlBox1
            // 
            this.gunaControlBox1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.gunaControlBox1.Animated = true;
            this.gunaControlBox1.AnimationHoverSpeed = 0.07F;
            this.gunaControlBox1.AnimationSpeed = 0.03F;
            this.gunaControlBox1.IconColor = System.Drawing.Color.White;
            this.gunaControlBox1.IconSize = 15F;
            this.gunaControlBox1.Location = new System.Drawing.Point(887, 11);
            this.gunaControlBox1.Name = "gunaControlBox1";
            this.gunaControlBox1.OnHoverBackColor = System.Drawing.Color.DarkRed;
            this.gunaControlBox1.OnHoverIconColor = System.Drawing.Color.White;
            this.gunaControlBox1.OnPressedColor = System.Drawing.Color.Black;
            this.gunaControlBox1.Size = new System.Drawing.Size(45, 29);
            this.gunaControlBox1.TabIndex = 24;
            // 
            // fastColoredTextBox1
            // 
            this.fastColoredTextBox1.AutoCompleteBracketsList = new char[] {
        '(',
        ')',
        '{',
        '}',
        '[',
        ']',
        '\"',
        '\"',
        '\'',
        '\''};
            this.fastColoredTextBox1.AutoIndentCharsPatterns = "^\\s*[\\w\\.]+(\\s\\w+)?\\s*(?<range>=)\\s*(?<range>[^;=]+);\r\n^\\s*(case|default)\\s*[^:]*" +
    "(?<range>:)\\s*(?<range>[^;]+);";
            this.fastColoredTextBox1.AutoScrollMinSize = new System.Drawing.Size(27, 17);
            this.fastColoredTextBox1.BackBrush = null;
            this.fastColoredTextBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(30)))), ((int)(((byte)(30)))), ((int)(((byte)(30)))));
            this.fastColoredTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.fastColoredTextBox1.CaretColor = System.Drawing.Color.White;
            this.fastColoredTextBox1.CharHeight = 17;
            this.fastColoredTextBox1.CharWidth = 8;
            this.fastColoredTextBox1.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.fastColoredTextBox1.DisabledColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(180)))), ((int)(((byte)(180)))), ((int)(((byte)(180)))));
            this.fastColoredTextBox1.FoldingIndicatorColor = System.Drawing.Color.FromArgb(((int)(((byte)(87)))), ((int)(((byte)(116)))), ((int)(((byte)(48)))));
            this.fastColoredTextBox1.Font = new System.Drawing.Font("Consolas", 11.25F);
            this.fastColoredTextBox1.ForeColor = System.Drawing.Color.Gainsboro;
            this.fastColoredTextBox1.IndentBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(30)))), ((int)(((byte)(30)))), ((int)(((byte)(30)))));
            this.fastColoredTextBox1.IsReplaceMode = false;
            this.fastColoredTextBox1.LineNumberColor = System.Drawing.Color.FromArgb(((int)(((byte)(43)))), ((int)(((byte)(145)))), ((int)(((byte)(175)))));
            this.fastColoredTextBox1.Location = new System.Drawing.Point(21, 49);
            this.fastColoredTextBox1.Name = "fastColoredTextBox1";
            this.fastColoredTextBox1.Paddings = new System.Windows.Forms.Padding(0);
            this.fastColoredTextBox1.SelectionColor = System.Drawing.Color.FromArgb(((int)(((byte)(60)))), ((int)(((byte)(38)))), ((int)(((byte)(79)))), ((int)(((byte)(120)))));
            this.fastColoredTextBox1.ServiceColors = ((FastColoredTextBoxNS.ServiceColors)(resources.GetObject("fastColoredTextBox1.ServiceColors")));
            this.fastColoredTextBox1.Size = new System.Drawing.Size(897, 495);
            this.fastColoredTextBox1.TabIndex = 30;
            this.fastColoredTextBox1.Zoom = 100;
            this.fastColoredTextBox1.TextChanged += new System.EventHandler<FastColoredTextBoxNS.TextChangedEventArgs>(this.fastColoredTextBox1_TextChanged);
            this.fastColoredTextBox1.DragDrop += new System.Windows.Forms.DragEventHandler(this.fastColoredTextBox1_DragDrop);
            this.fastColoredTextBox1.DragEnter += new System.Windows.Forms.DragEventHandler(this.fastColoredTextBox1_DragEnter);
            // 
            // gunaButton4
            // 
            this.gunaButton4.Animated = true;
            this.gunaButton4.AnimationHoverSpeed = 0.07F;
            this.gunaButton4.AnimationSpeed = 0.03F;
            this.gunaButton4.BackColor = System.Drawing.Color.Transparent;
            this.gunaButton4.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaButton4.BorderColor = System.Drawing.Color.Transparent;
            this.gunaButton4.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaButton4.FocusedColor = System.Drawing.Color.Empty;
            this.gunaButton4.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.gunaButton4.ForeColor = System.Drawing.Color.White;
            this.gunaButton4.Image = null;
            this.gunaButton4.ImageSize = new System.Drawing.Size(24, 24);
            this.gunaButton4.Location = new System.Drawing.Point(299, 605);
            this.gunaButton4.Name = "gunaButton4";
            this.gunaButton4.OnHoverBaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaButton4.OnHoverBorderColor = System.Drawing.Color.Black;
            this.gunaButton4.OnHoverForeColor = System.Drawing.Color.White;
            this.gunaButton4.OnHoverImage = null;
            this.gunaButton4.OnPressedColor = System.Drawing.Color.Black;
            this.gunaButton4.Size = new System.Drawing.Size(213, 42);
            this.gunaButton4.TabIndex = 38;
            this.gunaButton4.Text = "Open Console for printing";
            this.gunaButton4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.gunaButton4.Click += new System.EventHandler(this.gunaButton4_Click);
            // 
            // gunaButton1
            // 
            this.gunaButton1.Animated = true;
            this.gunaButton1.AnimationHoverSpeed = 0.07F;
            this.gunaButton1.AnimationSpeed = 0.03F;
            this.gunaButton1.BackColor = System.Drawing.Color.Transparent;
            this.gunaButton1.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaButton1.BorderColor = System.Drawing.Color.Transparent;
            this.gunaButton1.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaButton1.FocusedColor = System.Drawing.Color.Empty;
            this.gunaButton1.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.gunaButton1.ForeColor = System.Drawing.Color.White;
            this.gunaButton1.Image = null;
            this.gunaButton1.ImageSize = new System.Drawing.Size(24, 24);
            this.gunaButton1.Location = new System.Drawing.Point(767, 605);
            this.gunaButton1.Name = "gunaButton1";
            this.gunaButton1.OnHoverBaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaButton1.OnHoverBorderColor = System.Drawing.Color.Black;
            this.gunaButton1.OnHoverForeColor = System.Drawing.Color.White;
            this.gunaButton1.OnHoverImage = null;
            this.gunaButton1.OnPressedColor = System.Drawing.Color.Black;
            this.gunaButton1.Size = new System.Drawing.Size(151, 42);
            this.gunaButton1.TabIndex = 33;
            this.gunaButton1.Text = "Execute script";
            this.gunaButton1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.gunaButton1.Click += new System.EventHandler(this.gunaButton1_Click);
            // 
            // siticoneCheckBox1
            // 
            this.siticoneCheckBox1.AutoSize = true;
            this.siticoneCheckBox1.CheckedState.BorderColor = System.Drawing.Color.Red;
            this.siticoneCheckBox1.CheckedState.BorderRadius = 2;
            this.siticoneCheckBox1.CheckedState.BorderThickness = 0;
            this.siticoneCheckBox1.CheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.siticoneCheckBox1.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.siticoneCheckBox1.Location = new System.Drawing.Point(21, 655);
            this.siticoneCheckBox1.Name = "siticoneCheckBox1";
            this.siticoneCheckBox1.Size = new System.Drawing.Size(239, 17);
            this.siticoneCheckBox1.TabIndex = 37;
            this.siticoneCheckBox1.Text = "Prepend loaded scripts into current script";
            this.siticoneCheckBox1.UncheckedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox1.UncheckedState.BorderRadius = 2;
            this.siticoneCheckBox1.UncheckedState.BorderThickness = 0;
            this.siticoneCheckBox1.UncheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox1.UseVisualStyleBackColor = true;
            // 
            // gunaButton2
            // 
            this.gunaButton2.Animated = true;
            this.gunaButton2.AnimationHoverSpeed = 0.07F;
            this.gunaButton2.AnimationSpeed = 0.03F;
            this.gunaButton2.BackColor = System.Drawing.Color.Transparent;
            this.gunaButton2.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaButton2.BorderColor = System.Drawing.Color.Transparent;
            this.gunaButton2.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaButton2.FocusedColor = System.Drawing.Color.Empty;
            this.gunaButton2.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.gunaButton2.ForeColor = System.Drawing.Color.White;
            this.gunaButton2.Image = null;
            this.gunaButton2.ImageSize = new System.Drawing.Size(24, 24);
            this.gunaButton2.Location = new System.Drawing.Point(21, 605);
            this.gunaButton2.Name = "gunaButton2";
            this.gunaButton2.OnHoverBaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaButton2.OnHoverBorderColor = System.Drawing.Color.Black;
            this.gunaButton2.OnHoverForeColor = System.Drawing.Color.White;
            this.gunaButton2.OnHoverImage = null;
            this.gunaButton2.OnPressedColor = System.Drawing.Color.Black;
            this.gunaButton2.Size = new System.Drawing.Size(133, 42);
            this.gunaButton2.TabIndex = 34;
            this.gunaButton2.Text = "Load script";
            this.gunaButton2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.gunaButton2.Click += new System.EventHandler(this.gunaButton2_Click);
            // 
            // gunaButton3
            // 
            this.gunaButton3.Animated = true;
            this.gunaButton3.AnimationHoverSpeed = 0.07F;
            this.gunaButton3.AnimationSpeed = 0.03F;
            this.gunaButton3.BackColor = System.Drawing.Color.Transparent;
            this.gunaButton3.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaButton3.BorderColor = System.Drawing.Color.Transparent;
            this.gunaButton3.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaButton3.FocusedColor = System.Drawing.Color.Empty;
            this.gunaButton3.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.gunaButton3.ForeColor = System.Drawing.Color.White;
            this.gunaButton3.Image = null;
            this.gunaButton3.ImageSize = new System.Drawing.Size(24, 24);
            this.gunaButton3.Location = new System.Drawing.Point(160, 605);
            this.gunaButton3.Name = "gunaButton3";
            this.gunaButton3.OnHoverBaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaButton3.OnHoverBorderColor = System.Drawing.Color.Black;
            this.gunaButton3.OnHoverForeColor = System.Drawing.Color.White;
            this.gunaButton3.OnHoverImage = null;
            this.gunaButton3.OnPressedColor = System.Drawing.Color.Black;
            this.gunaButton3.Size = new System.Drawing.Size(133, 42);
            this.gunaButton3.TabIndex = 35;
            this.gunaButton3.Text = "Save script";
            this.gunaButton3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.gunaButton3.Click += new System.EventHandler(this.gunaButton3_Click);
            // 
            // siticoneComboBox2
            // 
            this.siticoneComboBox2.BackColor = System.Drawing.Color.Transparent;
            this.siticoneComboBox2.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.siticoneComboBox2.DropDownHeight = 250;
            this.siticoneComboBox2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.siticoneComboBox2.DropDownWidth = 897;
            this.siticoneComboBox2.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.siticoneComboBox2.FocusedColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.siticoneComboBox2.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.siticoneComboBox2.ForeColor = System.Drawing.Color.White;
            this.siticoneComboBox2.FormattingEnabled = true;
            this.siticoneComboBox2.HoveredState.Parent = this.siticoneComboBox2;
            this.siticoneComboBox2.IntegralHeight = false;
            this.siticoneComboBox2.ItemHeight = 30;
            this.siticoneComboBox2.ItemsAppearance.Parent = this.siticoneComboBox2;
            this.siticoneComboBox2.Location = new System.Drawing.Point(21, 557);
            this.siticoneComboBox2.Name = "siticoneComboBox2";
            this.siticoneComboBox2.ShadowDecoration.Parent = this.siticoneComboBox2;
            this.siticoneComboBox2.Size = new System.Drawing.Size(897, 36);
            this.siticoneComboBox2.TabIndex = 36;
            this.siticoneComboBox2.SelectedIndexChanged += new System.EventHandler(this.siticoneComboBox2_SelectedIndexChanged);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.Filter = "Lua script file (*.lua)|*.lua";
            this.openFileDialog1.Multiselect = true;
            this.openFileDialog1.Title = "Load script";
            // 
            // saveFileDialog1
            // 
            this.saveFileDialog1.Filter = "Lua script file (*.lua)|*.lua";
            this.saveFileDialog1.Title = "Save script";
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(651, 656);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(283, 17);
            this.label2.TabIndex = 40;
            this.label2.Text = "Copyright © 2023, GabryB03. All rights reserved.";
            this.label2.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // siticoneCheckBox2
            // 
            this.siticoneCheckBox2.AutoSize = true;
            this.siticoneCheckBox2.CheckedState.BorderColor = System.Drawing.Color.Red;
            this.siticoneCheckBox2.CheckedState.BorderRadius = 2;
            this.siticoneCheckBox2.CheckedState.BorderThickness = 0;
            this.siticoneCheckBox2.CheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.siticoneCheckBox2.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.siticoneCheckBox2.Location = new System.Drawing.Point(266, 655);
            this.siticoneCheckBox2.Name = "siticoneCheckBox2";
            this.siticoneCheckBox2.Size = new System.Drawing.Size(143, 17);
            this.siticoneCheckBox2.TabIndex = 41;
            this.siticoneCheckBox2.Text = "Auto Restart Dungeon";
            this.siticoneCheckBox2.UncheckedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox2.UncheckedState.BorderRadius = 2;
            this.siticoneCheckBox2.UncheckedState.BorderThickness = 0;
            this.siticoneCheckBox2.UncheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox2.UseVisualStyleBackColor = true;
            // 
            // siticoneCheckBox3
            // 
            this.siticoneCheckBox3.AutoSize = true;
            this.siticoneCheckBox3.CheckedState.BorderColor = System.Drawing.Color.Red;
            this.siticoneCheckBox3.CheckedState.BorderRadius = 2;
            this.siticoneCheckBox3.CheckedState.BorderThickness = 0;
            this.siticoneCheckBox3.CheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.siticoneCheckBox3.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.siticoneCheckBox3.Location = new System.Drawing.Point(415, 655);
            this.siticoneCheckBox3.Name = "siticoneCheckBox3";
            this.siticoneCheckBox3.Size = new System.Drawing.Size(78, 17);
            this.siticoneCheckBox3.TabIndex = 42;
            this.siticoneCheckBox3.Text = "Godmode";
            this.siticoneCheckBox3.UncheckedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox3.UncheckedState.BorderRadius = 2;
            this.siticoneCheckBox3.UncheckedState.BorderThickness = 0;
            this.siticoneCheckBox3.UncheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox3.UseVisualStyleBackColor = true;
            this.siticoneCheckBox3.CheckedChanged += new System.EventHandler(this.siticoneCheckBox3_CheckedChanged);
            // 
            // gunaButton5
            // 
            this.gunaButton5.Animated = true;
            this.gunaButton5.AnimationHoverSpeed = 0.07F;
            this.gunaButton5.AnimationSpeed = 0.03F;
            this.gunaButton5.BackColor = System.Drawing.Color.Transparent;
            this.gunaButton5.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaButton5.BorderColor = System.Drawing.Color.Transparent;
            this.gunaButton5.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaButton5.FocusedColor = System.Drawing.Color.Empty;
            this.gunaButton5.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.gunaButton5.ForeColor = System.Drawing.Color.White;
            this.gunaButton5.Image = null;
            this.gunaButton5.ImageSize = new System.Drawing.Size(24, 24);
            this.gunaButton5.Location = new System.Drawing.Point(518, 605);
            this.gunaButton5.Name = "gunaButton5";
            this.gunaButton5.OnHoverBaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaButton5.OnHoverBorderColor = System.Drawing.Color.Black;
            this.gunaButton5.OnHoverForeColor = System.Drawing.Color.White;
            this.gunaButton5.OnHoverImage = null;
            this.gunaButton5.OnPressedColor = System.Drawing.Color.Black;
            this.gunaButton5.Size = new System.Drawing.Size(153, 42);
            this.gunaButton5.TabIndex = 43;
            this.gunaButton5.Text = "Kill your character";
            this.gunaButton5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.gunaButton5.Click += new System.EventHandler(this.gunaButton5_Click);
            // 
            // siticoneCheckBox4
            // 
            this.siticoneCheckBox4.AutoSize = true;
            this.siticoneCheckBox4.CheckedState.BorderColor = System.Drawing.Color.Red;
            this.siticoneCheckBox4.CheckedState.BorderRadius = 2;
            this.siticoneCheckBox4.CheckedState.BorderThickness = 0;
            this.siticoneCheckBox4.CheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.siticoneCheckBox4.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.siticoneCheckBox4.Location = new System.Drawing.Point(499, 655);
            this.siticoneCheckBox4.Name = "siticoneCheckBox4";
            this.siticoneCheckBox4.Size = new System.Drawing.Size(98, 17);
            this.siticoneCheckBox4.TabIndex = 44;
            this.siticoneCheckBox4.Text = "Auto Attack Z";
            this.siticoneCheckBox4.UncheckedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox4.UncheckedState.BorderRadius = 2;
            this.siticoneCheckBox4.UncheckedState.BorderThickness = 0;
            this.siticoneCheckBox4.UncheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox4.UseVisualStyleBackColor = true;
            // 
            // siticoneCheckBox5
            // 
            this.siticoneCheckBox5.AutoSize = true;
            this.siticoneCheckBox5.CheckedState.BorderColor = System.Drawing.Color.Red;
            this.siticoneCheckBox5.CheckedState.BorderRadius = 2;
            this.siticoneCheckBox5.CheckedState.BorderThickness = 0;
            this.siticoneCheckBox5.CheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.siticoneCheckBox5.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.siticoneCheckBox5.Location = new System.Drawing.Point(125, 678);
            this.siticoneCheckBox5.Name = "siticoneCheckBox5";
            this.siticoneCheckBox5.Size = new System.Drawing.Size(101, 17);
            this.siticoneCheckBox5.TabIndex = 45;
            this.siticoneCheckBox5.Text = "All Elixirs Hack";
            this.siticoneCheckBox5.UncheckedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox5.UncheckedState.BorderRadius = 2;
            this.siticoneCheckBox5.UncheckedState.BorderThickness = 0;
            this.siticoneCheckBox5.UncheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox5.UseVisualStyleBackColor = true;
            this.siticoneCheckBox5.CheckedChanged += new System.EventHandler(this.siticoneCheckBox5_CheckedChanged);
            // 
            // siticoneCheckBox6
            // 
            this.siticoneCheckBox6.AutoSize = true;
            this.siticoneCheckBox6.CheckedState.BorderColor = System.Drawing.Color.Red;
            this.siticoneCheckBox6.CheckedState.BorderRadius = 2;
            this.siticoneCheckBox6.CheckedState.BorderThickness = 0;
            this.siticoneCheckBox6.CheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.siticoneCheckBox6.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.siticoneCheckBox6.Location = new System.Drawing.Point(21, 678);
            this.siticoneCheckBox6.Name = "siticoneCheckBox6";
            this.siticoneCheckBox6.Size = new System.Drawing.Size(98, 17);
            this.siticoneCheckBox6.TabIndex = 46;
            this.siticoneCheckBox6.Text = "Auto Attack X";
            this.siticoneCheckBox6.UncheckedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox6.UncheckedState.BorderRadius = 2;
            this.siticoneCheckBox6.UncheckedState.BorderThickness = 0;
            this.siticoneCheckBox6.UncheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox6.UseVisualStyleBackColor = true;
            // 
            // siticoneCheckBox7
            // 
            this.siticoneCheckBox7.AutoSize = true;
            this.siticoneCheckBox7.CheckedState.BorderColor = System.Drawing.Color.Red;
            this.siticoneCheckBox7.CheckedState.BorderRadius = 2;
            this.siticoneCheckBox7.CheckedState.BorderThickness = 0;
            this.siticoneCheckBox7.CheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.siticoneCheckBox7.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.siticoneCheckBox7.Location = new System.Drawing.Point(232, 678);
            this.siticoneCheckBox7.Name = "siticoneCheckBox7";
            this.siticoneCheckBox7.Size = new System.Drawing.Size(122, 17);
            this.siticoneCheckBox7.TabIndex = 47;
            this.siticoneCheckBox7.Text = "Attack Speed Hack";
            this.siticoneCheckBox7.UncheckedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox7.UncheckedState.BorderRadius = 2;
            this.siticoneCheckBox7.UncheckedState.BorderThickness = 0;
            this.siticoneCheckBox7.UncheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox7.UseVisualStyleBackColor = true;
            this.siticoneCheckBox7.CheckedChanged += new System.EventHandler(this.siticoneCheckBox7_CheckedChanged);
            // 
            // siticoneMetroTrackBar1
            // 
            this.siticoneMetroTrackBar1.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(92)))), ((int)(((byte)(21)))), ((int)(((byte)(21)))));
            this.siticoneMetroTrackBar1.HoveredState.Parent = this.siticoneMetroTrackBar1;
            this.siticoneMetroTrackBar1.Location = new System.Drawing.Point(360, 676);
            this.siticoneMetroTrackBar1.Maximum = 10;
            this.siticoneMetroTrackBar1.Minimum = 1;
            this.siticoneMetroTrackBar1.Name = "siticoneMetroTrackBar1";
            this.siticoneMetroTrackBar1.Size = new System.Drawing.Size(237, 23);
            this.siticoneMetroTrackBar1.TabIndex = 48;
            this.siticoneMetroTrackBar1.ThumbColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.siticoneMetroTrackBar1.Value = 1;
            // 
            // siticoneCheckBox8
            // 
            this.siticoneCheckBox8.AutoSize = true;
            this.siticoneCheckBox8.CheckedState.BorderColor = System.Drawing.Color.Red;
            this.siticoneCheckBox8.CheckedState.BorderRadius = 2;
            this.siticoneCheckBox8.CheckedState.BorderThickness = 0;
            this.siticoneCheckBox8.CheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.siticoneCheckBox8.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.siticoneCheckBox8.Location = new System.Drawing.Point(21, 703);
            this.siticoneCheckBox8.Name = "siticoneCheckBox8";
            this.siticoneCheckBox8.Size = new System.Drawing.Size(76, 17);
            this.siticoneCheckBox8.TabIndex = 49;
            this.siticoneCheckBox8.Text = "Auto Skill";
            this.siticoneCheckBox8.UncheckedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox8.UncheckedState.BorderRadius = 2;
            this.siticoneCheckBox8.UncheckedState.BorderThickness = 0;
            this.siticoneCheckBox8.UncheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox8.UseVisualStyleBackColor = true;
            // 
            // siticoneMetroTrackBar2
            // 
            this.siticoneMetroTrackBar2.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(92)))), ((int)(((byte)(21)))), ((int)(((byte)(21)))));
            this.siticoneMetroTrackBar2.HoveredState.Parent = this.siticoneMetroTrackBar2;
            this.siticoneMetroTrackBar2.Location = new System.Drawing.Point(302, 700);
            this.siticoneMetroTrackBar2.Maximum = 10;
            this.siticoneMetroTrackBar2.Minimum = 1;
            this.siticoneMetroTrackBar2.Name = "siticoneMetroTrackBar2";
            this.siticoneMetroTrackBar2.Size = new System.Drawing.Size(237, 23);
            this.siticoneMetroTrackBar2.TabIndex = 50;
            this.siticoneMetroTrackBar2.ThumbColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.siticoneMetroTrackBar2.Value = 1;
            // 
            // gunaComboBox1
            // 
            this.gunaComboBox1.BackColor = System.Drawing.Color.Transparent;
            this.gunaComboBox1.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.gunaComboBox1.BorderColor = System.Drawing.Color.Silver;
            this.gunaComboBox1.BorderSize = 1;
            this.gunaComboBox1.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.gunaComboBox1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.gunaComboBox1.FocusedColor = System.Drawing.Color.Empty;
            this.gunaComboBox1.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.gunaComboBox1.ForeColor = System.Drawing.SystemColors.ControlDark;
            this.gunaComboBox1.FormattingEnabled = true;
            this.gunaComboBox1.Items.AddRange(new object[] {
            "A",
            "S",
            "D",
            "C",
            "F",
            "Q",
            "W",
            "E",
            "R",
            "T"});
            this.gunaComboBox1.Location = new System.Drawing.Point(103, 699);
            this.gunaComboBox1.Name = "gunaComboBox1";
            this.gunaComboBox1.OnHoverItemBaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaComboBox1.OnHoverItemForeColor = System.Drawing.SystemColors.ControlDark;
            this.gunaComboBox1.Size = new System.Drawing.Size(190, 26);
            this.gunaComboBox1.TabIndex = 51;
            // 
            // siticoneCheckBox9
            // 
            this.siticoneCheckBox9.AutoSize = true;
            this.siticoneCheckBox9.CheckedState.BorderColor = System.Drawing.Color.Red;
            this.siticoneCheckBox9.CheckedState.BorderRadius = 2;
            this.siticoneCheckBox9.CheckedState.BorderThickness = 0;
            this.siticoneCheckBox9.CheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.siticoneCheckBox9.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.siticoneCheckBox9.Location = new System.Drawing.Point(665, 678);
            this.siticoneCheckBox9.Name = "siticoneCheckBox9";
            this.siticoneCheckBox9.Size = new System.Drawing.Size(106, 17);
            this.siticoneCheckBox9.TabIndex = 52;
            this.siticoneCheckBox9.Text = "Dump Lua Files";
            this.siticoneCheckBox9.UncheckedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox9.UncheckedState.BorderRadius = 2;
            this.siticoneCheckBox9.UncheckedState.BorderThickness = 0;
            this.siticoneCheckBox9.UncheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox9.UseVisualStyleBackColor = true;
            this.siticoneCheckBox9.CheckedChanged += new System.EventHandler(this.siticoneCheckBox9_CheckedChanged);
            // 
            // gunaButton6
            // 
            this.gunaButton6.Animated = true;
            this.gunaButton6.AnimationHoverSpeed = 0.07F;
            this.gunaButton6.AnimationSpeed = 0.03F;
            this.gunaButton6.BackColor = System.Drawing.Color.Transparent;
            this.gunaButton6.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaButton6.BorderColor = System.Drawing.Color.Transparent;
            this.gunaButton6.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaButton6.FocusedColor = System.Drawing.Color.Empty;
            this.gunaButton6.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.gunaButton6.ForeColor = System.Drawing.Color.White;
            this.gunaButton6.Image = null;
            this.gunaButton6.ImageSize = new System.Drawing.Size(24, 24);
            this.gunaButton6.Location = new System.Drawing.Point(665, 703);
            this.gunaButton6.Name = "gunaButton6";
            this.gunaButton6.OnHoverBaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaButton6.OnHoverBorderColor = System.Drawing.Color.Black;
            this.gunaButton6.OnHoverForeColor = System.Drawing.Color.White;
            this.gunaButton6.OnHoverImage = null;
            this.gunaButton6.OnPressedColor = System.Drawing.Color.Black;
            this.gunaButton6.Size = new System.Drawing.Size(253, 28);
            this.gunaButton6.TabIndex = 53;
            this.gunaButton6.Text = "Open folder for dumped Lua files";
            this.gunaButton6.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.gunaButton6.Click += new System.EventHandler(this.gunaButton6_Click);
            // 
            // FormLuaInjector
            // 
            this.AccentColor = System.Drawing.Color.Red;
            this.AllowResize = false;
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(943, 743);
            this.Controls.Add(this.gunaButton6);
            this.Controls.Add(this.siticoneCheckBox9);
            this.Controls.Add(this.gunaComboBox1);
            this.Controls.Add(this.siticoneMetroTrackBar2);
            this.Controls.Add(this.siticoneCheckBox8);
            this.Controls.Add(this.siticoneMetroTrackBar1);
            this.Controls.Add(this.siticoneCheckBox7);
            this.Controls.Add(this.siticoneCheckBox6);
            this.Controls.Add(this.siticoneCheckBox5);
            this.Controls.Add(this.siticoneCheckBox4);
            this.Controls.Add(this.gunaButton5);
            this.Controls.Add(this.siticoneCheckBox3);
            this.Controls.Add(this.siticoneCheckBox2);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.gunaButton4);
            this.Controls.Add(this.gunaButton1);
            this.Controls.Add(this.siticoneCheckBox1);
            this.Controls.Add(this.gunaButton2);
            this.Controls.Add(this.gunaButton3);
            this.Controls.Add(this.siticoneComboBox2);
            this.Controls.Add(this.fastColoredTextBox1);
            this.Controls.Add(this.gunaControlBox2);
            this.Controls.Add(this.gunaControlBox1);
            this.ForeColor = System.Drawing.SystemColors.ControlDark;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.Name = "FormLuaInjector";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.State = MetroSuite.MetroForm.FormState.Custom;
            this.Style = MetroSuite.Design.Style.Dark;
            this.Text = "OpenMoonLoader | Made by https://github.com/GabryB03/";
            ((System.ComponentModel.ISupportInitialize)(this.fastColoredTextBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

    }

    private Guna.UI.WinForms.GunaControlBox gunaControlBox2;
    private Guna.UI.WinForms.GunaControlBox gunaControlBox1;
    private FastColoredTextBoxNS.FastColoredTextBox fastColoredTextBox1;
    private Guna.UI.WinForms.GunaButton gunaButton4;
    private Guna.UI.WinForms.GunaButton gunaButton1;
    private ns1.SiticoneCheckBox siticoneCheckBox1;
    private Guna.UI.WinForms.GunaButton gunaButton2;
    private Guna.UI.WinForms.GunaButton gunaButton3;
    private ns1.SiticoneComboBox siticoneComboBox2;
    private System.Windows.Forms.OpenFileDialog openFileDialog1;
    private System.Windows.Forms.SaveFileDialog saveFileDialog1;
    private System.Windows.Forms.Label label2;
    private ns1.SiticoneCheckBox siticoneCheckBox2;
    private ns1.SiticoneCheckBox siticoneCheckBox3;
    private Guna.UI.WinForms.GunaButton gunaButton5;
    private ns1.SiticoneCheckBox siticoneCheckBox4;
    private ns1.SiticoneCheckBox siticoneCheckBox5;
    private ns1.SiticoneCheckBox siticoneCheckBox6;
    private ns1.SiticoneCheckBox siticoneCheckBox7;
    private ns1.SiticoneMetroTrackBar siticoneMetroTrackBar1;
    private ns1.SiticoneCheckBox siticoneCheckBox8;
    private ns1.SiticoneMetroTrackBar siticoneMetroTrackBar2;
    private Guna.UI.WinForms.GunaComboBox gunaComboBox1;
    private ns1.SiticoneCheckBox siticoneCheckBox9;
    private Guna.UI.WinForms.GunaButton gunaButton6;
}