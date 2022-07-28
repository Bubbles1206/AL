/// <summary>
/// Unknown MyCustver3Basic (ID 50300).
/// </summary>
permissionset 50300 MyCustver3Basic
{
    Assignable = true;
    Caption = 'MyCustver3Basic', MaxLength = 30;
    Permissions =
        table MyCustEntryVer3 = X,
        tabledata MyCustEntryVer3 = RMID,
        table MyCustVer3 = X,
        tabledata MyCustVer3 = RMID,
        page MyCustListVer3 = X,
        page MyCustEntryListVer3 = X,
        page MyCustCardVer3 = X;
}
