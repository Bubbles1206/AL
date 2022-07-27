/// <summary>
/// Table MyCustEntryVer3 (ID 50301).
/// </summary>
table 50301 MyCustEntryVer3
{
    Caption = 'MyCustEntryVer3';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = ToBeClassified;
            TableRelation = MyCustVer3;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = ToBeClassified;
        }
        field(4; "Document Type"; Enum DocTypeEnum)
        {
            Caption = 'Document Type';
            DataClassification = ToBeClassified;
        }
        field(5; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
