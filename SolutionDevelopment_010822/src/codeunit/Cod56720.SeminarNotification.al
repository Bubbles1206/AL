/// <summary>
/// Codeunit "SeminarNotification" (ID 56720).
/// </summary>
codeunit 56720 SeminarNotification
{
    /// <summary>
    /// CreateNoSeries.
    /// </summary>
    /// <param name="NotificationParm">Notification.</param>
    procedure CreateNoSeries(NotificationParm: Notification)
    var
        NoSeries: Record "No. Series";
        NoSeriesLines: Record "No. Series Line";
        SeminarSetup: Record "Seminar Setup";

    begin
        If not (NoSeries.get('Sem')) then begin
        NoSeries.Init();
        NoSeries.Code := 'Sem';
        NoSeries.Description := 'Seminar Numbers';
        NoSeries."Default Nos." := true;
        NoSeries.Insert();
        NoSeriesLines.Init();
        NoSeriesLines."Series Code" := NoSeries.code;
        NoSeriesLines."Starting No." := 'Sem001';
        NoSeriesLines."Ending No." := 'Sem999';
        NoSeriesLines.Insert();
        end;
    
    SeminarSetup.Get();
    SeminarSetup."Seminar Nos." := NoSeries.Code;
    SeminarSetup.Modify();

    // var
    //     Text NotificationParm.GetData('SeminarNumber');
    
    end;

    
    /// <summary>
    /// IgnoreNotification.
    /// </summary>
    /// <param name="NotificationParm">Notification.</param>
    procedure IgnoreNotification(NotificationParm: Notification)
    // var
    //     myInt: Integer;
    begin
        
    end;
}
