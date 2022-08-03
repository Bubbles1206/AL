/// <summary>
/// Page Seminar List (ID 56701).
/// </summary>
page 56701 "Seminar List"
{
    ApplicationArea = All;
    Caption = 'Seminar List';
    PageType = List;
    SourceTable = Seminar;
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Seminar Card";

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
                }
                field("Seminar Duration"; Rec."Seminar Duration")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Seminar Duration field.';
                }
                field("Seminar Price"; Rec."Seminar Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Seminar Price field.';
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gen. Prod. Posting Group field.';
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Prod. Posting Group field.';
                }
            }
        }
        area(FactBoxes)
        {
            systempart(LinksSystemPart; Links)
            {
                ApplicationArea = RecordLinks;
                Visible = false;
            }
            systempart(NotesSystemPart; Notes)
            {
                ApplicationArea = Notes;
                Visible = true;
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            group(Seminar)
            {
                action(Comments)
                {
                    Image = Comment;
                    RunObject = page "Comment Sheet";
                    RunPageLink = "Table Name" = const(Seminar), "No." = field("No.");
                    ToolTip = 'Add comments for the current Seminar.';
                    ApplicationArea = All;

                }
            }
        }
    }

    trigger OnOpenPage()
    var
        SeminarSetup: Record "Seminar Setup";
        CheckNoSeries: Notification;

        begin
            SeminarSetup.get();
            if SeminarSetup."Seminar Nos." = '' then begin
                CheckNoSeries.Message('No Number series is setup for seminars yet, would you like to create a default setup?');
                CheckNoSeries.AddAction('Setup No Series', Codeunit:: SeminarNotification, 'CreateNoSeries');
                CheckNoSeries.AddAction('Ignore', Codeunit:: SeminarNotification, 'IgnoreNotification');
                CheckNoSeries.SetData('SeminarNumber', Rec."No.");
                CheckNoSeries.Send();
            end;
        end;
}
