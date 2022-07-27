/// <summary>
/// Page MyCustVer2Card (ID 50151).
/// </summary>
page 50151 MyCustVer2Card
{
    Caption = 'MyCustVer2Card';
    PageType = Card;
    SourceTable = MyCustVer2;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Sales Person Code"; Rec."Sales Person Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Person Code field.';
                    Importance = Additional;
                }
                field("Sales Person Name"; Rec."Sales Person Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Person Name field.';
                    Importance = Additional;
                    Editable = false;
                }
            }

            group(Address)
            {
                field("Address Field"; Rec.Address)
                {
                    ApplicationArea = All;
                    //FieldPropertyName = FieldPropertyValue;
                }

                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
    actions
    {
        area(Navigation)
        {
            action("Show Entries")
            {
                RunObject = page CustEntryList;
            }
        }
    }
}
