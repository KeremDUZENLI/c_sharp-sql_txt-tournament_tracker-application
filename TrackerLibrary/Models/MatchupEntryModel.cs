﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrackerLibrary.Models
{
    public class MatchupEntryModel
    {
        /// <summary>
        /// The unique identifier for the matchup entry
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// The unique identifier for the tam
        /// </summary>
        public int TeamCompetingId { get; set; }

        /// <summary>
        /// Respresents one team in the matchup
        /// </summary>
        public TeamModel TeamCompeting { get; set; }
        
        /// <summary>
        /// Respresents the score for this particular team
        /// </summary>
        public double Score { get; set; }

        /// <summary>
        /// The unique identifier for the parent matchup (team)
        /// </summary>
        public int ParentMatchupId { get; set; }

        /// <summary>
        /// Respresents the matchup that this team came from as the winner
        /// </summary>
        public MatchupModel ParentMatchup { get; set; }
    }
}
