using LiveCharts;
using LiveCharts.Defaults;
using LiveCharts.Wpf;
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

namespace TradingSim
{
    /// <summary>
    /// Interaction logic for Graph.xaml
    /// </summary>
    public partial class Graph : UserControl
    {
        public Graph()
        {
            InitializeComponent();
            var r = new Random();
            SeriesCollection = new SeriesCollection
            {
                /*
                new LineSeries
                {
                    Title = "Series 1",
                    Values = new ChartValues<double> { 4, 6, 5, 2 ,4 }
                }*/
                /*
                new LineSeries
                {
                    Values = new ChartValues<ObservablePoint>
                    {
                        new ObservablePoint(1, 5),
                        new ObservablePoint(10, 6),
                        new ObservablePoint(15, 4),
                        new ObservablePoint(23, 2),
                        new ObservablePoint(26, 8),
                        new ObservablePoint(28, 2),
                        new ObservablePoint(30, 9),
                        new ObservablePoint(3, 8)
                    }
                }

            };


            YFormatter = value => value.ToString("C");

            SeriesCollection.Values.Add(new ; 
            Labels = new[] { "Jan", "Feb", "Mar", "Apr", "May" };
            // CpuChartX = new ChartValues<double> { 1, 2, 3, 4 };
            // CpuChartY = new ChartValues<double> { 1, 3, 6, 9 };

            // Labels.Add()
            DataContext = this;*/
            };
        }
        public Func<double, string> YFormatter { get; set; }
        public string[] Labels { get; set; }
        public ChartValues<double> CpuChartX { get; set; }
        public ChartValues<double> CpuChartY { get; set; }
        //public ChartValues<double> FpgaChart { get; set; }
        public SeriesCollection SeriesCollection { get; set; }


        /*
        private void RandomizeOnClick(object sender, RoutedEventArgs e)
        {
            var r = new Random();
            for (var i = 0; i < 20; i++)
            {
                CpuChart[i].X = r.NextDouble() * 10;
                CpuChart[i].Y = r.NextDouble() * 10;
                FpgaChart[i].X = r.NextDouble() * 10;
                FpgaChart[i].Y = r.NextDouble() * 10;
            }
        }*/
    }
}

