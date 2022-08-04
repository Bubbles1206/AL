/// <summary>
/// Unknown Seminar Role Center (ID 56702).
/// </summary>
permissionset 56703 "Seminar Role Admin"
{
    Assignable = true;
    Caption = 'Lab3 Starter', MaxLength = 30;
    Permissions =
        table "Seminar Cue" = X,
        tabledata "Seminar Cue" = RMID;
}
