   M S B A M L   `   `   `  ����N  JLouisianaManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullc6clr-namespace:LouisianaManagement.UserControlLouisiana(LouisianaManagement.UserControlLouisiana  5      ;    5LouisianaManagement.UserControlLouisiana.ControlBarUC   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Hlocal6clr-namespace:LouisianaManagement.UserControlLouisiana     5      U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      -   5          >�Name$  ucControlBar��5	      .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5         	EventName$ MouseLeftButtonDown��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5   
   6  0System.Windows.Interactivity.InvokeCommandAction     Command 6    �� *MouseMoveWindowCommand+   CommandParameter 5      ��  �� ElementName$ ucControlBar��5      .��5      � .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  ���#F4511B   Mode$ PrimaryLight=�68   .��5      ]� .+�5      �� $��Right=�6   
������  �� Orientation$ 
Horizontal=�6M   	 � 	Resources	 5      
 �� 
TargetType �� Property �� Value��%W   '��       �� 5      "
 ��6    .�5      ��  � ��$ 50��66   6C   5      5      .+�5      ��  � ToolTip$	 Min��5        c� OverflowMode$ AsNeeded=�6+   
������ 
���   �
������ ��5      �� *MinimizeWindowCommand+��5      �� $ ucControlBar��.��5!      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�66   5"      �� 5#      $	 Max��5%      $ AsNeeded=�6+   
������ 
���   �
������ ��5#      �� *MaximizeWindowCommand+��5$      �� $ ucControlBar��.��5&        $ WindowMaximize=�66   5'      �� 5(      $ Close��5*      $ AsNeeded=�6)   
������ 
���   �
������ ��5(      �� *CloseWindowCommand+��5)      �� $ ucControlBar��.��5+        $ WindowClose=�62   5,      5-      �� 5/      $
��Left=�6   $ 
Horizontal=�63   .+�50      d�  '  #MaterialDesignHamburgerToggleButton#���   6$   �� 51      $��Center=�6    $��16 0 0 0q�6;   ��6M   �� *Tag+$ ucControlBar��6}   52      53      54      55      56      