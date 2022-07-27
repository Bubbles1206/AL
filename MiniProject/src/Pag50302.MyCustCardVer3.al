/// <summary>
/// Page MyCustCardVer3 (ID 50302).
/// </summary>
page 50302 MyCustCardVer3
{
    Caption = 'MyCustCardVer3';
    PageType = Card;
    SourceTable = MyCustVer3;
    
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
            }
        }
    }
    
    actions
    {
        area(Navigation)
        {
            action("Show Entries")
            {
                RunObject = page MyCustEntryListVer3;
            }
        }
    }
}
