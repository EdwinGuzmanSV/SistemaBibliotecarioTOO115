using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using blankspaces.Models;
using System.ComponentModel.DataAnnotations;

namespace blankspaces.ViewModels
{
    public class CategoriaViewModel
    {
        public CATERGORIA CAT1 { get; set; }
        [Required]
        [Display(Name = "Id Categoria")]
        public decimal IDCATEGORIA { get; set; }
        [Required]
        [Display(Name = "Categoria Padre")]
        public Nullable<decimal> CAT_IDCATEGORIA { get; set; }
        [Required]
        [Display(Name = "Quien la Registro")]
        public string ID { get; set; }
        [Required]
        [Display(Name = "Categoria")]
        public string NOMCAT { get; set; }

    }
}