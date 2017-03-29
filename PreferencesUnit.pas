unit PreferencesUnit;

interface

uses Vcl.WinXCtrls;

const
  APP_NAME: String = 'Проектирование торцевого генератора';
  PAGE_NAMES: TArray<String> = ['First', 'Second', 'Third'];

  // Настройки поведения шторки TSplitView
  SV_CLOSE_ON_MENU_CLICK = False;
  SV_USE_ANIMATION = True;
  SV_ANIMATION_DELAY = 75;
  SV_ANIMATION_STEP = 100;
  SV_DISPLAY_MODE = svmDocked;
  SV_PLACEMENT = svpLeft;
  SV_CLOSE_STYLE = svcCompact;

  // Настройки действий
  ACT_HOME_CAPTION = 'Начало';
  ACT_WIND_CAPTION = 'Ветровая нагрузка';
  ACT_DESIGN_CAPTION = 'Конструирование';
  ACT_OPTIM_CAPTION = 'Оптимизация';
  ACT_MODEL_CAPTION = 'Моделирование';
  ACT_ANALYSE_CAPTION = 'Работоспособность';
  ACT_HELP_CAPTION = 'Помощь';

  ACT_HOME_HINT
    : String = 'Вернуться в начало';
  ACT_WIND_HINT =
    'Получить данные по ветровой нагрузке';
  ACT_DESIGN_HINT =
    'Перейти к конструированию генератора';
  ACT_OPTIM_HINT =
    'Перейти в блок оптимизации';
  ACT_MODEL_HINT =
    'Перейти к трёхмерному моделированию';
  ACT_ANALYSE_HINT =
    'Проверить работоспособность активной части генератора';
  ACT_HELP_HINT =
    'Открыть справку';

  ACT_HOME_LONGHINT
    : String = 'Вернуться в начало | Вернуться в начало и начать новый расчёт';
  ACT_WIND_LONGHINT =
    'Получить данные по ветровой нагрузке|Расчёт максимальной допустимой мощности ветротурбины при текущей ветровой нагрузке';
  ACT_DESIGN_LONGHINT =
    'Перейти к конструированию генератора|Определение геометрических и силовых параметров генератора';
  ACT_OPTIM_LONGHINT =
    'Перейти в блок оптимизации|Оптимизация параметров генератора по заданным критериям качества';
  ACT_MODEL_LONGHINT =
    'Перейти к трёхмерному моделированию|Трёхмерное параметрическое моделированию активной части генератора в CAD-среде';
  ACT_ANALYSE_LONGHINT =
    'Проверить работоспособность активной части генератора|Структурный статический конечно-элементный анализ активной части генератора в CAE-среде';
  ACT_HELP_LONGHINT =
    'Открыть справку|Справочная система с описанием разделом программы';

implementation

end.
