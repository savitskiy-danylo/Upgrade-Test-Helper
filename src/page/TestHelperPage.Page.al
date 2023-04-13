page 50100 "Test Helper Page"
{
    ApplicationArea = All;
    Caption = 'Test Helper Page';
    PageType = Card;

    layout
    {
        area(content)
        {
            group(PageInformation)
            {
                Caption = 'Page Information';

                field(PageID; PageMetadata.ID)
                {
                    Caption = 'Page ID';
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the Page ID field.';
                    trigger OnDrillDown()
                    begin
                        PageMetadata.Reset();
                        if Page.RunModal(PAGE::"Page Metadata List", PageMetadata) = Action::LookupOK then
                            UpdatePageAppInfo();
                        exit;
                    end;

                    trigger OnValidate()
                    begin
                        PageMetadata.Reset();
                        PageMetadata.Find();
                        UpdatePageAppInfo();
                    end;
                }
                field(PageName; PageMetadata.Name)
                {
                    Caption = 'Page Name';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Page Name field.';
                }
                field(PageCaption; PageMetadata.Caption)
                {
                    Caption = 'Page Caption';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Page Caption field.';
                }
                field(PageSourceTable; PageMetadata.SourceTable)
                {
                    Caption = 'Source Table';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Source Table field.';
                }
                field(PageType; PageMetadata.PageType)
                {
                    Caption = 'Page Type';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Page Type field.';
                }
                field(CardPageID; PageMetadata.CardPageID)
                {
                    Caption = 'Card Page ID';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Card Page ID field.';
                }
                field(InsertAllowed; PageMetadata.InsertAllowed)
                {
                    Caption = 'Insert Allowed';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Insert Allowed field.';
                }
                field(ModifyAllowed; PageMetadata.ModifyAllowed)
                {
                    Caption = 'Modify Allowed';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Modify Allowed field.';
                }
                field(DeleteAllowed; PageMetadata.DeleteAllowed)
                {
                    Caption = 'Delete Allowed';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Delete Allowed field.';
                }
                field(PageApplicationPublisher; PagePublishedApplication.Publisher)
                {
                    Caption = 'Application Publisher';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Application Publisher field.';
                }
                field(PageApplicationName; PagePublishedApplication.Name)
                {
                    Caption = 'Application Name';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Application Name field.';
                }
            }
            group(ReportInformation)
            {
                Caption = 'Report Information';

                field(ReportID; ReportMetadata.ID)
                {
                    Caption = 'Report ID';
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the Report ID field.';
                    trigger OnDrillDown()
                    begin
                        ReportMetadata.Reset();
                        if Page.RunModal(PAGE::"Report Metadata List", ReportMetadata) = Action::LookupOK then
                            UpdateReportAppInfo();
                        exit;
                    end;

                    trigger OnValidate()
                    begin
                        ReportMetadata.Reset();
                        ReportMetadata.Find();
                        UpdateReportAppInfo();
                    end;
                }
                field(ReportName; ReportMetadata.Name)
                {
                    Caption = 'Report Name';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Report Name field.';
                }
                field(ReportCaption; ReportMetadata.Caption)
                {
                    Caption = 'Report Caption';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Report Caption field.';
                }
                field(ProcessingOnly; ReportMetadata.ProcessingOnly)
                {
                    Caption = 'Processing Only';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Processing Only field.';
                }
                field(FirstDataItemTableID; ReportMetadata.FirstDataItemTableID)
                {
                    Caption = 'First Data Item Table ID';
                    Editable = false;
                    ToolTip = 'Specifies the value of the First Data Item Table ID field.';
                }
                field(DefaultLayout; ReportMetadata.DefaultLayout)
                {
                    Caption = 'Default Layout';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Default Layout field.';
                }
                field(ReportApplicationPublisher; ReportPublishedApplication.Publisher)
                {
                    Caption = 'Application Publisher';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Application Publisher field.';
                }
                field(ReportApplicationName; ReportPublishedApplication.Name)
                {
                    Caption = 'Application Name';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Application Name field.';
                }

                group(ReportRunParameters)
                {
                    Caption = 'Report Run Parameters';
                    field(ReportRunParam; ReportRunParameters."Report Run Parameters")
                    {
                        Caption = 'Mode';
                        ToolTip = 'Specifies the value of the Mode field.';
                    }
                }
            }
            group("XMLport Information")
            {
                field(XMLportID; AllObjWithCaption."Object ID")
                {
                    Caption = 'XMLport ID';
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the XMLport ID field.';
                    trigger OnDrillDown()
                    begin
                        AllObjWithCaption.Reset();
                        AllObjWithCaption.SetRange("Object Type", AllObjWithCaption."Object Type"::XMLport);
                        if Page.RunModal(Page::"AllObjWithCaption Lookup", AllObjWithCaption) = Action::LookupOK then
                            UpdateXMLportAppInfo();
                        exit;
                    end;

                    trigger OnValidate()
                    begin
                        AllObjWithCaption.Reset();
                        AllObjWithCaption."Object Type" := AllObjWithCaption."Object Type"::XMLport;
                        AllObjWithCaption.Find();
                        UpdateXMLportAppInfo();
                    end;
                }
                field(Name; AllObjWithCaption."Object Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'XMLport Name';
                    ToolTip = 'Specifies the value of the XMLport Name field.';
                }
                field(Caption; AllObjWithCaption."Object Caption")
                {
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'XMLport Caption';
                    ToolTip = 'Specifies the value of the XMLport Caption field.';
                }
                field(XMLportApplicationPublisher; XMLportPublishedApplication.Publisher)
                {
                    Caption = 'Application Publisher';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Application Publisher field.';
                }
                field(XMLportApplicationName; XMLportPublishedApplication.Name)
                {
                    Caption = 'Application Name';
                    Editable = false;
                    ToolTip = 'Specifies the value of the Application Name field.';
                }
                group(XMLportRunParameters)
                {
                    Caption = 'Report Run Parameters';
                    field(XMLportRunParam; XMLportDirection."XMLport Direction")
                    {
                        Caption = 'Direction';
                        ToolTip = 'Specifies the value of the Direction field.';
                    }
                }
            }
        }
    }

    actions
    {
        area(Promoted)
        {
            group(General)
            {
                ShowAs = Standard;
                actionref("Promo Export All Objects"; "Export All Objects")
                {

                }
                actionref("Promo Show List of All Objects"; "Show List of All Objects")
                {

                }
            }
            group(Page)
            {
                actionref("Promo Run Page"; "Run Page")
                {

                }
                actionref("Promo Show List of All Pages"; "Show List of All Pages")
                {

                }
            }
            group(Report)
            {
                actionref("Promo Run Report"; "Run Report")
                {

                }
                actionref("Promo Show List of All Reports"; "Show List of All Reports")
                {

                }
            }
            group("Xml Port")
            {
                actionref("Promo Run XMLport"; "Run XMLport")
                {

                }
                actionref("Promo Show List of All XMLports"; "Show List of All XMLports")
                {

                }
            }
            group("Related")
            {
                actionref("Promo Table Information"; "Table Information")
                {

                }
                actionref("Promo Event Subscriptions"; "Event Subscriptions")
                {

                }
            }
            group("Process")
            {
                actionref("Promo Export Table Information"; "Export Table Information")
                {

                }
            }
        }
        area(Processing)
        {
            action("Export All Objects")
            {
                ApplicationArea = All;
                Image = Export;
                ToolTip = 'Executes the Export All Objects action.';
                trigger OnAction()
                begin
                    TestHelperExports.ExportAllObjects();
                end;
            }
            action("Show List of All Objects")
            {
                ApplicationArea = All;
                Image = List;
                ToolTip = 'Executes the Show List of All Objects action.';
                trigger OnAction()
                begin
                    Page.Run(Page::"AllObjWithCaption Lookup");
                end;
            }
            action("Run Page")
            {
                ApplicationArea = All;
                Image = ViewPage;
                ToolTip = 'Executes the Run Page action.';

                trigger OnAction()
                begin
                    Page.Run(PageMetadata.ID);
                end;
            }
            action("Show List of All Pages")
            {
                ApplicationArea = All;
                Image = ListPage;
                ToolTip = 'Executes the Show List of All Pages action.';
                trigger OnAction()
                begin
                    Page.Run(Page::"Page Metadata List");
                end;
            }
            action("Run Report")
            {
                ApplicationArea = All;
                Image = TestReport;
                ToolTip = 'Executes the Run Report action.';
                trigger OnAction()
                begin
                    if (ReportRunParameters."Report Run Parameters" = ReportRunParameters."Report Run Parameters"::Run) then
                        Report.Run(ReportMetadata.ID)
                    else
                        TestHelperExports.ReportSaveAs(ReportMetadata, ReportRunParameters."Report Run Parameters");
                end;
            }
            action("Show List of All Reports")
            {
                ApplicationArea = All;
                Image = List;
                ToolTip = 'Executes the Show List of All Reports action.';
                trigger OnAction()
                begin
                    Page.Run(Page::"Report Metadata List");
                end;
            }
            action("Run XMLport")
            {
                ApplicationArea = All;
                Image = XMLFile;
                ToolTip = 'Executes the Run XMLport action.';
                trigger OnAction()
                var
                    import: Boolean;
                begin
                    import := true;
                    if (XMLportDirection."XMLport Direction" = XMLportDirection."XMLport Direction"::Import) then
                        import := false;
                    XMLport.Run(AllObjWithCaption."Object ID", import);
                end;
            }
            action("Show List of All XMLports")
            {
                ApplicationArea = All;
                Image = List;
                ToolTip = 'Executes the Show List of All XMLports action.';
                trigger OnAction()
                begin
                    AllObjWithCaption.Reset();
                    AllObjWithCaption.SetRange("Object Type", AllObjWithCaption."Object Type"::XMLport);
                    Page.Run(Page::"AllObjWithCaption Lookup", AllObjWithCaption);
                end;
            }
            action("Table Information")
            {
                ApplicationArea = All;
                Image = Info;
                ToolTip = 'Executes the Table Information action.';
                trigger OnAction()
                begin
                    Page.Run(Page::"Table Information");
                end;
            }
            action("Event Subscriptions")
            {
                ApplicationArea = All;
                Image = "Event";
                ToolTip = 'Executes the Event Subscriptions action.';
                trigger OnAction()
                begin
                    Page.Run(Page::"Event Subscription List");
                end;
            }
            action("Export Table Information")
            {
                ApplicationArea = All;
                Image = Export;
                trigger OnAction()
                begin
                    TestHelperExports.ExportTableInformation();
                end;
            }
        }
    }

    trigger OnInit()
    var
    begin

        InitializePageInfo();
        UpdatePageAppInfo();

        InitializeReportInfo();
        UpdateReportAppInfo();

        InitializeXMLportInfo();
        UpdateXMLportAppInfo();

        OnInitRunParams();
    end;

    local procedure InitializePageInfo()
    begin
        PageMetadata.SetRange(ID, 1);
        PageMetadata.FindFirst();
    end;

    local procedure InitializeReportInfo()
    begin
        ReportMetadata.SetRange(ID, 1);
        ReportMetadata.FindFirst();
    end;

    local procedure InitializeXMLportInfo()
    begin
        AllObjWithCaption.SetRange("Object ID", 1);
        AllObjWithCaption.SetRange("Object Type", AllObjWithCaption."Object Type"::XMLport);
        AllObjWithCaption.FindFirst();
    end;

    local procedure OnInitRunParams()
    begin
        ReportRunParameters.Reset();
        if (ReportRunParameters.IsEmpty) then begin
            ReportRunParameters.Init();
            ReportRunParameters.KeyField := 1;
            ReportRunParameters."Report Run Parameters" := ReportRunParameters."Report Run Parameters"::Run;
            ReportRunParameters.Insert();
        end;
        ReportRunParameters.Reset();

        XMLportDirection.Reset();
        if (XMLportDirection.IsEmpty) then begin
            XMLportDirection.Init();
            XMLportDirection.KeyField := 1;
            XMLportDirection."XMLport Direction" := XMLportDirection."XMLport Direction"::Export;
            XMLportDirection.Insert();
        end;
        XMLportDirection.Reset();

        ReportRunParameters."Report Run Parameters" := ReportRunParameters."Report Run Parameters"::Run;
        XMLportDirection."XMLport Direction" := XMLportDirection."XMLport Direction"::Export;
    end;

    local procedure UpdatePageAppInfo()
    begin
        PagePublishedApplication.Reset();
        ApplicationObjectMetadata.Reset();

        ApplicationObjectMetadata.SetRange("Object ID", PageMetadata.ID);
        ApplicationObjectMetadata.FindFirst();

        PagePublishedApplication.SetRange("Runtime Package ID", ApplicationObjectMetadata."Runtime Package ID");
        PagePublishedApplication.FindFirst();
    end;

    local procedure UpdateReportAppInfo()
    begin
        ReportPublishedApplication.Reset();
        ApplicationObjectMetadata.Reset();

        ApplicationObjectMetadata.SetRange("Object ID", ReportMetadata.ID);
        ApplicationObjectMetadata.FindFirst();

        ReportPublishedApplication.SetRange("Runtime Package ID", ApplicationObjectMetadata."Runtime Package ID");
        ReportPublishedApplication.FindFirst();
    end;

    local procedure UpdateXMLportAppInfo()
    begin
        XMLportPublishedApplication.Reset();
        ApplicationObjectMetadata.Reset();

        ApplicationObjectMetadata.SetRange("Object ID", AllObjWithCaption."Object ID");
        ApplicationObjectMetadata.FindFirst();

        XMLportPublishedApplication.SetRange("Runtime Package ID", ApplicationObjectMetadata."Runtime Package ID");
        XMLportPublishedApplication.FindFirst();
    end;

    var
        PageMetadata: Record "Page Metadata";
        ReportMetadata: Record "Report Metadata";
        AllObjWithCaption: Record "AllObjWithCaption";
        ReportRunParameters: Record "Report Run Parameters";
        XMLportDirection: Record "XMLport Direction";
        PagePublishedApplication: Record "Published Application";
        ReportPublishedApplication: Record "Published Application";
        XMLportPublishedApplication: Record "Published Application";
        ApplicationObjectMetadata: Record "Application Object Metadata";
        TestHelperExports: Codeunit "Test Helper Exports";
}