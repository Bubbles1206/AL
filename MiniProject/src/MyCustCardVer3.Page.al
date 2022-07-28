/// <summary>
/// Page MyCustCardVer3 (ID 50302).
/// </summary>
page 50302 MyCustCardVer3
{
    Caption = 'MyCustCardVer3';
    PageType = Card;
    SourceTable = MyCustVer3;
    ApplicationArea = All;
    UsageCategory = Administration;

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
                    ToolTip = 'Specifies the value of the Address field.';
                    ApplicationArea = All;
                    //FieldPropertyName = FieldPropertyValue;
                }
            }
            group(Totals)
            {
                field("Total Sales"; Rec."Total Sales")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the  Total Sales field.';
                }
                field("Total Payments"; Rec."Total Payment")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Total Purchases field.';
                }
                field(Balance; Rec.Balance)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Balance field.';
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
                ApplicationArea = All;
                Image = "";
                ToolTip = 'Show Entries.';
                RunObject = page MyCustEntryListVer3;
            }

            action(Refresh)
            {
                ApplicationArea = All;
                Image = "";
                ToolTip = 'Refresh';
                trigger OnAction()
                begin
                    CurrPage.Update();
                end;
            }
        }
    }
}
