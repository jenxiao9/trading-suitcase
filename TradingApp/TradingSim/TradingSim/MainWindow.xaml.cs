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
using System.Diagnostics;
using System.ComponentModel;

namespace TradingSim
{


    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        //Subject to change 
        string pythonScript = "C:/Users/Xinna/trading-suitcase/processing/processing.py";
        string socketScript = "C:/Users/Xinna/trading-suitcase/processing/client.py";
        //String python 
        //String pythonScript = "C:/Users/Xinna/trading-suitcase/processing.txt"; 
        //public string pythonScript = "C:/Users/Xinna/trading-suitcase/processing/testing.py";
        //Directory with all the src files 
        public static string srcDirectory = "C:/Users/Xinna/c_data_files/";
        public int file_counter;
        public MainWindow()
        {

            InitializeComponent();
            DataContext = this;

        }

        //Run python code. 
        //
        private void ButtonClicked(object sender, RoutedEventArgs e)
        {
            File_Counter ++;

        }

        private void BeginSending(object sender, RoutedEventArgs e)
        {

            string argv2 = DataHandler.generate_start(file_counter);

            string filepath = argv2 + "_c_data.txt";
            string args1 = socketScript + " " + file_counter.ToString();
            string args2 = pythonScript + " send " + file_counter.ToString() + " COM4";


            DataHandler.Run_CMD(socketScript, args1);
            DataHandler.Run_CMD(pythonScript, args2);
            Begin_Button.IsEnabled = true;
            AnimatedGUI subWindow = new AnimatedGUI(this);
            subWindow.Show();
           
        }

        public int File_Counter
        {
            get { return file_counter; }
            set
            {
                file_counter = value;
                RaisePropertyChanged("File_Counter");
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
