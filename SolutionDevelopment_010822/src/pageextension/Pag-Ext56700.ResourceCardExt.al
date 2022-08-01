/// <summary>
/// PageExtension "ResourceCardExt" (ID 56700) extends Record Resource Card.
/// </summary>
pageextension 56700 ResourceCardExt extends "Resource Card"
{
    layout
    {
        addLast(General)
        {
            field("Internal/External"; Rec."Internal/External")
            {
                ApplicationArea = All;
                ToolTip = 'Is it an Internal/External resource';
            }
            field("Quantity Per Day"; Rec."Quantity Per Day")
            {
                ApplicationArea = All;
                ToolTip = 'Quantity per Day.';
            }
        }

        addlast(content)
        {
            group(Room) //Fast-Tab
            {
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                    ApplicationArea = All;
                    ToolTip = 'Maximum Particiapants';

                }
            }
        }
    }
}
