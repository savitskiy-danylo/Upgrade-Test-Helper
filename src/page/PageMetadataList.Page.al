page 50102 "Page Metadata List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Page Metadata";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the ID of the page.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the name of the page.';
                }
                field(Caption; Rec.Caption)
                {
                    ToolTip = 'Specifies the caption of the page.';
                }
                field(PageType; Rec.PageType)
                {
                    ToolTip = 'Specifies the value of the PageType field.';
                }
                field(SourceTable; Rec.SourceTable)
                {
                    ToolTip = 'Specifies the value of the SourceTable field.';
                }
                field(Editable; Rec.Editable)
                {
                    ToolTip = 'Specifies the value of the Editable field.';
                }
                field(InsertAllowed; Rec.InsertAllowed)
                {
                    ToolTip = 'Specifies the value of the InsertAllowed field.';
                }
                field(ModifyAllowed; Rec.ModifyAllowed)
                {
                    ToolTip = 'Specifies the value of the ModifyAllowed field.';
                }
                field(DeleteAllowed; Rec.DeleteAllowed)
                {
                    ToolTip = 'Specifies the value of the DeleteAllowed field.';
                }
                field(DelayedInsert; Rec.DelayedInsert)
                {
                    ToolTip = 'Specifies the value of the DelayedInsert field.';
                }
                field(CardPageID; Rec.CardPageID)
                {
                    ToolTip = 'Specifies the value of the CardPageID field.';
                }
                field(MultipleNewLines; Rec.MultipleNewLines)
                {
                    ToolTip = 'Specifies the value of the MultipleNewLines field.';
                }
                field(PopulateAllFields; Rec.PopulateAllFields)
                {
                    ToolTip = 'Specifies the value of the PopulateAllFields field.';
                }
                field(RefreshOnActivate; Rec.RefreshOnActivate)
                {
                    ToolTip = 'Specifies the value of the RefreshOnActivate field.';
                }
                field(SaveValues; Rec.SaveValues)
                {
                    ToolTip = 'Specifies the value of the SaveValues field.';
                }
                field(ShowFilter; Rec.ShowFilter)
                {
                    ToolTip = 'Specifies the value of the ShowFilter field.';
                }
                field(LinksAllowed; Rec.LinksAllowed)
                {
                    ToolTip = 'Specifies the value of the LinksAllowed field.';
                }
                field(SourceTableTemporary; Rec.SourceTableTemporary)
                {
                    ToolTip = 'Specifies the value of the SourceTableTemporary field.';
                }
                field(SourceTableView; Rec.SourceTableView)
                {
                    ToolTip = 'Specifies the value of the SourceTableView field.';
                }
                field(APIGroup; Rec.APIGroup)
                {
                    ToolTip = 'Specifies the value of the APIGroup field.';
                }
                field(APIPublisher; Rec.APIPublisher)
                {
                    ToolTip = 'Specifies the value of the APIPublisher field.';
                }
                field(APIVersion; Rec.APIVersion)
                {
                    ToolTip = 'Specifies the value of the APIVersion field.';
                }
                field(AutoSplitKey; Rec.AutoSplitKey)
                {
                    ToolTip = 'Specifies the value of the AutoSplitKey field.';
                }
                field(ChangeTrackingAllowed; Rec.ChangeTrackingAllowed)
                {
                    ToolTip = 'Specifies the value of the ChangeTrackingAllowed field.';
                }
                field("DataCaptionExpr."; Rec."DataCaptionExpr.")
                {
                    ToolTip = 'Specifies the value of the DataCaptionExpr. field.';
                }
                field(DataCaptionFields; Rec.DataCaptionFields)
                {
                    ToolTip = 'Specifies the value of the DataCaptionFields field.';
                }
                field(EntityName; Rec.EntityName)
                {
                    ToolTip = 'Specifies the value of the EntityName field.';
                }
                field(EntitySetName; Rec.EntitySetName)
                {
                    ToolTip = 'Specifies the value of the EntitySetName field.';
                }
            }

        }
    }
}
