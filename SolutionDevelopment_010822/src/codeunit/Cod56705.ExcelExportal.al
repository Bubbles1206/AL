/// <summary>
/// Codeunit ExcelExport.al (ID 56705).
/// </summary>
codeunit 56705 "ExcelExport.al"
{

    trigger OnRun()
    begin
        TempExcelBuffer.Reset();
        TempExcelBuffer.DeleteAll();
        GVRowNow := 1;
        TempExcelBuffer.Init();
        TempExcelBuffer.Validate("Row No.", GVRowNow);
        TempExcelBuffer.Validate("Column No.", 1);
        TempExcelBuffer."Cell Value as Text" := 'Posting Date';
        TempExcelBuffer."Cell Type" := TempExcelBuffer."Cell Type"::Text;
        TempExcelBuffer.Insert();
        TempExcelBuffer.CreateNewBook('TestShet');
        TempExcelBuffer.WriteSheet('TestSheet', CompanyName, UserId);
        TempExcelBuffer.CloseBook();
        TempExcelBuffer.SetFriendlyFilename('Test.xlsx');
        TempExcelBuffer.OpenExcel();
        //TempExcelBuffer.CreateBookAndOpenExcel('C:\backups\'); 

    end;


    var 
        TempExcelBuffer : Record "Excel Buffer" temporary;
        GVRowNow : Integer;
}
