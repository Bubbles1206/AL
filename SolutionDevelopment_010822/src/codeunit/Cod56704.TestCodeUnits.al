codeunit 56704 TestCodeUnits
{
    Subtype = Test;
    [Test]
    [HandlerFunctions('ClickOnOkButtonOnMessages')]
    procedure MyFirstTestFunction()
    begin
        Message('This is my first test function in BC');
        TestProcedureNOtWorking();
    end;

    [Test]
    procedure MySecondTestFunction()
    begin
        asserterror Error('This is my second test function in BC');
    end;

    procedure TestProcedureNOtWorking()
    begin
        Message('This message will not be shown.');
    end;

    [MessageHandler]
    procedure ClickOnOkButtonOnMessages(Message: Text[1024])
    begin
    end;


    [Test]
    procedure CodeUnitTest()
    begin
    
    end;
}
