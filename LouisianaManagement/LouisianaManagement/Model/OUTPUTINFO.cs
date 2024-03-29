//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LouisianaManagement.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class OUTPUTINFO
    {
        public string ID { get; set; }
        public string ID_OBJECT { get; set; }
        public string ID_OUTPUT { get; set; }
        public int ID_CUSTOMER { get; set; }
        public Nullable<int> COUNT_OUT { get; set; }
        public Nullable<double> INPUT_PRICE { get; set; }
        public Nullable<double> OUTPUT_PRICE { get; set; }
        public string STATUS { get; set; }
    
        public virtual CUSTOMER CUSTOMER { get; set; }
        public virtual OBJECT OBJECT { get; set; }
        public virtual OUTPUT OUTPUT { get; set; }
    }
}
