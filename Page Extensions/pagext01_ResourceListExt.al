pageextension 50101 "CSD ResourceListExt" extends "Resource List"
{
    layout
    {
        // Add changes to page layout here
        modify(Type)
        {
            Visible = Showtype
        }
        addafter(Type)
        {
            field("CSD Resouce Type")
            { }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField
            }
        }
    actions
    {
        // Add changes to page actions here
    }

    trigger OnOpenPage()
    begin
        Showtype := (GetFilter(Type) <> '');
        ShowMaxField := (GetFilter(Type) = format(Type::Machine));
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        Showtype: Boolean;
}