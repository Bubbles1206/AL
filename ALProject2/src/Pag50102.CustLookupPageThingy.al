/// <summary>
/// Page CustLookupPageThingy (ID 50102).
/// </summary>
page 50102 CustLookupPageThingy
{
    ApplicationArea = All;
    Caption = 'CustLookupPageThingy';
    PageType = List;
    SourceTable = CustTableLookup;
    UsageCategory = Administration;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Customer type"; Rec."Customer type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer type field.';
                }
                field("Some Shit"; Rec."Some Shit")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Some Shit field.';
                }
                field(Something; Rec.Something)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Something field.';
                }
            }
        }
    }
}
