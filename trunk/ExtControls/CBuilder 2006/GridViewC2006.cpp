//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USEFORMNS("..\Ex_GridC.pas", Ex_gridc, ColumnsEditorForm);
USEFORMNS("..\Ex_GridH.pas", Ex_gridh, HeaderEditorForm);
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
