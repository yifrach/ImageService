   M S B A M L   `   `   `  ����J  FImageServiceGui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ImageServiceGuiImageServiceGui  5   	   $    ImageServiceGui.SettingsWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:ImageServiceGui     5   	     � 	Resources  5         
TextDesign �� Property �� Value 	 Title��%  &	        &	 d     �� 5	   
   .�5
      ��  � ��$ 17(�63   �� 5       � ��$
 Bold"�65   5      �� 5   
   .�5      ��  � ��$ 25(�63   �� 5       � ��$
 Bold"�65   �� 5       � �� 65   �� *
ColorTitle+5      5      .��5      �� .+�5   
   �� 
�������6.   �� 5   
   -   5         ��Name$ Settings��5      $��Center=�6"   #��[ 6?   $	��Top=�6_   .��6w   
Settings6�   � 5       � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $��* �6     � ColumnDefinitions 5      �� 5      $	��150 �6#   �� 5       $��* �6#   .+�5#      �� -   5         ��Name$ 	textBlock��5#   &   $��0��6   $
��Left=�6:   $��Output Directory:��6V   #��[  6o   $	��Top=�6�   �� 5$      $��0��6   $��1��6%   #��[  65   ��6Y   �� *VM_OutputDir+6y   �� 5%      -   5        $ 
textBlock1��5%   5   $��1��6   $��0��6%   $
��Left=�6I   $
��Wrap=�6e   $��Source Name:��6y   #��[  6�   $	��Top=�6�   �� 5&      $��1��6   $��1��6%   #��[  65   ��6Y   �� *
VM_LogName+6w   �� 5'      -   5        $ 
textBlock2��5'   5   $��2��6   $��0��6%   $
��Left=�6I   $
��Wrap=�6d   $��	Log Name:��6x   #��[  6�   $	��Top=�6�   �� 5(      $��2��6   $��1��6%   #��[  65   ��6Y   �� *VM_SourceName+6z   �� 5)      -   5        $ 
textBlock3��5)   5   $��3��6   $��0��6%   $
��Left=�6I   $
��Wrap=�6e   $��Thumbnail Size:��6y   #��[  6�   $	��Top=�6�   �� 5*      $��3��6   $��1��6%   #��[  65   ��6Y   �� *VM_ThumbnailSize+6}   5+      �� 5,   
   -   5         ��Name$ removeButtton��5,      $��0,15,0,0q�6I   $��25��6[   $��Stretch=�6g   ��6(   �� *CloseHandler+.��6�   Remove6�   �� 5-   
   $
��Auto��6   ��6    �� *VM_Handlers+ �� SelectedItem 6D   �� *
Selected+5.      5/      