//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USERES("GridViewC5.res");
USEPACKAGE("vcl50.bpi");
USEPACKAGE("vcldb50.bpi");
USEPACKAGE("vclbde50.bpi");
USEUNIT("..\ExtSysUtils.pas");
USEUNIT("..\Ex_Grid.pas");
USEFORMNS("..\Ex_GridC.pas", Ex_gridc, ColumnsEditorForm);
USEFORMNS("..\Ex_GridH.pas", Ex_gridh, HeaderEditorForm);
USEUNIT("..\Ex_Inspector.pas");
USEUNIT("..\Ex_RegGrid.pas");
USERES("..\Ex_RegGrid.dcr");
USEUNIT("..\ExtGraphics.pas");
USEUNIT("..\ExtStrUtils.pas");
USEUNIT("..\ExtSystem.pas");
USEUNIT("..\Ex_DBGrid.pas");
//---------------------------------------------------------------------------
#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Package source.
//---------------------------------------------------------------------------

#pragma argsused
int WINAPI DllEntryPoint(HINSTANCE hinst, unsigned long reason, void*)
{
        return 1;
}
//---------------------------------------------------------------------------
