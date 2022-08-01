/// <summary>
/// PageExtension "ResourceListExt" (ID 56701) extends Record Resource List.
/// </summary>
pageextension 56701 ResourceListExt extends "Resource List"
{

    layout
    {
        addlast(Control1)
        {
            field("Internal/External"; Rec."Internal/External")
            {
                ApplicationArea = All;
                ToolTip = 'Is the resource Internal/External?';
                Visible = ShowType;
            }


            field("MaxParticipants"; Rec."Maximum Participants")
            {
                ApplicationArea = All;
                ToolTip = 'Maximum Particapants';
                Visible = ShowMaxParticipants;
            }
        }

    }

    var
        [InDataSet]
        ShowType: boolean;

    var
        [InDataSet]
        ShowMaxParticipants: boolean;



    trigger OnOpenPage()
    begin
        Rec.FILTERGROUP(3);
        ShowType := Rec.GETFILTER(Type) = '';
        ShowMaxParticipants := Rec.GETFILTER(Type) = FORMAT(Rec.Type::Machine);
        Rec.FILTERGROUP(0);
    end;
}
