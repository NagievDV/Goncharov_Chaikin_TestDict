   M S B A M L   `   `   `  ����C  ?TestDict, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:TestDictTestDict  5          TestDict.MainPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:TestDict     5      -   5          N� Title$  MainPage��5	       N� 
Background
 �����.��5      �  � RowDefinitions 5   
   �� 5      6   �� 5      $��50 �6   6*   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 
dgridTerms��5      $��0��6'      
IsReadOnly .    AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Термин��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 6N   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 65   �� *Term+6N     5      $ Описание��6%   $	 350 6W   	 67   �� *Description+
   ElementStyle
 5      �� 5       �� 
TargetType" ��6    .�5      ��  �� Property � �� �� Value$
 Wrap=�6=   6L   5      5        5      $ Источник��6%   $	 300 6R   	 67   �� *Source+6R   5      �� 5   
   -   5        $��1��5      $��Delete��6   $��Center=�60   $��3q�6K   $��80��6_   $��25��6j   $��60,0,0,0q�6v   $
��Left=�6�   $��Arial)�6�   $
��Bold"�6�   ���	#FF770000���	#FF5400006�   �� 5    
   -   5        $��1��5       $	��Add��6   $��Center=�6,   $��3q�6G   $��80��6[   $��25��6f   $��0,0,60,0q�6r   $��Right=�6�   $��Arial)�6�   $
��Bold"�6�   ���	#FF2F771B���	#FF005D0A6�   5"      5'      