page 56760 "Seminar Role Center"
{
    Caption = 'Seminar Role Center';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            systempart(Control1901377608; MyNotes)
            {
                ApplicationArea = Basic, Suite;
            }
            part(SeminarActivities; "Seminar Activites")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        area(Embedding)
        {
            action(Customers)
            {
                ApplicationArea = All;
                Caption = 'Customers';
                Image = Customer;
                RunObject = Page "Customer List";
                ToolTip = 'View or edit detailed information for the customers that you trade with. From each customer card, you can open related information, such as sales statistics and ongoing orders, and you can define special prices and line discounts that you grant if certain conditions are met.';
            }
            action(Seminars)
            {
                ApplicationArea = All;
                Caption = 'Seminars';
                Image = BookingsLogo;
                RunObject = page "Seminar List";
                ToolTip = 'View or create some training courses for us.';
            }
        }
    }
}
