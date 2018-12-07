using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TradingSim.Model
{
    public class Data : INotifyPropertyChanged
    {
        private string _stockName;
        private string _optionId; 
        private float _fairPrice;
        //which transaction is this 
        //how is time represented 
        private TimeSpan _time;
        private ExpandedData _expandedData; 

        public string StockName 
        {
            get {return _stockName;} 
            set
            {
                _stockName = value;
                RaisePropertyChanged("StockName");
            }

        }

        public ExpandedData ExpandedData
        {
            get { return _expandedData; }
            set
            {
                _expandedData = value;
                RaisePropertyChanged("ExpandedData");
            }

        }

        public string OptionId
        {
            get { return _optionId; }
            set
            {
                _optionId = value;
                RaisePropertyChanged("OptionId");
            }

        }


        public float FairPrice
        {
            get { return _fairPrice; }
            set
            {
                _fairPrice = value;
                RaisePropertyChanged("value"); 
            }
        }

        public TimeSpan Time
        {
            get { return _time; }
            set
            {
                _time = value;
                RaisePropertyChanged("_time"); 
            }
        }

        public TimeSpan TimeDiff { get; internal set; }

        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            PropertyChangedEventHandler handler = PropertyChanged;
            if (handler != null)
            {
                handler(this, new PropertyChangedEventArgs(propertyName));
            }
        }

    }
}
