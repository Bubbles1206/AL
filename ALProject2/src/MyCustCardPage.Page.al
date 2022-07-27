/// <summary>
/// Page MyCustCardPage (ID 50101).
/// </summary>
page 50101 MyCustCardPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MyCust;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Number; Rec.CustNo)
                {
                    ToolTip = 'This is the customer number';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(Name; Rec.CustName)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the name of the customer';
                }
            }
            group(Address)
            {

            }
        }
    }
    
    actions
    {
        area(Creation)
        {
            action("Create Something")
            {
                ApplicationArea = All;
                ToolTip = 'This Will open the MyCust page ';

                trigger OnAction()
                begin
                    page.Run(50101);
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;

    trigger OnModifyRecord(): Boolean
    begin
        Message('Record has been modified!');
    end;
}