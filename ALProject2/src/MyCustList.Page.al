/// <summary>
/// Page MyCustList (ID 50100).
/// </summary>
page 50100 MyCustList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = MyCust;
    CardPageId = MyCustCardPage;
    Editable = false;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(NumberField; Rec."CustNo")
                {
                    ApplicationArea = All;
                    
                
                }
                field(NameField; Rec.CustName)
                {
                    ApplicationArea = All;
                }
            }
        }

        area(FactBoxes)
        {

        }
    }
    
    actions
    {
        area(Processing)
        {
            action("Useless Button")
            {
                Promoted = true;
                PromotedOnly = true;
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    Message('You have pressed a useless button');
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}