/// <summary>
/// TableExtension MyCustVer2ExtTable (ID 50200) extends Record MyCustVer2.
/// </summary>
tableextension 50200 MyCustVer2ExtTable extends MyCustVer2
{
    fields
    {
        field(50200; "Customer Class"; Text[50])
        {
            Caption = 'Customer Class';
            DataClassification = ToBeClassified;
        }
    }

    trigger OnBeforeModify()
    begin
        Message('This is before the base application');
    end;

    trigger OnModify()
    begin
        Message('This is the OnModify Trigger in the extension');
    end;
}

