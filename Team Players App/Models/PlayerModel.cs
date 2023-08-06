using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace Team_Players_App.Models
{
    public class PlayerModel
    {
        public int PlayerID { get; set; }

        [Required]
        [DisplayName("First Name")]
        public string FirstName { get; set; }

        [Required]
        [DisplayName("Last Name")]
        public string LastName { get; set; }

        [Required]
        [DisplayName("Age")]
        public int Age { get; set; }

        [Required]
        [DisplayName("Address")]
        public string Address { get; set; }

        [Required]
        [DisplayName("ID Number")]
        public int ID { get; set; }

        [Required]
        [DisplayName("Selected Team")]
        public string SelectedTeam { get; set; }
    }
}