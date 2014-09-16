using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for item
/// </summary>
public class item
{
    public int itemid;
    public int pitemid
    {
        get
        {
            return itemid;
        }
    }

    public int qty;

    public int pqty
    {
        get
        {
            return qty;
        }
    }
    public int price;

    public int pprice
    {
        get
        {
            return price;
        }
    }

    public string name;

    public string pname
    {

        get
        {
            return name;
        }
    }

}