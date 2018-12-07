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

namespace TradingSim
{


    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //Subject to change 
        //String pythonScript = "C:/Users/Xinna/trading-suitcase/processing/processing.py";
        //String python 
        //String pythonScript = "C:/Users/Xinna/trading-suitcase/processing.txt"; 
        public string pythonScript = "C:/Users/Xinna/trading-suitcase/processing/testing.py";
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
            file_counter = 0; 
            AnimatedGUI subWindow = new AnimatedGUI(this);
            subWindow.Show();
        }

        private void BeginSending(object sender, RoutedEventArgs e)
        {
            file_counter++;

            string argv2 = DataHandler.generate_start(file_counter); 

            string args = pythonScript + " processing C:/Users/Xinna/trading-suitcase/processing/rawShortData.txt C:/Users/Xinna/trading-suitcase/processing/outputlol";
            Begin_Button.IsEnabled = false;
            Console.WriteLine(DataHandler.Run_CMD(pythonScript,args));
            Begin_Button.IsEnabled = true;
        }


    }
}
