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
    
    public partial class INPUTINFO
    {
        public string ID { get; set; }
        public string ID_OBJECT { get; set; }
        public string ID_INPUT { get; set; }
        public Nullable<int> SOLUONG { get; set; }
        public Nullable<double> INPUT_PRICE { get; set; }
        public Nullable<double> OUTPUT_PRICE { get; set; }
        public string STATUS { get; set; }
    
        public virtual INPUT INPUT { get; set; }
        public virtual OBJECT OBJECT { get; set; }
    }
}
