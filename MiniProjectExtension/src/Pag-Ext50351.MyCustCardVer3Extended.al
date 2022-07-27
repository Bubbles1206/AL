/// <summary>
/// PageExtension MyCustCardVer3Extended (ID 50351) extends Record MyCustCardVer3.
/// </summary>
pageextension 50351 MyCustCardVer3Extended extends MyCustCardVer3
{
    layout
    {
        addlast(content)
        {
            group(Advanced)
            {
                field("Customer Class";Rec."Customer Class")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
