/// <summary>
/// PageExtension MyCustCardVer2PageExt (ID 50200) extends Record MyCustVer2Card.
/// </summary>
pageextension 50200 MyCustCardVer2PageExt extends MyCustVer2Card
{
    layout
    {
        addlast(content)
        {
            group(Advanced)
            {
                field(CustomerClass; Rec."Customer Class")
                {
                    ApplicationArea = All;
                    //FieldPropertyName = FieldPropertyValue;
                }
            }
        }
    }
}
