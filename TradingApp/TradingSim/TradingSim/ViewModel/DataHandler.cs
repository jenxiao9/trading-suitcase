using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TradingSim.Model;
using Microsoft.VisualBasic.FileIO;
using System.IO;
using System.Diagnostics;

namespace TradingSim.ViewModel
{
    public class DataHandler
    {
       
        public static Queue<Data> CpuResults;
        public static Queue<Data> FpgaResults;

        public static List<Data> AllCPUResults;
        public static List<Data> AllFPGAResults;

        public static Dictionary<string, ExpandedData> ExpandedData;

        //Directory of our project
        public static string rootDirectory = "C:/Users/Xinna/trading-suitcase";
        //Maybe change code to Directory.GetParent(); 
        //Directory with all the src files 
        public static string srcDirectory = "C:/Users/Xinna/c_data_files/";
        //Directory with c_results 
        public static string resultsDirectory_FPGA = "C:/Users/Xinna/fpga_results/";
        //Directory with fpga_results 
        public static string resultsDirectory_CPU = "C:/Users/Xinna/c_results/";
        //Directory with hash 
        public static string hashDirectory = "C:/Users/Xinna/oil/";
        //Directory with python comparison 
        public static string accuracyDirectory = "C:/Users/Xinna/python_ref/";



        private static string fpgaPath;
        private static string cpuPath;
        private static string hashPath;
        private static string accuracyPath; 


        public static void setPath(int i)
        {
            //hash path 0000i_id.txt 
            //hash path 0000i_c.txt 
            //hash path 0000i_fpga.txt 
            string startpath = generate_start(i); 
            string hash_file = startpath + "_id_list.txt";
            string c_file = startpath + "_c_output.txt";
            string fpga_file = startpath +  "_fpga_output.txt";
            string accuracy_file = startpath + "_python_ref.txt";


            cpuPath = Path.Combine(resultsDirectory_CPU, c_file); 
            fpgaPath = Path.Combine(resultsDirectory_FPGA, fpga_file);
            hashPath = Path.Combine(hashDirectory, hash_file);
            accuracyPath = Path.Combine(accuracyDirectory, accuracy_file);


        }

        public static string generate_start(int num)
        {
            int int_length = 0;
            if (num == 0)
            {
                int_length = 1; 
            }
            int input = num; 
            while (input > 0)
            {
                int_length++;
                input = input / 10;
              
            }
                      
            string a = new string('0', 5 - int_length);
            return a + num.ToString(); 
        }
        public static string Today;
        public void LoadData(int i)
        {
            setPath(i); 
            ExpandedData = getExpandedValues(hashPath);
            (CpuResults, AllCPUResults) = createQueueFromCSV(cpuPath);
            (FpgaResults, AllFPGAResults) = createQueueFromCSV(fpgaPath);

        }

        private static Dictionary<string,ExpandedData> getExpandedValues(string path)
        {
            //Just write t_date outside. 
            Dictionary<string, ExpandedData> results = new Dictionary<string, ExpandedData>();
            using (TextFieldParser csvParser = new TextFieldParser(path))
            {
                csvParser.CommentTokens = new string[] { "#" };
                csvParser.SetDelimiters(new string[] { "," });
                csvParser.HasFieldsEnclosedInQuotes = true;
                csvParser.ReadLine();
                while (!csvParser.EndOfData)
                {
                    string[] fields = csvParser.ReadFields();
                    string option_id = fields[0];
                    string stock_id = fields[1];
                    string expiry = fields[2];
                    string strike = fields[3];
                    string call_put = fields[4];
                    string t_date = fields[5];
                    Today = t_date;
     
                    ExpandedData data = new ExpandedData
                    {
                        Stock_Id = stock_id,
                        Expiry = expiry,
                        Strike = strike,
                        Call_Put = call_put,
                    }; 

                    if (!results.ContainsKey(option_id))
                        results.Add(option_id, data); 
                    
                }
               
            }
            return results;
        }

        public static (Queue<Data>, List<Data>) createQueueFromCSV(string path)
        {

            List<Data> listResults = new List<Data>();

            using (TextFieldParser csvParser = new TextFieldParser(path))
            {
                csvParser.CommentTokens = new string[] { "#" };
                csvParser.SetDelimiters(new string[] { "," });
                csvParser.HasFieldsEnclosedInQuotes = true;

                csvParser.ReadLine();

                while (!csvParser.EndOfData)
                {
                    //Read current line fields, pointer moves to the next line.
                    string[] fields = csvParser.ReadFields();
                    int currTime = (int)float.Parse(fields[2]);

                    TimeSpan length = TimeSpan.FromMilliseconds(currTime);
                    Data data = new Data
                    {
                        OptionId = fields[0],
                        FairPrice = float.Parse(fields[1]),
                        Time = length,
                        ExpandedData = ExpandedData[fields[0]]  

                    };


                    listResults.Add(data); 
                }

              
            }

            listResults = listResults.OrderBy(o => o.Time).ToList();

            TimeSpan prevTime = new TimeSpan(0); 
            for (int i = 0; i < listResults.Count(); i++)
            {
                TimeSpan currTime = listResults[i].Time;
                TimeSpan timeDiff = currTime - prevTime;
                listResults[i].TimeDiff = timeDiff;
                prevTime = currTime; 
            }

            Queue<Data> results = new Queue<Data>(listResults);

            return (results, listResults); 
        }
        public Queue<Data> GetFpgaResults()
        {
            return FpgaResults; 
        }

        public Queue<Data> GetCpuResults()
        {
            return CpuResults; 
        } 

        public List<Data> GetAllCpuResults()
        {
            return AllCPUResults;
        }

        public List<Data> GetAllFpgaResults()
        {
            return AllFPGAResults; 
        }

        //Runs python script which prints out accuracy
        public static void GetAccuracy() 
        {
            //MainWindow.Run_
            string script = "C:/Users/Xinna/trading-suitcase/processing/accuracy_checker.py";
            //string args = script + " " + fpgaPath + " " + accuracyPath + " " + "results.txt";
            string args = script + " " + fpgaPath + " " + cpuPath + " " + "results.txt";
            string results = Run_CMD(script, args);
             
        
}
        public string GetToday()
        {
            return Today; 
        }

        public static string Run_CMD(string script, string args)
        {
            string fileName = @script;
            string python = @"C:/Users/Xinna/AppData/Local/Programs/Python/Python37/python3.exe";


            Process p = new Process();
            p.StartInfo = new ProcessStartInfo(python, fileName)
            {
                Arguments = args,
                RedirectStandardOutput = true,
                UseShellExecute = false,
                CreateNoWindow = true
            };

            p.Start();
            Console.WriteLine(p.HasExited);
            string output = p.StandardOutput.ReadToEnd();
            Console.WriteLine(output); 
            p.WaitForExit();
            
            Console.WriteLine(p.HasExited);

            //Console.ReadLine();

            return output;
        }

    }
}
