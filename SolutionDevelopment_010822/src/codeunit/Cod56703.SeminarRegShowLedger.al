/// <summary>
/// Codeunit SeminarRegShowLedger (ID 56703).
/// </summary>
codeunit 56703 SeminarRegShowLedger
{
    TableNo = "Seminar Register";
    
    trigger OnRun()
    begin
        SeminarLedgerEntry.SetRange("Entry No.", Rec."From Entry No.",Rec."To Entry No.");
        //to come back here tomorrow 04/08/22
        page.Run(page::SeminarLedgerEntriesPage);
    end;
    
    var
        SeminarLedgerEntry : Record "Seminar Ledger Entry";
}
