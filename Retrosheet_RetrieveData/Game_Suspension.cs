//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Retrosheet_RetrieveData
{
    using System;
    using System.Collections.Generic;
    
    public partial class Game_Suspension
    {
        public System.Guid record_id { get; set; }
        public string game_id { get; set; }
        public int inning { get; set; }
        public int sequence { get; set; }
        public int comsequence { get; set; }
        public Nullable<System.DateTime> completion_date { get; set; }
        public string ballpark_id { get; set; }
        public Nullable<int> visitor_team_score { get; set; }
        public Nullable<int> home_team_score { get; set; }
        public Nullable<int> game_outs { get; set; }
    }
}
