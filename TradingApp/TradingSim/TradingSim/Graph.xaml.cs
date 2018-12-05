﻿using LiveCharts;
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


            var dayConfig = Mappers.Xy<DateModel>()
               .X(dateModel => dateModel.DateTime.Ticks / TimeSpan.FromMilliseconds(1).Ticks)
                .Y(dateModel => dateModel.Value);


            List<Data> _cpuResultValues = DataHandler.AllCPUResults;
            List<Data> _fpgaResultValues = DataHandler.AllFPGAResults;

            List<DateModel> CpuResultValues = GetTimeGraphValues(_cpuResultValues);
            CpuValues = new ChartValues<DateModel> { };
            CpuValues.AddRange(CpuResultValues);

            var CpulineSeries = new LineSeries
            {
                Values = CpuValues,
                StrokeThickness = 1,
                Fill = Brushes.Transparent,
                PointGeometrySize = 4,
            };


            SeriesCollection = new SeriesCollection(dayConfig) { CpulineSeries };

            Formatter = value => new DateTime((long)(value * TimeSpan.FromMilliseconds(1).Ticks)).ToString("ss.ffff");

            DataContext = this;
     
           
        }

        private List<DateModel> GetTimeGraphValues(List<Data> input)
        {
            //var output = input.ToList<sDateModel>(x => x.CpuValues)
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


     
    }
}

