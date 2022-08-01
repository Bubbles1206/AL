/// <summary>
/// TableExtension ResourceTableExt.TableExt.al (ID 56701) extends Record Resource.
/// </summary>
tableextension 56701 "ResourceTableExt.TableExt.al" extends Resource
{
    fields
    {
        field(56701; "Internal/External"; Enum "Internal/ExternalEnum")
        {
            Caption = 'Internal/External';
            DataClassification = ToBeClassified;
        }
        field(56702; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = ToBeClassified;
        }
        field(56703; "Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
            DataClassification = ToBeClassified;
        }
    }
}
