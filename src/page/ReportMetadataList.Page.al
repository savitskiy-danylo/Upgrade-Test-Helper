page 50103 "Report Metadata List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Report Metadata";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Caption; Rec.Caption)
                {
                    ToolTip = 'Specifies the value of the Caption field.';
                }
                field(ProcessingOnly; Rec.ProcessingOnly)
                {
                    ToolTip = 'Specifies the value of the ProcessingOnly field.';
                }
                field(FirstDataItemTableID; Rec.FirstDataItemTableID)
                {
                    ToolTip = 'Specifies the value of the FirstDataItemTableID field.';
                }
                field(DefaultLayout; Rec.DefaultLayout)
                {
                    ToolTip = 'Specifies the value of the DefaultLayout field.';
                }
                field(PaperSourceDefaultPage; Rec.PaperSourceDefaultPage)
                {
                    ToolTip = 'Specifies the value of the PaperSourceDefaultPage field.';
                }
                field(PaperSourceFirstPage; Rec.PaperSourceFirstPage)
                {
                    ToolTip = 'Specifies the value of the PaperSourceFirstPage field.';
                }
                field(PaperSourceLastPage; Rec.PaperSourceLastPage)
                {
                    ToolTip = 'Specifies the value of the PaperSourceLastPage field.';
                }
                field(PreviewMode; Rec.PreviewMode)
                {
                    ToolTip = 'Specifies the value of the PreviewMode field.';
                }
                field(AllowScheduling; Rec.AllowScheduling)
                {
                    ToolTip = 'Specifies the value of the AllowScheduling field.';
                }
                field(DefaultLayoutName; Rec.DefaultLayoutName)
                {
                    ToolTip = 'Specifies the value of the DefaultLayoutName field.';
                }
                field(EnableExternalAssemblies; Rec.EnableExternalAssemblies)
                {
                    ToolTip = 'Specifies the value of the EnableExternalAssemblies field.';
                }
                field(EnableExternalImages; Rec.EnableExternalImages)
                {
                    ToolTip = 'Specifies the value of the EnableExternalImages field.';
                }
                field(EnableHyperLinks; Rec.EnableHyperLinks)
                {
                    ToolTip = 'Specifies the value of the EnableHyperLinks field.';
                }
                field(MaxDocuments; Rec.MaxDocuments)
                {
                    ToolTip = 'Specifies the value of the MaxDocuments field.';
                }
                field(MaxRows; Rec.MaxRows)
                {
                    ToolTip = 'Specifies the value of the MaxRows field.';
                }
                field(ShowPrintStatus; Rec.ShowPrintStatus)
                {
                    ToolTip = 'Specifies the value of the ShowPrintStatus field.';
                }
                field(Timeout; Rec.Timeout)
                {
                    ToolTip = 'Specifies the value of the Timeout field.';
                }
                field(TransactionType; Rec.TransactionType)
                {
                    ToolTip = 'Specifies the value of the TransactionType field.';
                }
                field(UseRequestPage; Rec.UseRequestPage)
                {
                    ToolTip = 'Specifies the value of the UseRequestPage field.';
                }
                field(UseSystemPrinter; Rec.UseSystemPrinter)
                {
                    ToolTip = 'Specifies the value of the UseSystemPrinter field.';
                }
                field(WordMergeDataItem; Rec.WordMergeDataItem)
                {
                    ToolTip = 'Specifies the value of the WordMergeDataItem field.';
                }

            }

        }
    }
}
