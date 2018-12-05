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
using System.Windows.Threading;
using TradingSim.Model;
using TradingSim.ViewModel;
using LiveCharts;
using LiveCharts.Defaults;
using LiveCharts.Wpf;
using LiveCharts.Configurations;
using System.Runtime.Serialization;

namespace TradingSim
{

    public class DateModel
    {
        public System.DateTime DateTime { get; set; }
        public int Value { get; set; }
    }


    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Queue<string> testQ = new Queue<string>();
        Queue<int> timeQ = new Queue<int>();
        private DataHandler dataHandler;

        private Queue<Data> cpuQueue;
        private Queue<Data> fpgaQueue;

        private DispatcherTimer timerCpu;
        private DispatcherTimer timerFPGA;

        private int trans_fpga;
        private int trans_cpu;

        private DateTime baseDateFpga = new DateTime(0);
        private DateTime baseDateCpu = new DateTime(0);

        public bool started; 
        public MainWindow()
        {

            dataHandler = new DataHandler();

            dataHandler.LoadData();

            //can_click = false;

            InitializeComponent();



            var dayConfig = Mappers.Xy<DateModel>()
               .X(dateModel => dateModel.DateTime.Ticks / TimeSpan.FromMilliseconds(1).Ticks)
                .Y(dateModel => dateModel.Value);


            CpuValues = new ChartValues<DateModel> { };
            FpgaValues = new ChartValues<DateModel> { };


            var CpulineSeries = new LineSeries
            {
                Values = CpuValues,
                StrokeThickness = 4,
                Fill = Brushes.Transparent,
                PointGeometrySize = 15,
                DataLabels = true
            };

            var FpgalineSeries = new LineSeries
            {
                Values = FpgaValues,
                StrokeThickness = 4,
                Fill = Brushes.Transparent,
                PointGeometrySize = 15,
                DataLabels = true
            };


            SeriesCollection = new SeriesCollection(dayConfig){FpgalineSeries, CpulineSeries};
            Console.WriteLine(baseDateCpu.ToString());


            Formatter = value => new DateTime((long)(value * TimeSpan.FromMilliseconds(1).Ticks)).ToString("mm:ss.fff");

            started = false; 
            DataContext = this;
            resumebutton.IsEnabled = false;
            stopbutton.IsEnabled = false;
        }

        public ChartValues<DateModel> FpgaValues { get; set; }
        public ChartValues<DateModel> CpuValues { get; set; }
        public SeriesCollection SeriesCollection { get; set; }
        public Func<double, string> Formatter { get; set; }

        void Start_Button_Click(object sender, RoutedEventArgs e)
        {
            trans_fpga = 0;
            trans_cpu = 0;
            baseDateCpu = new DateTime(0);
            baseDateFpga = new DateTime(0);
            resumebutton.IsEnabled = true;
            stopbutton.IsEnabled = true;
            started = true; 

            FpgaValues.Clear();
            CpuValues.Clear(); 

            //Load data from file when clicked on. 
            //TODO: Add start button on home page?? 
            //DataHandler.LoadData();
            cpuQueue = new Queue<Data>(dataHandler.GetCpuResults());
            fpgaQueue = new Queue<Data>(dataHandler.GetFpgaResults());

            timerCpu = new DispatcherTimer();
            timerCpu.Interval = TimeSpan.FromMilliseconds(1);
            timerFPGA = new DispatcherTimer();
            timerFPGA.Interval = TimeSpan.FromMilliseconds(1);

            timerCpu.Tick += timerCpu_Tick;
            timerCpu.Start();
            timerFPGA.Tick += timerFPGA_Tick; 



            timerFPGA.Start();
           
        }


        void Stop_Button_Click(object sender, RoutedEventArgs e)
        {
     
                timerCpu.Stop();
                timerFPGA.Stop();

        }
        void Resume_Button_Click(object sender, RoutedEventArgs e)
        {
                timerCpu.Start();
                timerFPGA.Start();

        }

        void timerCpu_Tick(object sender, EventArgs e)
        {
            timerCpu.Stop();
            try
            {
                trans_cpu++; 
                Data dataPoint = cpuQueue.Dequeue();
                fairprice_cpu.Text = dataPoint.FairPrice.ToString();
                stock_cpu.Text = dataPoint.OptionId.ToString();
                time_cpu.Text = dataPoint.Time.ToString();
                transaction_cpu.Text = trans_cpu.ToString();

                //Plot point 
                timerCpu.Interval = dataPoint.Time;

                DateTime newTime = baseDateCpu.Add(dataPoint.Time);

                Console.WriteLine(dataPoint.Time.ToString()); 
                //Console.WriteLine(dt.ToString()); 
                DateModel dtpoint = new DateModel { DateTime = newTime, Value = trans_cpu }; 
                CpuValues.Add(dtpoint);

                timerCpu.Start();
            }
            catch
            {
                timerCpu.Stop(); 
            }


        }


        void timerFPGA_Tick(object sender, EventArgs e)
        {
            timerFPGA.Stop();
            try
            {
                trans_fpga++; 
                
                Data dataPoint = fpgaQueue.Dequeue();
                //fairprice_fpga.Text = dataPoint.FairPrice.ToString();
                stock_fpga.Text = dataPoint.OptionId.ToString();
                time_fpga.Text = dataPoint.Time.ToString();
                transaction_fpga.Text = trans_fpga.ToString();

                //Plot point 
                timerFPGA.Interval = dataPoint.Time;

                DateTime newTime = baseDateCpu.Add(dataPoint.Time);

                //FpgaValues.Add(new ObservablePoint(trans_fpga,trans_fpga-1));
                baseDateFpga = baseDateFpga.Add(dataPoint.Time);
                DateModel dtpoint = new DateModel { DateTime = newTime, Value = trans_fpga };
                FpgaValues.Add(dtpoint);

                timerFPGA.Start();
            }

            catch
            {
                timerFPGA.Stop(); 
            }

        }
    }
}
