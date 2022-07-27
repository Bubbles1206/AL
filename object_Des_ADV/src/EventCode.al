/// <summary>
/// Codeunit EventSamples (ID 50150).
/// </summary>
codeunit 50150 EventSamples
{
    [EventSubscriber(ObjectType::Table, Database:: MyCustVer2, 'OnAFterInsertEvent', '', true, true)]
    local procedure AfterInsertEvent()
    begin
        Message('This is the After Insert event Procedure');

    end;

    [EventSubscriber(ObjectType::Table, Database::MyCustVer2, 'OnBeforeValidateEvent', 'Name', true, true)]
    local procedure NameProcedure()
    begin
        Message('This is the on before validate event Procedure');
    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnBeforeValidateContact', '', true, true)]
    local procedure ContactProcUnit()
    begin
        Message('Some message before validation on contact on the customer table');
    end;
}