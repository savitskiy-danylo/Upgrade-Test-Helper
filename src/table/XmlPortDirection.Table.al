table 50102 "XmlPort Direction"
{

    fields
    {
        field(1; KeyField; Integer)
        {
            DataClassification = ToBeClassified;

        }

        field(2; "XmlPort Direction"; Enum "XmlPort Direction")
        {
        }
    }

    keys
    {
        key(Key1; KeyField)
        {
            Clustered = true;
        }
    }
}