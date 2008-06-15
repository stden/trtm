{
  Библиотека дополнительных компонентов

  Директивы компилятора, определение версии Delphi

  Роман М. Мочалов
  E-mail: roman@sar.nnov.ru

  Исправлено: Компанец Илья, iluha@convex.ru
}

{$BOOLEVAL OFF}       // Complete Boolean expression evaluation
{$EXTENDEDSYNTAX ON}  // Delphi's extended syntax
{$LONGSTRINGS ON}     // Long strings
{$OPENSTRINGS ON}     // Open strings parameters
{$IMPORTEDDATA ON}    // iluha

{$IFDEF VER140}                             
  {$DEFINE EX_D6}    // Delphi 6.0
  {$DEFINE EX_D6_UP}
  {$DEFINE EX_D5_UP}
  {$DEFINE EX_D4_UP}
  {$DEFINE EX_D3_UP}
  {$DEFINE EX_D2_UP}
{$ENDIF}

{$IFDEF VER130}
  {$DEFINE EX_D5}     // Delphi 5.0
  {$DEFINE EX_D5_UP}
  {$DEFINE EX_D4_UP}
  {$DEFINE EX_D3_UP}
  {$DEFINE EX_D2_UP}
{$ENDIF}

{$IFDEF VER120}
  {$DEFINE EX_D4}     // Delphi 4.0
  {$DEFINE EX_D4_UP}
  {$DEFINE EX_D3_UP}
  {$DEFINE EX_D2_UP}
{$ENDIF}

{$IFDEF VER100}
  {$DEFINE EX_D3}     // Delphi 3.0
  {$DEFINE EX_D3_UP}
  {$DEFINE EX_D2_UP}
{$ENDIF}

{$IFDEF VER90}
  {$DEFINE EX_D2}     // Delphi 2.0
{$ENDIF}

{$IFDEF VER125}
  {$DEFINE EX_D4}    // C++ Builder 4.0
  {$DEFINE EX_D4_UP}
  {$DEFINE EX_D3_UP}
  {$DEFINE EX_D2_UP}
{$ENDIF}

{$IFDEF VER110}
  {$DEFINE EX_D3}     // C++ Builder 3.0
  {$DEFINE EX_D3_UP}
  {$DEFINE EX_D2_UP}
{$ENDIF}

