   M S B A M L   `   `   `  ����J  FImageServiceGui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ImageServiceGui.VMImageServiceGui.VM  5   	       ImageServiceGui.LogWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ImageServiceGui.VM     5   	     � 	Resources  5      "  ImageServiceGui.VM.LogsColor   	LogsColor 	 Title �� Property �� Value��%�   &	        &	        5	   
   6   �� 5
   
   .�5      ��  � ��$ 25(�63   �� 5       � ��$ 	ExtraBold"�65   �� 5       � �� 65   �� *
ColorTitle+5      5      .��5      ]� $
��Auto=�6   $��Hidden=�6@   $��	-1,0,0,10q�6t   .+�5   
   �� $
��Logs��6   $��Center=�6   #��[ 6<    J� RenderTransformOrigin$ 2.634,0.921&�6[   $��Narkisim)�6   $	��Top=�6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$
 logs��5         
IsReadOnly .    AutoGenerateColumns .     CanUserAddRows .  ��5      �� *VM_LogsList+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$
	 Type��6%   
   Width5  /System.Windows.Controls.DataGridLengthConverter$

 Auto 63      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 6R   ��  �� Path$ Status�   ElementStyle 5      �� 5       �� 
TargetType" ��6    .�5      ��  � �� 6;   �� $ Status� �� 	Converter# [  6�   5      5        5      $	 Message��6%   $
 * 66    .  6R   �� $ Message�5      5       5!      