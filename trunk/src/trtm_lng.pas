unit trtm_lng;

interface

const
  TABLE_DSC_NEED_TO_CHANGE = '��� ����� �������� �� ������� ������';
  TABLE_DSC_GETTING_WORSE  = '��� ���������� ��� ���������';
  TABLE_DSC_ALL_METHODS    = '������� � �������';
  TABLE_DSC_ALL_F_METHODS  = '�����������';
  TABLE_DSC_ALL_S_METHODS  = '����������';
  TABLE_DSC_ALL_US_METHODS = '������������';

  TXT_AUTHOR               = '�����';
  TXT_TASK                 = '������';
  TXT_SOLUTION_IDEA        = '������� ������ � ������� ������� ������ ���������� ����������� ������������';
  TXT_CONTR                = '������������';
  TXT_AC                   = '���������������� ������������';
  TXT_TC                   = '����������� ������������';
  TXT_PHC                  = '���������� ������������';
  TXT_PARAMETERS           = '���������:';
  TXT_METH_LIST            = '������� � �������';
  TXT_POPULAR_METH         = '�����������';
  TXT_GOOD_METH            = '����������';
  TXT_NOT_GOOD_METH        = '������������';
  TXT_SOLUTION             = '������� ������';
  TXT_GRAPHICS             = '������ ������������ �������';

  TXT_CHANGING             = '���������� ��������';
  TXT_GETTING_WORSE        = '������������ ��������';
  TXT_INPUT                = '�������';
  TXT_TABLE_NAME           = '������� ������ ������ ���������� ����������� ������������ �� �����������';
  MSG_ENTER_GETTING_WORSE  = TXT_INPUT + ' ' + TXT_GETTING_WORSE;
  MSG_ENTER_CHANGING       = TXT_INPUT + ' ' + TXT_CHANGING;
  MSG_ABOUT                = '������: �������� �.�.' +
                              #13#10 + '����������: ������� �.�., sobolevsp@mail.ru' +
                              #13#10 + '             '  + '�������� �.�.' +
                              #13#10 + '����������: ��������� �.�., armag_vvg@hotmail.ru'
                              ;
  MSG_ABOUT_HTM            = '<strong>����:</strong> ������: �������� �.�.' +
                              '<br>' + '����������: <a href="mailto:sobolevsp@mail.ru">������� �.�.</a>,' +
                              '<br>' + '�������� �.�.'
                              ;
  MSG_NO_HELP              = '� ������ ������ ��������� ������� �� ��������.';
  MSG_NOTREALIZED_YET      = '������ ������� ���� �� �����������.';

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

  FILE_EXT_TXT             = '��������� ����';
  FILE_EXT_HTM             = 'Html-����';
  FILE_EXT_RTF             = 'RTF-��������';

  CHART_TITLE              = '������������ ������������ �������';
  MAIN_FORM_TITLE          = '������� ����������� ������������';
  
implementation

end.

