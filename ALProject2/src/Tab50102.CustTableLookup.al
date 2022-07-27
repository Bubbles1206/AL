/// <summary>
/// Table CustTableLookup (ID 50102).
/// </summary>
table 50102 CustTableLookup
{
    Caption = 'CustTableLookup';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Some Shit"; Code[20])
        {
            Caption = 'Some Shit';
            DataClassification = ToBeClassified;
        }
        field(2; "Customer type"; Option)
        {
            Caption = 'Customer type';
            DataClassification = ToBeClassified;
            OptionMembers = Boring, Useless, MONEY;
        }
        field(3; "Something"; Text[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = MyCust;
        }
    }

    keys
    {
        key(PK; "Some Shit")
        {
            Clustered = true;
        }
    }
}
