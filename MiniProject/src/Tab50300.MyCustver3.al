/// <summary>
/// Table MyCustVer3 (ID 50300).
/// </summary>
table 50300 MyCustVer3
{
    Caption = 'MyCust';
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
        field(3; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
        }
        field(4; "Sales Person Code"; Text[50])
        {
            Caption = 'Sales Person Code';
            DataClassification = ToBeClassified;
            TableRelation = "SalesPerson/Purchaser" where ("Commission %" = filter('>0'));
        }
        field(5; "Sales Person Name"; Text[50])
        {
            Caption = 'Sales Person Name';
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = lookup("SalesPerson/Purchaser".Name where(Code = field("Sales Person Code")));
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
