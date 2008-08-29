unit trtm_lng;

interface

const
  TABLE_DSC_NEED_TO_CHANGE = 'Что нужно изменить по условию задачи';
  TABLE_DSC_GETTING_WORSE  = 'Что ухудшается при изменении';
  TABLE_DSC_ALL_METHODS    = 'Указано в таблице';
  TABLE_DSC_ALL_F_METHODS  = 'Дублируются';
  TABLE_DSC_ALL_S_METHODS  = 'Подходящие';
  TABLE_DSC_ALL_US_METHODS = 'Неподходящие';

  TXT_AUTHOR               = 'Автор';
  TXT_TASK                 = 'Задача';
  TXT_SOLUTION_IDEA        = 'Решение задачи с помощью таблицы приёмов разрешения технических противоречий';
  TXT_CONTR                = 'Противоречия';
  TXT_AC                   = 'Административное противоречие';
  TXT_TC                   = 'Техническое противоречие';
  TXT_PHC                  = 'Физическое противоречие';
  TXT_PARAMETERS           = 'Параметры:';
  TXT_METH_LIST            = 'Указано в таблице';
  TXT_POPULAR_METH         = 'Дублируются';
  TXT_GOOD_METH            = 'Подходящие';
  TXT_NOT_GOOD_METH        = 'Неподходящие';
  TXT_SOLUTION             = 'Решение задачи';
  TXT_GRAPHICS             = 'График популярности методов';

  TXT_CHANGING             = 'изменяемый параметр';
  TXT_GETTING_WORSE        = 'ухудшающийся параметр';
  TXT_INPUT                = 'Введите';
  TXT_TABLE_NAME           = 'Таблица выбора приёмов устранения технических противоречий по Альтшуллеру';

  MSG_ENTER_GETTING_WORSE  = TXT_INPUT + ' ' + TXT_GETTING_WORSE;
  MSG_ENTER_CHANGING       = TXT_INPUT + ' ' + TXT_CHANGING;
  MSG_ABOUT                = 'Теория: Братцева Г.Г.' +
                              #13#10 + 'Реализация: Соболев С.П., sobolevsp@mail.ru' +
                              #13#10 + '             '  + 'Филипова О.С.' +
                              #13#10 + 'Доработано: Григорьев В.В., armag_vvg@hotmail.ru' +
                              #13#10 + 'Доработано: Степулёнок Д.О., super.denis@gmail.com';
  MSG_ABOUT_HTM            = '<strong>ТРТМ:</strong> Теория: Братцева Г.Г.' +
                              '<br>' + 'Реализация: <a href="mailto:sobolevsp@mail.ru">Соболев С.П.</a>,' +
                              '<br>' + 'Филипова О.С.'
                              ;
  MSG_NO_HELP              = 'В данной версии программы справка не доступна.';
  MSG_NOTREALIZED_YET      = 'Данная функция пока не реализована.';

  INI_RIZ_SECTION_MAIN     = 'Main section';
  INI_RIZ_PAR_AUTHOR       = 'Author';
  INI_RIZ_PAR_PRJ_NAME     = 'Project name';
  INI_RIZ_SECTION_TASK     = 'Task section';
  INI_RIZ_PAR_TASK         = 'Task';
  INI_RIZ_PAR_CONTR_ADM    = 'Contr adm';
  INI_RIZ_PAR_CONTR_TECH   = 'Contr tech';
  INI_RIZ_PAR_CONTR_PHYS   = 'Contr phys';
  INI_RIZ_PAR_CHANGING     = 'Changing';
  INI_RIZ_PAR_GETTING_W    = 'Getting w';
  INI_RIZ_PAR_GOOD_METH    = 'Good meth';
  INI_RIZ_PAR_BAD_METH     = 'Bad meth';
  INI_RIZ_SECTION_RESULT   = 'Result section';
  INI_RIZ_PAR_RESULT       = 'Result';


  TABLE_COL_NUM            = 6;
  TABLE_DSC_COL_0_W        = 80;
  TABLE_DSC_COL_1_W        = 60;
  TABLE_DSC_COL_2_W        = 80;
  TABLE_DSC_COL_3_W        = 60;
  TABLE_DSC_COL_4_W        = 50;
  TABLE_DSC_COL_5_W        = 50;

  TABLE_RO_COL_2           = 2;
  TABLE_RO_COL_3           = 3;

  FILE_EXT_TXT             = 'Текстовый файл';
  FILE_EXT_HTM             = 'Html-файл';
  FILE_EXT_RTF             = 'RTF-документ';

  CHART_TITLE              = 'Популярность предложенных методов';
  MAIN_FORM_TITLE          = 'Решение технических противоречий';

implementation

end.

