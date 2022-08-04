/// <summary>
/// Codeunit SeminarJnlCheckLine (ID 56701).
/// </summary>
codeunit 56701 "SeminarJnlCheckLine"
{
    TableNo = "Seminar Journal Line";
    
    trigger OnRun()
    begin
        RunCheck(Rec);
    end;
    
    var
    "G/L Setup" : Record "General Ledger Setup";
    "User Setup" : Record "User Setup";
    "AllowPostingFrom" : Date;
    "AllowPostingTo" : Date;
    Text000Err : Label 'Cannot be a closing date';
    Text001Err : Label 'is not within your range of allowed posting dates';

    /// <summary>
    /// RunCheck.
    /// </summary>
 /// <param name="SemJnlLine">Record "Seminar Journal Line".</param>
 
    procedure RunCheck(SemJnlLine: Record "Seminar Journal Line")
    
    begin
        WITH SemJnlLine DO BEGIN
            IF EmptyLine() THEN
                TESTFIELD("Posting Date");
                TESTFIELD("Instructor Resource No.");
                TESTFIELD("Seminar No.");

                CASE "Charge Type" OF
                "Charge Type"::Instructor:
                TESTFIELD("Instructor Resource No.");
                "Charge Type"::Room:
                TESTFIELD("Room Resource No.");
                "Charge Type"::Participant:
                TESTFIELD("Participant Contact No.");
                END;
                IF Chargeable THEN
                    TESTFIELD("Bill-to Customer No.");
                IF "Posting Date" = CLOSINGDATE("Posting Date") THEN
                    FIELDERROR("Posting Date",Text000Err);
                IF (AllowPostingFrom = 0D) AND (AllowPostingTo = 0D) THEN BEGIN
                IF USERID <> '' THEN
                    IF "User Setup".GET(USERID) THEN BEGIN
                        AllowPostingFrom := "User Setup"."Allow Posting From";
                        AllowPostingTo := "User Setup"."Allow Posting To";
                    END;
                IF (AllowPostingFrom = 0D) AND (AllowPostingTo = 0D) THEN BEGIN
                    "G/L Setup".GET();
                    AllowPostingFrom := "G/L Setup"."Allow Posting From";
                    AllowPostingTo := "G/L Setup"."Allow Posting To";
                    END;
                IF AllowPostingTo = 0D THEN
                    AllowPostingTo := 99991231D;
                END;
                IF ("Posting Date" < AllowPostingFrom) OR ("Posting Date" > AllowPostingTo)
                    THEN
                    FIELDERROR("Posting Date",Text001Err);
                
            IF ("Document Date" <> 0D) THEN
                IF ("Document Date" = CLOSINGDATE("Document Date")) THEN
                    FIELDERROR("Document Date",Text000Err);

            EXIT;
        END;
    end;
    
}
