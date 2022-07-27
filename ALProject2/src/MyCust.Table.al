/// <summary>
/// Table Test (ID 50100).
/// </summary>
table 50100 MyCust
{
    //DataPerCompany = true;
    Caption = 'My Customer';
    DataClassification = ToBeClassified;
    

    fields
    {
        field(1;CustNo; Integer)
        {
            DataClassification = ToBeClassified;
            caption = 'Number';

            trigger OnValidate()
            begin
                Message('This is a validate trigger');
            end;
            
            trigger OnLookup()
            begin
                Message('This is a Lookup trigger');
            end;
            
        }

        field(2;CustName; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(PrimaryKey; CustNo)
        {
            //Clustered = true;
        }
        

    }

    // Brick or dropdown something here
    // fieldgroups
    // {
    //     fieldgroup()
    // }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        Message('This is an insert trigger');
        
    end;
    
    trigger OnModify()
    begin
        Message('This is a modify trigger');
        
    end;
    
    trigger OnDelete()
    begin
        Message('This is a delete trigger');
        
    end;
    
    trigger OnRename()
    begin
        Message('This is a rename trigger');
    end;
    
}