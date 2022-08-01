/// <summary>
/// Table Seminar (ID 56700).
/// </summary>
table 56700 Seminar
{
    Caption = 'Seminar';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Seminar Duration"; Decimal)
        {
            Caption = 'Seminar Duration';
            DataClassification = ToBeClassified;
        }
        field(4; "Minimum Participants"; Integer)
        {
            Caption = 'Minimum Participants';
            DataClassification = ToBeClassified;
        }
        field(5; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = ToBeClassified;
        }
        field(6; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
            DataClassification = ToBeClassified;
        }
        field(7; Blocked; Blob)
        {
            Caption = 'Blocked';
            DataClassification = ToBeClassified;
        }
        field(8; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            DataClassification = ToBeClassified;
        }
        field(9; Comment; Boolean)
        {
            Caption = 'Comment';
            DataClassification = ToBeClassified;
        }
        field(10; "Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
            DataClassification = ToBeClassified;
        }
        field(11; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            DataClassification = ToBeClassified;
        }
        field(12; "Vat Prod. Posting Group"; Code[10])
        {
            Caption = 'Vat Prod. Posting Group';
            DataClassification = ToBeClassified;
        }
        field(13; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
