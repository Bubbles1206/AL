/// <summary>
/// Unknown BasicSet2 (ID 56701).
/// </summary>
permissionset 56701 BasicSet2
{
    Assignable = true;
    Caption = 'BasicSet2', MaxLength = 30;
    Permissions =
        //table SeminarSetupTable = X,
        //tabledata SeminarSetupTable = RMID,
        table "Seminar Setup" = X,
        tabledata "Seminar Setup" = RMID,
        table Seminar = X,
        tabledata Seminar = RMID,
        table "Seminar Comment Line" = X,
        tabledata "Seminar Comment Line" = RMID,
        table "Seminar Registration Header" = X,
        tabledata "Seminar Registration Header" = RMID,
        table "Seminar Registration Line" = X,
        tabledata "Seminar Registration Line" = RMID,
        table "Seminar Charge" = X,
        tabledata "Seminar Charge" = RMID,
        codeunit SeminarNotification = X,
        page "Seminar Card" = X,
        page "Seminar Setup" = X,
        page "Seminar List" = X,
        page "Seminar Comment Sheet" = X,
        page "Seminar Comment List" = X;
}
