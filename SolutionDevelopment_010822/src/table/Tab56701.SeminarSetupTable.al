/// <summary>
/// Table SeminarSetupTable (ID 56701).
/// </summary>
table 56701 SeminarSetupTable
{
    Caption = 'SeminarSetupTable';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }
        field(2; "Seminar Nos."; Code[10])
        {
            Caption = 'Seminar Nos.';
            DataClassification = ToBeClassified;
        }
        field(3; "Seminar Registration Number"; Code[10])
        {
            Caption = 'Seminar Registration Number';
            DataClassification = ToBeClassified;
        }
        field(4; "Posted Seminar Reg. Nos"; Code[10])
        {
            Caption = 'Posted Seminar Reg. Nos';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
