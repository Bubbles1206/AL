/// <summary>
/// Page MyCustListVer3 (ID 50300).
/// </summary>
page 50300 MyCustListVer3
{
    ApplicationArea = All;
    Caption = 'MyCustListVer3';
    PageType = List;
    SourceTable = MyCustVer3;
    UsageCategory = Administration;
    CardPageId = MyCustCardVer3;
    
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
}
