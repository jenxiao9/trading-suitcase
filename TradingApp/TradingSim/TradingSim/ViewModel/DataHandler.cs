﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TradingSim.Model;
using Microsoft.VisualBasic.FileIO;
using System.IO;

namespace TradingSim.ViewModel
{
    public class DataHandler
    {
       
        public static Queue<Data> CpuResults;
        public static Queue<Data> FpgaResults;
        private static string cpuPath = Path.Combine(Directory.GetCurrentDirectory(),
                                     "results", "cpuresults.txt");
        private static string fpgaPath = Path.Combine(Directory.GetCurrentDirectory(),
                             "results", "fpgaresults.txt");
        public static void LoadData()
        {
            CpuResults = createQueueFromCSV(cpuPath);
            FpgaResults = createQueueFromCSV(fpgaPath);

      
            //start(); 

        }

        public static Queue<Data> createQueueFromCSV(string path)
        {
            Queue<Data> results = new Queue<Data>();
            using (TextFieldParser csvParser = new TextFieldParser(path))
            {
                csvParser.CommentTokens = new string[] { "#" };
                csvParser.SetDelimiters(new string[] { "," });
                csvParser.HasFieldsEnclosedInQuotes = true;

                csvParser.ReadLine();

                while (!csvParser.EndOfData)
                {
                    // Read current line fields, pointer moves to the next line.
                    string[] fields = csvParser.ReadFields();
                    TimeSpan length = TimeSpan.FromSeconds(Int32.Parse(fields[3]));
                    Data data = new Data
                    {
                        StockName = fields[0],
                        OptionId = Int32.Parse(fields[1]),
                        FairPrice = float.Parse(fields[2]),
                        Time = length,

                    };

                    results.Enqueue(data);
                }
            }

            return results; 
        }
        public Queue<Data> GetFpgaResults()
        {
            return FpgaResults; 
        }

        public Queue<Data> GetCpuResults()
        {
            return CpuResults; 
        } 

    }
}
