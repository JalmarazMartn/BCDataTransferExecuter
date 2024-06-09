codeunit 69001 "BCDS Datatransfer Execution"
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    var
        DataSupportDataTransfer: Record "Data Support DataTransfer";
    begin
        if DataSupportDataTransfer.FindFirst() then
            DataSupportDataTransfer.ExecuteDataTransfer();
    end;
}