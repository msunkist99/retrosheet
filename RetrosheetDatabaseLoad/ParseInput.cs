﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Retrosheet_DataFileIO;
using System.IO;
using Retrosheet_Settings;

namespace Retrosheet_Console
{
    class ParseInput
    {
        static void Main(string[] args)
        {

            // settings are captured in Settings constructor
           
            Settings settings = new Settings();
            settings.BackupSettings();

            string[] settingsArray = new string[1];
            //settingsArray[0] = @"reference_data|TRUE|C:\users\msunk\documents\retrosheet\ReferenceData\|reference_data.txt|||||";
			  settingsArray[0] = @"reference_data|TRUE|C:\users\msunk\documents\visual studio 2017\retrosheet\retrosheet\ReferenceData\|reference_data.txt|||||";
			//-settingsArray[1] = @"ballpark_data|TRUE|C:\users\msunk\documents\retrosheet\ReferenceData\|Ballpark.txt|C:\users\msunk\documents\retrosheet\ReferenceData\Output\|Ballpark.txt|||";
			//-settingsArray[2] = @"personnel_data|TRUE|C:\users\msunk\documents\retrosheet\ReferenceData\|personnel.txt|||||";

			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\1982 Regular Season\||C:\users\msunk\documents\retrosheet\1982 Regular Season\Output\||1982 Regular Season|1982|R";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\1982 All Star\||C:\users\msunk\documents\retrosheet\1982 All Star\Output\||1982 All Star|1982|A";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\1982 Post Season\League Championship||C:\users\msunk\documents\retrosheet\1982 Post Season\League Championship\Output\||1982 Post Season|1982|L";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\1982 Post Season\World Series||C:\users\msunk\documents\retrosheet\1982 Post Season\World Series\Output\||1982 Post Season|1982|W";

			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2016 Regular Season\||C:\users\msunk\documents\retrosheet\2016 Regular Season\Output\||2016 Regular Season|2016|R";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2016 All Star\||C:\users\msunk\documents\retrosheet\2016 All Star\Output\||2016 All Star|2016|A";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2016 Post Season\Division 1||C:\users\msunk\documents\retrosheet\2016 Post Season\Division 1\Output\||2016 Post Season|2016|1";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2016 Post Season\Division 2||C:\users\msunk\documents\retrosheet\2016 Post Season\Division 2\Output\||2016 Post Season|2016|2";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2016 Post Season\Wild Card||C:\users\msunk\documents\retrosheet\2016 Post Season\Wild Card\Output\||2016 Post Season|2016|C";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2016 Post Season\League Championship||C:\users\msunk\documents\retrosheet\2016 Post Season\League Championship\Output\||2016 Post Season|2016|L";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2016 Post Season\World Series||C:\users\msunk\documents\retrosheet\2016 Post Season\World Series\Output\||2016 Post Season|2016|W";

			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2015 Regular Season\||C:\users\msunk\documents\retrosheet\2015 Regular Season\Output\||2015 Regular Season|2015|R";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2015 All Star\||C:\users\msunk\documents\retrosheet\2015 All Star\Output\||2015 All Star|2015|A";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2015 Post Season\Division 1||C:\users\msunk\documents\retrosheet\2015 Post Season\Division 1\Output\||2015 Post Season|2015|1";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2015 Post Season\Division 2||C:\users\msunk\documents\retrosheet\2015 Post Season\Division 2\Output\||2015 Post Season|2015|2";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2015 Post Season\Wild Card||C:\users\msunk\documents\retrosheet\2015 Post Season\Wild Card\Output\||2015 Post Season|2015|C";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2015 Post Season\League Championship||C:\users\msunk\documents\retrosheet\2015 Post Season\League Championship\Output\||2015 Post Season|2015|L";
			//-settingsArray[3] = @"event_data|TRUE|C:\users\msunk\documents\retrosheet\2015 Post Season\World Series||C:\users\msunk\documents\retrosheet\2015 Post Season\World Series\Output\||2015 Post Season|2015|W";


			settings.WriteSettings(settingsArray);
            settings.GetSettings();

            DataFileIO dataFileIO = new DataFileIO();

			/*
			dataFileIO.ProcessBallparkFile(settings.BallparkDataInputPath, settings.BallparkDataInputFile,
                            settings.BallparkDataOutputPath,
                            settings.BallparkDataOutputFile);
            
            dataFileIO.ProcessEventFiles(settings.EventDataInputPath,
                                         settings.EventDataOutputPath,
                                         settings.EventDataSeasonYear,
                                         settings.EventDataSeasonGameType);
            */

            LoadDatabase loadDatabase = new LoadDatabase();

            loadDatabase.TruncateDatabase();
            //loadDatabase.LoadDatabaseEventData(settings.EventDataOutputPath);
            loadDatabase.LoadDatabaseReferenceData(settings.ReferenceDataInputPath  + settings.ReferenceDataInputFile);
            //loadDatabase.LoadDatabasePersonnelData(settings.PersonnelDataInputPath + settings.PersonnelDataInputFile);
            //loadDatabase.LoadDatabaseBallparkData(settings.BallparkDataInputPath  + settings.BallparkDataInputFile);
            //loadDatabase.LoadDatabaseGameInformation();



			Console.WriteLine("All done!");

			Console.ReadLine();
            
        }
    }
}
