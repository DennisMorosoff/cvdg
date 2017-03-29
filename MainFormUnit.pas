unit MainFormUnit;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Actions,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.WinXCtrls,
  Vcl.StdCtrls,
  Vcl.CategoryButtons,
  Vcl.Buttons,
  Vcl.ImgList,
  Vcl.Imaging.PngImage,
  Vcl.ComCtrls,
  Vcl.ActnList, Vcl.StdActns, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Menus;

type
  TMainForm = class(TForm)
    pnlToolbar: TPanel;
    pnlSettings: TPanel;
    SV: TSplitView;
    catMenuItems: TCategoryButtons;
    lstLog: TListBox;
    imlIcons: TImageList;
    imgMenu: TImage;
    MainActionList: TActionList;
    actHome: TAction;
    actWind: TAction;
    actDesign: TAction;
    lblTitle: TLabel;
    actOptim: TAction;
    actModel: TAction;
    actAnalyse: TAction;
    actHelp: TAction;
    StatusBar1: TStatusBar;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    HelpContents1: THelpContents;
    HelpTopicSearch1: THelpTopicSearch;
    HelpOnHelp1: THelpOnHelp;
    HelpContextAction1: THelpContextAction;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    procedure FormCreate(Sender: TObject);
    procedure SVClosed(Sender: TObject);
    procedure SVClosing(Sender: TObject);
    procedure SVOpened(Sender: TObject);
    procedure SVOpening(Sender: TObject);
    procedure catMenuItemsCategoryCollapase(Sender: TObject;
      const Category: TButtonCategory);
    procedure imgMenuClick(Sender: TObject);
    procedure actHomeExecute(Sender: TObject);
    procedure actWindExecute(Sender: TObject);
    procedure actDesignExecute(Sender: TObject);
    procedure catMenuItemsSelectedItemChange(Sender: TObject;
      const Button: TButtonItem);
    procedure actOptimExecute(Sender: TObject);
    procedure actModelExecute(Sender: TObject);
    procedure actAnalyseExecute(Sender: TObject);
    procedure actHelpExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure Log(const Msg: string);
    procedure WndProc(var Message: TMessage);
  public
  end;

var
  MainForm: TMainForm;

implementation

uses
  Vcl.Themes, PreferencesUnit;

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
var
  StyleName: string;
begin
  Caption := APP_NAME;

  lblTitle.Caption := ACT_HOME_CAPTION;

  SV.UseAnimation := SV_USE_ANIMATION;
  SV.AnimationDelay := SV_ANIMATION_DELAY;
  SV.AnimationStep := SV_ANIMATION_STEP;
  SV.DisplayMode := SV_DISPLAY_MODE;
  SV.Placement := SV_PLACEMENT;
  SV.CloseStyle := SV_CLOSE_STYLE;

  actHome.Caption := ACT_HOME_CAPTION;
  actHome.Hint := ACT_HOME_HINT;
  actWind.Caption := ACT_WIND_CAPTION;
  actWind.Hint := ACT_WIND_HINT;
  actDesign.Caption := ACT_DESIGN_CAPTION;
  actDesign.Hint := ACT_DESIGN_HINT;
  actOptim.Caption := ACT_OPTIM_CAPTION;
  actOptim.Hint := ACT_OPTIM_HINT;
  actModel.Caption := ACT_MODEL_CAPTION;
  actModel.Hint := ACT_MODEL_HINT;
  actAnalyse.Caption := ACT_ANALYSE_CAPTION;
  actAnalyse.Hint := ACT_ANALYSE_HINT;
  actHelp.Caption := ACT_HELP_CAPTION;
  actHelp.Hint := ACT_HELP_HINT;
end;

procedure TMainForm.imgMenuClick(Sender: TObject);
begin
  if SV.Opened then
    SV.Close
  else
    SV.Open;
end;

procedure TMainForm.WndProc(var Message: TMessage);
begin

end;

procedure TMainForm.SVClosed(Sender: TObject);
begin
  // When TSplitView is closed, adjust ButtonOptions and Width
  catMenuItems.ButtonOptions := catMenuItems.ButtonOptions - [boShowCaptions];
  if SV.CloseStyle = svcCompact then
    catMenuItems.Width := SV.CompactWidth;
end;

procedure TMainForm.SVClosing(Sender: TObject);
begin
  //
end;

procedure TMainForm.SVOpened(Sender: TObject);
begin
  // When not animating, change size of catMenuItems when TSplitView is opened
  catMenuItems.ButtonOptions := catMenuItems.ButtonOptions + [boShowCaptions];
  catMenuItems.Width := SV.OpenedWidth;
end;

procedure TMainForm.SVOpening(Sender: TObject);
begin
  // When animating, change size of catMenuItems at the beginning of open
  catMenuItems.ButtonOptions := catMenuItems.ButtonOptions + [boShowCaptions];
  catMenuItems.Width := SV.OpenedWidth;
end;

procedure TMainForm.actHelpExecute(Sender: TObject);
begin
  Log(DateTimeToStr(Now) + ' Была выбрана категория: ' + actHelp.Caption);

end;

procedure TMainForm.actHomeExecute(Sender: TObject);
begin
  Log(DateTimeToStr(Now) + ' Была выбрана категория: ' + actHome.Caption);

end;

procedure TMainForm.actModelExecute(Sender: TObject);
begin
  Log(DateTimeToStr(Now) + ' Была выбрана категория: ' + actModel.Caption);

end;

procedure TMainForm.actOptimExecute(Sender: TObject);
begin
  Log(DateTimeToStr(Now) + ' Была выбрана категория: ' + actOptim.Caption);

end;

procedure TMainForm.actWindExecute(Sender: TObject);
begin
  Log(DateTimeToStr(Now) + ' Была выбрана категория: ' + actWind.Caption);

end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  catMenuItems.Color := clBlack;
end;

procedure TMainForm.actAnalyseExecute(Sender: TObject);
begin
  Log(DateTimeToStr(Now) + ' Была выбрана категория: ' + actAnalyse.Caption);

end;

procedure TMainForm.actDesignExecute(Sender: TObject);
begin
  Log(DateTimeToStr(Now) + ' Была выбрана категория: ' + actDesign.Caption);

end;

procedure TMainForm.catMenuItemsCategoryCollapase(Sender: TObject;
  const Category: TButtonCategory);
begin
  // Prevent the catMenuItems Category group from being collapsed
  catMenuItems.Categories[0].Collapsed := False;
end;

procedure TMainForm.catMenuItemsSelectedItemChange(Sender: TObject;
  const Button: TButtonItem);
begin
  lblTitle.Caption := Button.Caption;
  if SV.Opened and SV_CLOSE_ON_MENU_CLICK then
    SV.Close;
end;

procedure TMainForm.Log(const Msg: string);
var
  Idx: Integer;
begin
  Idx := lstLog.Items.Add(Msg);
  lstLog.TopIndex := Idx;
end;

end.
