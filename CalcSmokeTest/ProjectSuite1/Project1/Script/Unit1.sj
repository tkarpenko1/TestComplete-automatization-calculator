function Test1()
{
  var wnd;
  var MSTaskListWClass;
  var wndChrome_WidgetWin_1;
  var wndNotepad;
  var edit;
  wnd = Aliases.Sys;
  MSTaskListWClass = wnd.explorer.wndShell_TrayWnd.ReBarWindow32.MSTaskSwWClass.MSTaskListWClass;
  MSTaskListWClass.Click(459, 36);
  wndChrome_WidgetWin_1 = wnd.chrome.wndChrome_WidgetWin_1;
  wndChrome_WidgetWin_1.MouseWheel(-3);
  wndChrome_WidgetWin_1.MouseWheel(1);
  MSTaskListWClass.Click(650, 24);
  wndNotepad = wnd.notepad.wndNotepad;
  wndNotepad.Drag(379, 12, -72, -310);
  wndNotepad.Drag(404, 9, 184, 198);
  edit = wndNotepad.Edit;
  edit.Click(40, 18);
  edit.Keys("Test String[Enter]Second String");
  wndNotepad.MainMenu.Click("Edit|Select All");
  wndNotepad.MainMenu.Click("Edit|Delete");
  wndNotepad.MainMenu.Click("Edit|Undo");
  edit.ClickR(64, 34);
  edit.PopupMenu.Click("Copy");
}