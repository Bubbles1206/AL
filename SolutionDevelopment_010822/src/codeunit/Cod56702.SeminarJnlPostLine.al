/// <summary>
/// Codeunit SeminarJnlPostLine (ID 56702).
/// </summary>
codeunit 56702 SeminarJnlPostLine
{
    TableNo = "Seminar Journal Line";

    trigger OnRun()
    begin
        RunWithCheck(Rec);
    end;

    var
        SeminarJnlLine: Record "Seminar Journal Line";
        SeminarLedgerEntry: Record "Seminar Ledger Entry";
        SeminarRegister: Record "Seminar Register";
        SeminarJnlCheckLine: Codeunit SeminarJnlCheckLine;
        NextEntryNo: Integer;


    /// <summary>
    /// RunWithCheck.
    /// </summary>
    /// <param name="SeminarJnlLine2">Record "Seminar Journal Line".</param>
    procedure RunWithCheck(SeminarJnlLine2: Record "Seminar Journal Line")
    begin
        SeminarJnlLine.Copy(SeminarJnlLine2);

        Code();

        SeminarJnlLine2 := SeminarJnlLine;
    end;

    /// <summary>
    /// Code.
    /// </summary>
    procedure Code()
    begin
        With SeminarJnlLine Do begin
            if EmptyLine() then
                EXIT;
            SeminarJnlCheckLine.RunCheck(SeminarJnlLine);
            if NextEntryNo = 0 then begin
                SeminarLedgerEntry.LockTable();
                if SeminarLedgerEntry.FindLast() then
                    NextEntryNo := SeminarLedgerEntry."Entry No.";
                NextEntryNo := NextEntryNo + 1;
            end;
            if "Document Date" = 0D then
                "Document Date" := "Posting Date";
            if SeminarRegister."No." = 0 then begin
                SeminarRegister.LockTable();
                if (not SeminarRegister.FindLast()) or (SeminarRegister."To Entry No." <> 0) then begin
                    SeminarRegister.Init();
                    SeminarRegister."No." := SeminarRegister."No." + 1;
                    SeminarRegister."From Entry No." := NextEntryNo;
                    SeminarRegister."To Entry No." := NextEntryNo;
                    SeminarRegister."Creation Date" := Today();
                    SeminarRegister."Source Code" := "Source Code";
                    SeminarRegister."Journal Batch Name" := "Journal Batch Name";
                    SeminarRegister."User ID" := UserId;
                    SeminarRegister.Insert();
                end;
            end;
            SeminarRegister."To Entry No." := NextEntryNo;
            SeminarRegister.Modify();
//----------Seminar Ledger Entry -----
            SeminarLedgerEntry.Init();
            SeminarLedgerEntry."Seminar No." := "Seminar No.";
            SeminarLedgerEntry."Posting Date" := "Posting Date";
            SeminarLedgerEntry."Document Date" := "Document Date";
            SeminarLedgerEntry."Entry Type" := "Entry Type";
            SeminarLedgerEntry."Document No." := "Document No.";
            SeminarLedgerEntry.Description := Description;
            SeminarLedgerEntry."Bill-to Customer No." := "Bill-to Customer No.";
            SeminarLedgerEntry."Charge Type" := "Charge Type";
            SeminarLedgerEntry.Type := Type;
            SeminarLedgerEntry.Quantity := Quantity;
            SeminarLedgerEntry."Unit Price" := "Unit Price";
            SeminarLedgerEntry."Total Price" := "Total Price";
            SeminarLedgerEntry."Participant Contact No." := "Participant Contact No.";
            SeminarLedgerEntry."Participant Name" := "Participant Name";
            SeminarLedgerEntry.Chargeable := Chargeable;
            SeminarLedgerEntry."Room Resource No." := "Room Resource No.";
            SeminarLedgerEntry."Instructor Resource No." := "Instructor Resource No.";
            SeminarLedgerEntry."Starting Date" := "Starting Date";
            SeminarLedgerEntry."Seminar Registration No." := "Seminar Registration No.";
            SeminarLedgerEntry."Res. Ledger Entry No." := "Res. Ledger Entry No.";
            SeminarLedgerEntry."Source Type" := "Source Type";
            SeminarLedgerEntry."Source No." := "Source No.";
            SeminarLedgerEntry."Journal Batch Name" := "Journal Batch Name";
            SeminarLedgerEntry."Source Code" := "Source Code";
            SeminarLedgerEntry."Reason Code" := "Reason Code";
            SeminarLedgerEntry."No. Series" := "Posting No. Series";
            SeminarLedgerEntry."User ID" := USERID;
            SeminarLedgerEntry."Entry No." := NextEntryNo;
            SeminarLedgerEntry.INSERT();
            NextEntryNo := NextEntryNo + 1;
        end;
    end;
}
