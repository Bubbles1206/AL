/// <summary>
/// Table CustEntryTable (ID 50151).
/// </summary>
table 50151 CustEntryTable
{
    Caption = 'CustEntryTable';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Entry No."; Code[20])
        {
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = ToBeClassified;
            TableRelation = MyCustVer2;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = ToBeClassified;
        }
        field(4; "Document Type"; Enum TypeEnum)
        {
            Caption = 'Document Type';
            DataClassification = ToBeClassified;
            //OptionMembers = Invoice,Payment;
        }
        field(5; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = ToBeClassified;
        }
        field(6; "Type"; Option)
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
            OptionMembers = GL, Customers, Vendors;
        }
        field(7; "Account Number"; Code[20])
        {
            Caption = 'Account Number';
            DataClassification = ToBeClassified;
            TableRelation = if (Type = const(GL)) "G/L Account" else
            if (Type = const(Customers)) Customer else
            if (Type = const(Vendors)) Vendor;
        }

        field(8; Type2; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Blank;
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
