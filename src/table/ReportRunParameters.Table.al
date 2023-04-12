table 50101 "Report Run Parameters"
{
    fields
    {
        field(1; KeyField; Integer)
        {

        }
        field(2; "Report Run Parameters"; Enum "Report Run Parameters")
        {

        }
    }

    keys
    {
        key(KeyField; KeyField)
        {
            Clustered = true;
        }
    }
}