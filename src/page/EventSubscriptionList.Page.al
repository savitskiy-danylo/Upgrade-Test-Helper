page 50107 "Event Subscription List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Event Subscription";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Published Function"; "Published Function")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the event publisher function in the publisher object that the event subscriber function subscribes to.';
                }
                field("Publisher Object ID"; "Publisher Object ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ID of the object that contains the event publisher function that publishes the event.';
                }
                field("Publisher Object Type"; "Publisher Object Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of object that contains the event publisher function that publishes the event.';
                }
                field("Subscriber Codeunit ID"; "Subscriber Codeunit ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ID of codeunit that contains the event subscriber function.';
                }
                field("Subscriber Function"; "Subscriber Function")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the event subscriber function in the subscriber codeunit that subscribes to the event.';
                }
                field("Subscriber Instance"; "Subscriber Instance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the event subscription.';
                }
                field(Active; Active)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the event subscription is active.';
                }
                field("Active Manual Instances"; "Active Manual Instances")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies manual event subscriptions that are active.';
                }
                field("Error Information"; "Error Information")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies an error that occurred for the event subscription.';
                }
                field("Event Type"; "Event Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the event type, which can be Business, Integration, or Trigger.';
                }
                field("Number of Calls"; "Number of Calls")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many times the event subscriber function has been called. The event subscriber function is called when the published event is raised in the application.';
                }
                field("Originating App Name"; "Originating App Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the object that triggers the event.';
                }
                field("Originating Package ID"; "Originating Package ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Originating Package ID field.';
                }
            }
        }
    }
}