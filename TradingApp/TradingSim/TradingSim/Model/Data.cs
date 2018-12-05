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
        private uint _optionId; 
        private float _fairPrice;
        //which transaction is this 
        //how is time represented 
        private TimeSpan _time;

        public string StockName 
        {
            get {return _stockName;} 
            set
            {
                _stockName = value;
                RaisePropertyChanged("StockName");
            }

        }

        public uint OptionId
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
