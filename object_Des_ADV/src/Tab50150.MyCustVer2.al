/// <summary>
/// Table MyCustVer2 (ID 50150).
/// </summary>
table 50150 MyCustVer2
{
    Caption = 'MyCustVer2';
    DataClassification = ToBeClassified;
    Extensible = true;
    LookupPageId = MyCustVer2List;
    DataCaptionFields = "No.", Name;
    
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
            trigger OnValidate()
            begin
                Message('this is the on validate in the table');
            end;
        }
        field(3; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
        }
        field(4; "Phone Number"; Text[50])
        {
            Caption = 'Phone Number';
            DataClassification = ToBeClassified;
        }
        field(5; "Sales Person Code"; Code[20])
        {
            Caption = 'Sales Person Code';
            DataClassification = ToBeClassified;
            TableRelation = "SalesPerson/Purchaser" where ("Commission %" = filter('>0'));
        }
        field(6; "Sales Person Name"; Text[50])
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

    fieldgroups
    {
        fieldgroup(Brick; "No.", Name, "Phone Number"){}
        fieldgroup(DropDown; "No.", Name, "Phone Number"){}
    }

    trigger OnModify()
    begin
        Message('This is OnModify in the Base Table');
    end;
}
