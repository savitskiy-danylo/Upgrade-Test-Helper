codeunit 50100 "Test Helper Exports"
{
    procedure ExportAllObjects()
    var
        TempExcelBuffer: Record "Excel Buffer" temporary;
        AllObjWithCaption: Record AllObjWithCaption;
        ExcelFileNameLbl: Label 'AllObjects_%1_%2';
        AllObjWithCaptionLbl: Label 'All Objects';
    begin
        TempExcelBuffer.Reset();
        TempExcelBuffer.DeleteAll();

        AllObjWithCaption.Reset();
        AllObjWithCaption.FindSet();

        TempExcelBuffer.NewRow();
        TempExcelBuffer.AddColumn(AllObjWithCaption.FieldCaption("Object Type"), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        TempExcelBuffer.AddColumn(AllObjWithCaption.FieldCaption("Object ID"), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Number);
        TempExcelBuffer.AddColumn(AllObjWithCaption.FieldCaption("Object Name"), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        repeat
            TempExcelBuffer.NewRow();
            TempExcelBuffer.AddColumn(AllObjWithCaption."Object Type", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
            TempExcelBuffer.AddColumn(AllObjWithCaption."Object ID", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Number);
            TempExcelBuffer.AddColumn(AllObjWithCaption."Object Name", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);

        until AllObjWithCaption.Next() = 0;

        TempExcelBuffer.CreateNewBook(AllObjWithCaptionLbl);
        TempExcelBuffer.WriteSheet(AllObjWithCaptionLbl, CompanyName, UserId);
        TempExcelBuffer.CloseBook();
        TempExcelBuffer.SetFriendlyFilename(StrSubstNo(ExcelFileNameLbl, CurrentDateTime, UserId));
        TempExcelBuffer.OpenExcel();
    end;

    procedure ReportSaveAs(ReportMetadata: Record "Report Metadata"; ReportRunParams: Enum "Report Run Parameters")
    var
        TempBlob: Codeunit "Temp Blob";
        FileManagement: Codeunit "File Management";
        ReportParams: Text;
        Ext: Text;
        OutStream: OutStream;
        ReportFormat: ReportFormat;
    begin
        Clear(OutStream);
        Clear(ReportParams);
        Clear(Ext);
        ReportFormat := GetReportFormat(ReportRunParams);

        Ext := GetFileExtension(ReportFormat);
        TempBlob.CreateOutStream(OutStream);

        ReportParams := Report.RunRequestPage(ReportMetadata.ID);
        Report.SaveAs(ReportMetadata.ID, ReportParams, ReportFormat, OutStream);
        FileManagement.BLOBExport(TempBlob, Format(ReportMetadata.Name) + '_' + Format(CURRENTDATETIME, 0, '<Day,2><Month,2><Year4><Hours24><Minutes,2><Seconds,2>') + Ext, true);
    end;

    procedure ExportTableInformation()
    var
        TempExcelBuffer: Record "Excel Buffer" temporary;
        TableInformation: Record "Table Information";
        ExcelFileNameLbl: Label 'TableInformation_%1_%2';
        TableInformationLbl: Label 'Table Information';
    begin
        TempExcelBuffer.Reset();
        TempExcelBuffer.DeleteAll();

        TableInformation.Reset();
        TableInformation.FindSet();

        TempExcelBuffer.NewRow();
        TempExcelBuffer.AddColumn(TableInformation.FieldCaption("Table Name"), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        TempExcelBuffer.AddColumn(TableInformation.FieldCaption("Table No."), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Number);
        TempExcelBuffer.AddColumn(TableInformation.FieldCaption("Company Name"), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        TempExcelBuffer.AddColumn(TableInformation.FieldCaption("No. of Records"), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        TempExcelBuffer.AddColumn(TableInformation.FieldCaption("Size (KB)"), false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        repeat
            TempExcelBuffer.NewRow();
            TempExcelBuffer.AddColumn(TableInformation."Table Name", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
            TempExcelBuffer.AddColumn(TableInformation."Table No.", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Number);
            TempExcelBuffer.AddColumn(TableInformation."Company Name", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
            TempExcelBuffer.AddColumn(TableInformation."No. of Records", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
            TempExcelBuffer.AddColumn(TableInformation."Size (KB)", false, '', false, false, false, '', TempExcelBuffer."Cell Type"::Text);
        until TableInformation.Next() = 0;

        TempExcelBuffer.CreateNewBook(TableInformationLbl);
        TempExcelBuffer.WriteSheet(TableInformationLbl, CompanyName, UserId);
        TempExcelBuffer.CloseBook();
        TempExcelBuffer.SetFriendlyFilename(StrSubstNo(ExcelFileNameLbl, CurrentDateTime, UserId));
        TempExcelBuffer.OpenExcel();
    end;

    local procedure GetFileExtension(ReportFormat: ReportFormat): Text
    begin
        case ReportFormat of
            ReportFormat::Excel:
                exit('.xlsx');
            ReportFormat::Html:
                exit('.html');
            ReportFormat::Pdf:
                exit('.pdf');
            ReportFormat::Word:
                exit('.docx');
            ReportFormat::Xml:
                exit('.xml');
        end;
    end;

    local procedure GetReportFormat(ReportRunParams: Enum "Report Run Parameters"): ReportFormat
    begin
        if (ReportRunParams = ReportRunParams::Run) then
            Error('GetReportFormat cannot handle Run state');

        case ReportRunParams of
            "Report Run Parameters"::"Save as Excel":
                exit(ReportFormat::Excel);
            "Report Run Parameters"::"Save as Html":
                exit(ReportFormat::Html);
            "Report Run Parameters"::"Save as Pdf":
                exit(ReportFormat::Pdf);
            "Report Run Parameters"::"Save as Word":
                exit(ReportFormat::Word);
            "Report Run Parameters"::"Save as Xml":
                exit(ReportFormat::Xml);
        end;
    end;
}