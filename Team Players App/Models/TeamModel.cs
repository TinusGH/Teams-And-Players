using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace Team_Players_App.Models
{
    public class TeamModel
    {
        public int TeamId { get; set; }

        [Required]
        [DisplayName("Name")]
        public string Name { get; set; }

        [Required]
        [DisplayName("Created Date")]
        public DateTime CreatedDate { get; set; }

        [Required]
        [DisplayName("Is Active")]
        public string IsActive { get; set; }
    }
}