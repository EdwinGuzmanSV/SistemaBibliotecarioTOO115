//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace blankspaces.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class USUARIO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public USUARIO()
        {
            this.CATERGORIAs = new HashSet<CATERGORIA>();
            this.MATERIALBIBLIOGRAFICOes = new HashSet<MATERIALBIBLIOGRAFICO>();
            this.PENALIZACIONs = new HashSet<PENALIZACION>();
            this.PRESTAMOes = new HashSet<PRESTAMO>();
        }
    
        public string IDUSUARIO { get; set; }
        public string IDPERSONA { get; set; }
        public Nullable<decimal> IDROL { get; set; }
        public string CONTRASENA { get; set; }
        public Nullable<int> ESTADO { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CATERGORIA> CATERGORIAs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MATERIALBIBLIOGRAFICO> MATERIALBIBLIOGRAFICOes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PENALIZACION> PENALIZACIONs { get; set; }
        public virtual PERSONA PERSONA { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PRESTAMO> PRESTAMOes { get; set; }
        public virtual ROL ROL { get; set; }
    }
}
