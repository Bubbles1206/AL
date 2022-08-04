page 56704 "Seminar Register"
{
    ApplicationArea = All;
    Caption = 'Seminar Register';
    PageType = List;
    SourceTable = "Seminar Register";
    UsageCategory = Administration;
    Editable = false;
    
    
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
                field("Creation Date"; Rec."Creation Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Creation Date field.';
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User ID field.';
                }
                field("Source Code"; Rec."Source Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Source Code field.';
                }
                field("Journal Batch Name"; Rec."Journal Batch Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Journal Batch Name field.';
                }
                field("From Entry No."; Rec."From Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the From Entry No. field.';
                }
                field("To Entry No."; Rec."To Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the To Entry No. field.';
                }
            }
        }

        area(factboxes)
        {
            systempart(SemRegListLinks; Links)
            {
                ApplicationArea = All;
            }
            systempart(SemRegListNotes; Notes)
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Register")
            {
                Image = WarrantyLedger;
                PromotedOnly = true;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Register';
                Caption = 'Register';
                ApplicationArea = All;
                RunObject = Codeunit SeminarRegShowLedger;
            }
        }
    }
}
