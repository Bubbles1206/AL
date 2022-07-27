/// <summary>
/// Page MyCustVer2List (ID 50150).
/// </summary>
page 50150 MyCustVer2List
{
    ApplicationArea = All;
    Caption = 'MyCustVer2List';
    PageType = List;
    SourceTable = MyCustVer2;
    UsageCategory = Administration;
    CardPageId = MyCustVer2Card;
    
    layout
    {
        area(content)
        {
            repeater(General)
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

                    trigger OnValidate()
                    begin
                        Message('This is the onvalidate trigger on the field on the page');
                        onBeforeChangeName();
                    end;
                }
            }
        }
    }


    [IntegrationEvent(true, false)]
    local procedure onBeforeChangeName()
    begin
    end;

    // local procedure onBeforeChangeName()
    // var
    //     myInt: Integer;
    // begin
        
    // end;
}
