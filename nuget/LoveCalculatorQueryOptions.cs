using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.LoveCalculator
{
    /// <summary>
    /// Query options for the Love Calculator API
    /// </summary>
    public class LoveCalculatorQueryOptions
    {
        /// <summary>
        /// The first name to calculate love compatibility
        /// Example: John
        /// </summary>
        [JsonProperty("name1")]
        public string Name1 { get; set; }

        /// <summary>
        /// The second name to calculate love compatibility
        /// Example: Jane
        /// </summary>
        [JsonProperty("name2")]
        public string Name2 { get; set; }
    }
}
