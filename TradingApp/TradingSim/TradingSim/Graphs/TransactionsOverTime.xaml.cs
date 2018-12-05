using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using LiveCharts;
using LiveCharts.Wpf;

namespace TradingSim.Graphs
{
    /// <summary>
    /// Interaction logic for TransactionsOverTime.xaml
    /// </summary>
    public partial class TransactionsOverTime : UserControl
    {
        public TransactionsOverTime()
        {
            InitializeComponent();

            SeriesCollection a = new SeriesCollection
            {
                new LineSeries
                {
                    Title = "Series 1",
                    Values = new ChartValues<double>{ 4, 6, 5, 2 ,4 }
                }
            };

        }
    }
}
