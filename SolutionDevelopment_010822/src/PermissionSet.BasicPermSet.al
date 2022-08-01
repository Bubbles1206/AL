/// <summary>
/// Unknown BasicPermSet (ID 56701).
/// </summary>
permissionset 56700 BasicPermSet
{
    Assignable = true;
    Caption = 'Basic Permission Set', MaxLength = 30;
    Permissions =
        table SeminarSetupTable = X,
        tabledata SeminarSetupTable = RMID,
        table Seminar = X,
        tabledata Seminar = RMID;
        
}
