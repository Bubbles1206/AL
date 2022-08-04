/// <summary>
/// PageExtension SourceCodeSetupPageExtension (ID 56703) extends Record Source Code Setup.
/// </summary>
pageextension 56703 SourceCodeSetupPageExtension extends "Source Code Setup"
{
    layout
    {
        addlast(content)
        {
            group("Seminar Management")
            {
                field(Seminar; Rec.Seminar)
                {
                    ToolTip = 'Seminar';
                    Caption = 'Seminar';
                    ApplicationArea = All;
                    //FieldPropertyName = FieldPropertyValue;
                }
            }
        }
    }
}
