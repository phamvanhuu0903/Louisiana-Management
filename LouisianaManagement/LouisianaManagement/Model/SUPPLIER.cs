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
    
    public partial class SUPPLIER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SUPPLIER()
        {
            this.OBJECTs = new HashSet<OBJECT>();
        }
    
        public int ID { get; set; }
        public string DISPLAYNAME { get; set; }
        public string ADDRESS_SUPPLIER { get; set; }
        public string PHONE { get; set; }
        public string EMAIL { get; set; }
        public string MORE_INFO { get; set; }
        public Nullable<System.DateTime> CONTRACTDATE { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OBJECT> OBJECTs { get; set; }
    }
}
