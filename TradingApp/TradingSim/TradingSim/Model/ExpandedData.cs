using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TradingSim.Model
{
    public class ExpandedData
    {
        public string Stock_Id { get; set; }
        public string Expiry { get; set; }
        public string Strike { get; set; }
        public string Call_Put { get; set; }
        public string Data { get; set; }
    }
}
