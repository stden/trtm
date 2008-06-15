//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
//---------------------------------------------------------------------------
USEFORMNS("src\trtm_gui.pas", Trtm_gui, FormTRTM);
USEFORMNS("src\trtm_master.pas", Trtm_master, FormTRTMMaster);
USEFORMNS("src\trtm_master_meth.pas", Trtm_master_meth, FormTRTMMasterMethods);
USEFORMNS("src\trtm_master_obj.pas", Trtm_master_obj, FormTRTMMasterObjects);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TFormTRTM), &FormTRTM);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        catch (...)
        {
                 try
                 {
                         throw Exception("");
                 }
                 catch (Exception &exception)
                 {
                         Application->ShowException(&exception);
                 }
        }
        return 0;
}
//---------------------------------------------------------------------------
