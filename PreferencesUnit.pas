unit PreferencesUnit;

interface

uses Vcl.WinXCtrls;

const
  APP_NAME: String = '�������������� ��������� ����������';
  PAGE_NAMES: TArray<String> = ['First', 'Second', 'Third'];

  // ��������� ��������� ������ TSplitView
  SV_CLOSE_ON_MENU_CLICK = False;
  SV_USE_ANIMATION = True;
  SV_ANIMATION_DELAY = 75;
  SV_ANIMATION_STEP = 100;
  SV_DISPLAY_MODE = svmDocked;
  SV_PLACEMENT = svpLeft;
  SV_CLOSE_STYLE = svcCompact;

  // ��������� ��������
  ACT_HOME_CAPTION = '������';
  ACT_WIND_CAPTION = '�������� ��������';
  ACT_DESIGN_CAPTION = '���������������';
  ACT_OPTIM_CAPTION = '�����������';
  ACT_MODEL_CAPTION = '�������������';
  ACT_ANALYSE_CAPTION = '�����������������';
  ACT_HELP_CAPTION = '������';

  ACT_HOME_HINT
    : String = '��������� � ������';
  ACT_WIND_HINT =
    '�������� ������ �� �������� ��������';
  ACT_DESIGN_HINT =
    '������� � ��������������� ����������';
  ACT_OPTIM_HINT =
    '������� � ���� �����������';
  ACT_MODEL_HINT =
    '������� � ���������� �������������';
  ACT_ANALYSE_HINT =
    '��������� ����������������� �������� ����� ����������';
  ACT_HELP_HINT =
    '������� �������';

  ACT_HOME_LONGHINT
    : String = '��������� � ������ | ��������� � ������ � ������ ����� ������';
  ACT_WIND_LONGHINT =
    '�������� ������ �� �������� ��������|������ ������������ ���������� �������� ������������ ��� ������� �������� ��������';
  ACT_DESIGN_LONGHINT =
    '������� � ��������������� ����������|����������� �������������� � ������� ���������� ����������';
  ACT_OPTIM_LONGHINT =
    '������� � ���� �����������|����������� ���������� ���������� �� �������� ��������� ��������';
  ACT_MODEL_LONGHINT =
    '������� � ���������� �������������|��������� ��������������� ������������� �������� ����� ���������� � CAD-�����';
  ACT_ANALYSE_LONGHINT =
    '��������� ����������������� �������� ����� ����������|����������� ����������� �������-���������� ������ �������� ����� ���������� � CAE-�����';
  ACT_HELP_LONGHINT =
    '������� �������|���������� ������� � ��������� �������� ���������';

implementation

end.
