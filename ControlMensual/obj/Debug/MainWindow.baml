   M S B A M L   `   `   `  ????I  EControlMensual, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:ControlMensualControlMensual  5   	   q=clr-namespace:ControlMensual.Ganancias_DBDataSetTableAdapters/ControlMensual.Ganancias_DBDataSetTableAdapters  5   	       ControlMensual.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:ControlMensual     5   	   j Ganancias_DBDataSetTableAdapters=clr-namespace:ControlMensual.Ganancias_DBDataSetTableAdapters     5   	     ? Title$  
MainWindow??5	   	   $	??450??6   $	??800??6)   .??5
      ? .+?5   
   ?? -   5         ??Name$ Monto??5      $
??Left=?6!   $??23??6<   $??
230,51,0,0q?6H    ?? TextWrapping$
 Wrap=?6\   $??
??6p   $	??Top=?6}   $	??218??6?   6?   ?? 5   
   -   5         ??Name$ label??5      $??Monto:??6   $
??Left=?60   $??
230,25,0,0q?6K   $	??Top=?6_   ?? 5   
   -   5        $ Detalle??5      $
??Left=?6#   $??33??6>   $??
18,105,0,0q?6J   $
 Wrap=?6^   $??
??6r   $	??Top=?6   $	??430??6?   6?   ?? 5   
   -   5        $ 
label_Copy??5      $??Detalle:??6$   $
??Left=?67   $??	18,79,0,0q?6R   $	??Top=?6e    J? RenderTransformOrigin$ 
0.74,0.692&?6}   ?? 5   
   -   5        $ label_Copy1??5      $??Fecha:??6%   $
??Left=?66   $??	18,25,0,0q?6Q   $	??Top=?6d   $ 0.767,0.615&?6|   ?? 5   
   -   5         ??Name$ button??5      $??Agregar??6!   $
??Left=?63   $??485,118,0,0q?6N   $	??Top=?6c   $??75??6{   6?   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid??5      $
??Left=?6%   $	??123??6@   $??
18,227,0,0q?6M   $	??Top=?6a   $	??749??6y      RowHeaderWidth$	 100Q?6?      MinColumnWidth$ 50Q?6?   	   CanUserSortColumns	 .  
   CanUserResizeColumns
 .     CanUserReorderColumns .     HeadersVisibility$ Column=?61  ?? 5   
   -   5        $ button_Copy??5      $??Buscar??6&   $
??Left=?67   $??692,195,0,0q?6R   $	??Top=?6g   $??75??6   6?   ?? 5   
   -	   5        $ label_Copy3??5      $??Fecha inicio:??6%   $
??Left=?6=   $??
20,167,0,0q?6X   $	??Top=?6l   ?? 5   
   -
   5        $ label_Copy4??5      $??
Fecha fin:??6%   $
??Left=?6:   $??166,167,0,0q?6U   $	??Top=?6j   ?? 5   
   -   5        $ textBox??5      $
??Left=?6#   $??23??6>   $??500,386,0,0q?6J   $
 Wrap=?6_   $	??Top=?6s   $	??120??6?   6?   ?? 5   
   -   5        $ label_Copy2??5      $??TOTAL:??6%   $
??Left=?66   $??500,355,0,0q?6Q   $	??Top=?6f   ?? 5   
   -   5        $ textBox_Copy??5      $
??Left=?6(   $??23??6C   $??645,386,0,0q?6O   $
 Wrap=?6d   $	??Top=?6x   $	??120??6?   ?? 5   
   -   5        $ label_Copy5??5      $??	GANANCIA:??6%   $
??Left=?69   $??645,355,0,0q?6T   $	??Top=?6i   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ fecha??5      $
??Left=?6$   $??	18,50,0,0q?6?   $	??Top=?6R   $??29??6j   $	??178??6v     5   
   -   5        $ 
datePicker??5      $
??Left=?6)   $??
20,191,0,0q?6D   $	??Top=?6X   $	??116??6p     5   
   -   5        $ datePicker1??5      $
??Left=?6*   $??161,191,0,0q?6E   $	??Top=?6Z   $	??117??6r   ?? 5   
   -   5        $ Porcentaje_Ganancia??5      $
??Left=?6/   $??196,386,0,0q?6J   $
 Wrap=?6_   $?? ??6s   $	??Top=?6{   $	??120??6?   6?   ?? 5   
   -   5        $ label_Copy6??5      $??TOTAL:??6%   $
??Left=?66   $??500,355,0,0q?6Q   $	??Top=?6f   ?? 5   
   -   5        $ label_Copy7??5      $??Procentaje ganancia:??6%   $
??Left=?6D   $??197,355,0,0q?6_   $	??Top=?6t   $ -6.398,0.656&?6?   ?? 5   
   -   5        $ AddPorGanancia??5      $??Agregar ganancia??6)   $
??Left=?6D   $??
78,383,0,0q?6_   $	??Top=?6s   6?   5!      5"      