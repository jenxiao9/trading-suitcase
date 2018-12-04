using LiveCharts;
using LiveCharts.Configurations;
using LiveCharts.Defaults;
using LiveCharts.Wpf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
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
using TradingSim.Model;
using TradingSim.ViewModel;

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


            var dayConfig = Mappers.Xy<DateModel>()
               .X(dateModel => dateModel.DateTime.Ticks / TimeSpan.FromSeconds(1).Ticks)
                .Y(dateModel => dateModel.Value);


            List<Data> _cpuResultValues = DataHandler.AllCPUResults;
            List<Data> _fpgaResultValues = DataHandler.AllFPGAResults;

            List<DateModel> CpuResultValues = GetTimeGraphValues(_cpuResultValues);
            CpuValues = new ChartValues<DateModel> { };
            CpuValues.AddRange(CpuResultValues);

            var CpulineSeries = new LineSeries
            {
                Values = CpuValues,
                StrokeThickness = 4,
                Fill = Brushes.Transparent,
                PointGeometrySize = 15,
                DataLabels = true
            };


            SeriesCollection = new SeriesCollection(dayConfig) { CpulineSeries };

            Formatter = value => new DateTime((long)(value * TimeSpan.FromSeconds(1).Ticks)).ToString("mm:ss.fff");

            DataContext = this;
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

        private List<DateModel> GetTimeGraphValues(List<Data> input)
        {
            //var output = input.ToList<DateModel>(x => x.CpuValues)
            //return new List<DateModel>(input) {
            //    -> ; 
            DateTime baseTime = new DateTime(0); 
            List<DateModel> newDateModel = new List<DateModel>();
            for (int i = 0; i < input.Count(); i ++)
            {
                Data currData = input[i];
                baseTime = baseTime.Add(currData.Time); 
                newDateModel.Add(new DateModel { DateTime = baseTime, Value = i }); 
            }


            return newDateModel; 
            //input.ForEach(i => newDate.Add(new DateModel {DateTime = i.Time, Value = i. })); 
        }



        public Func<double, string> Formatter { get; set; }
        public ChartValues<DateModel> CpuValues { get; set; }
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

