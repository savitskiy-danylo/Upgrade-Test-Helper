page 50104 "AllObjWithCaption Lookup"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = AllObjWithCaption;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Object Type"; Rec."Object Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the object type.';
                }
                field("Object Subtype"; Rec."Object Subtype")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the subtype of the object.';
                }
                field("Object ID"; Rec."Object ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the object ID.';
                }
                field("Object Name"; Rec."Object Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the object.';
                }
                field("Object Caption"; Rec."Object Caption")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the caption of the object.';
                }
            }
        }
    }
}