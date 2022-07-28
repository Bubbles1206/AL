/// <summary>
/// PageExtension MyCustVer3ListExt (ID 50350) extends Record MyCustListVer3.
/// </summary>
pageextension 50350 MyCustVer3ListExt extends MyCustListVer3
{
    layout
    {
        addlast(General)
        {
            
                field("Customer Class";Rec."Customer Class")
                {
                    ToolTip = 'Customer Class field';
                    ApplicationArea = All;
                }
        }
    }
}
