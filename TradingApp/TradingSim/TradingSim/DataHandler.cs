using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TradingSim.ViewModel
{
    public class DataHandler
    {

        public ObservableCollection<Data> ResultsData 
        {
            get;
            set; 
        }

        public void LoadData()
        {
            ObservableCollection<Data> resultsData = new ObservableCollection<Data>();


            //Temp for testing purposes 

            resultsData.Add(new Data {StockName =  "Stock1",
                                       Time = new DateTime(),
                                       FairPrice = 1.136});
            resultsData.Add(new Data {StockName = "Stock2", 
                                       Time = new DateTime(),
                                       FairPrice = 1.234});
            resultsData.Add(new Data
            {
                StockName = "Stock3",
                Time = new DateTime(),
                FairPrice = 1.234
            });

            ResultsData = resultsData; 
        }

    }
}
