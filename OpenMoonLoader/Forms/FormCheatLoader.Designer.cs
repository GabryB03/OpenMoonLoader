partial class FormCheatLoader
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormCheatLoader));
            this.gunaControlBox2 = new Guna.UI.WinForms.GunaControlBox();
            this.gunaControlBox1 = new Guna.UI.WinForms.GunaControlBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.siticoneCheckBox7 = new ns1.SiticoneCheckBox();
            this.gunaButton6 = new Guna.UI.WinForms.GunaButton();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
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
            this.gunaControlBox2.Location = new System.Drawing.Point(462, 11);
            this.gunaControlBox2.Name = "gunaControlBox2";
            this.gunaControlBox2.OnHoverBackColor = System.Drawing.Color.DarkRed;
            this.gunaControlBox2.OnHoverIconColor = System.Drawing.Color.White;
            this.gunaControlBox2.OnPressedColor = System.Drawing.Color.Black;
            this.gunaControlBox2.Size = new System.Drawing.Size(45, 29);
            this.gunaControlBox2.TabIndex = 3;
            // 
            // gunaControlBox1
            // 
            this.gunaControlBox1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.gunaControlBox1.Animated = true;
            this.gunaControlBox1.AnimationHoverSpeed = 0.07F;
            this.gunaControlBox1.AnimationSpeed = 0.03F;
            this.gunaControlBox1.IconColor = System.Drawing.Color.White;
            this.gunaControlBox1.IconSize = 15F;
            this.gunaControlBox1.Location = new System.Drawing.Point(513, 11);
            this.gunaControlBox1.Name = "gunaControlBox1";
            this.gunaControlBox1.OnHoverBackColor = System.Drawing.Color.DarkRed;
            this.gunaControlBox1.OnHoverIconColor = System.Drawing.Color.White;
            this.gunaControlBox1.OnPressedColor = System.Drawing.Color.Black;
            this.gunaControlBox1.Size = new System.Drawing.Size(45, 29);
            this.gunaControlBox1.TabIndex = 2;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(96, 42);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(368, 260);
            this.pictureBox1.TabIndex = 4;
            this.pictureBox1.TabStop = false;
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(144, 314);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(291, 17);
            this.label1.TabIndex = 5;
            this.label1.Text = "Waiting for the launcher...";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(103, 392);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(371, 17);
            this.label2.TabIndex = 6;
            this.label2.Text = "Copyright © 2023, GabryB03. All rights reserved.";
            this.label2.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // timer1
            // 
            this.timer1.Interval = 1;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // siticoneCheckBox7
            // 
            this.siticoneCheckBox7.AutoSize = true;
            this.siticoneCheckBox7.CheckedState.BorderColor = System.Drawing.Color.Red;
            this.siticoneCheckBox7.CheckedState.BorderRadius = 2;
            this.siticoneCheckBox7.CheckedState.BorderThickness = 0;
            this.siticoneCheckBox7.CheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.siticoneCheckBox7.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.siticoneCheckBox7.Location = new System.Drawing.Point(233, 337);
            this.siticoneCheckBox7.Name = "siticoneCheckBox7";
            this.siticoneCheckBox7.Size = new System.Drawing.Size(106, 17);
            this.siticoneCheckBox7.TabIndex = 48;
            this.siticoneCheckBox7.Text = "Dump Lua Files";
            this.siticoneCheckBox7.UncheckedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox7.UncheckedState.BorderRadius = 2;
            this.siticoneCheckBox7.UncheckedState.BorderThickness = 0;
            this.siticoneCheckBox7.UncheckedState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(125)))), ((int)(((byte)(137)))), ((int)(((byte)(149)))));
            this.siticoneCheckBox7.UseVisualStyleBackColor = true;
            this.siticoneCheckBox7.CheckedChanged += new System.EventHandler(this.siticoneCheckBox7_CheckedChanged);
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
            this.gunaButton6.Location = new System.Drawing.Point(161, 360);
            this.gunaButton6.Name = "gunaButton6";
            this.gunaButton6.OnHoverBaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(184)))), ((int)(((byte)(44)))), ((int)(((byte)(44)))));
            this.gunaButton6.OnHoverBorderColor = System.Drawing.Color.Black;
            this.gunaButton6.OnHoverForeColor = System.Drawing.Color.White;
            this.gunaButton6.OnHoverImage = null;
            this.gunaButton6.OnPressedColor = System.Drawing.Color.Black;
            this.gunaButton6.Size = new System.Drawing.Size(253, 28);
            this.gunaButton6.TabIndex = 54;
            this.gunaButton6.Text = "Support the project on GitHub";
            this.gunaButton6.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.gunaButton6.Click += new System.EventHandler(this.gunaButton6_Click);
            // 
            // FormCheatLoader
            // 
            this.AccentColor = System.Drawing.Color.Red;
            this.AllowResize = false;
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(569, 420);
            this.Controls.Add(this.gunaButton6);
            this.Controls.Add(this.siticoneCheckBox7);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.gunaControlBox2);
            this.Controls.Add(this.gunaControlBox1);
            this.ForeColor = System.Drawing.SystemColors.ControlDark;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FormCheatLoader";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.State = MetroSuite.MetroForm.FormState.Custom;
            this.Style = MetroSuite.Design.Style.Dark;
            this.Text = "OpenMoonLoader | Made by https://github.com/GabryB03/";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormCheatLoader_FormClosing);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

    }

    private Guna.UI.WinForms.GunaControlBox gunaControlBox2;
    private Guna.UI.WinForms.GunaControlBox gunaControlBox1;
    private System.Windows.Forms.PictureBox pictureBox1;
    private System.Windows.Forms.Label label1;
    private System.Windows.Forms.Label label2;
    private System.Windows.Forms.Timer timer1;
    private ns1.SiticoneCheckBox siticoneCheckBox7;
    private Guna.UI.WinForms.GunaButton gunaButton6;
}