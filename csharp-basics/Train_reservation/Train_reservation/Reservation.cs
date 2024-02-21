using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Train_reservation
{
    class Mainclass : Reservation
    {

        static void Main(string[] args)
        {
            Reservation re = new Reservation();

            int r;                                              // r for storing user choice
            do
            {
                Console.Write("\n--------------------------------------------------------------------------------\n");
                Console.Write("\n\t\t\t___ Welcome To My Rail ___ \n");
                Console.WriteLine(); Console.WriteLine("");
                Console.WriteLine("Press 1 For Adding New Train.");
                Console.WriteLine("Press 2 For Deleting Train.");
                Console.WriteLine("Press 3 For Booking Ticket.");
                Console.WriteLine("Press 4 For View Train Between Stations.");
                Console.WriteLine("Press 5 For View Booked Tickets.");
                Console.WriteLine("Press 6 For Updating Train Details.");
                Console.WriteLine("Press 7 For View All Trains.");
                Console.WriteLine("Press 0 For Abort Operation.\n");
                Console.Write("\n--------------------------------------------------------------------------------\n");
                r = int.Parse(Console.ReadLine());

                switch (r)
                {
                    //  CASE 1 :- FOR ADDING NEW TRAIN

                    case 1:

                        int n = re.AddTrain();
                        Console.WriteLine("\n\nTrian with number {0} is successfully added.", n);
                        break;

                    // CASE 2

                    case 2:

                        ArrayList viewalltrain = re.ViewAllTrains();
                        int j = viewalltrain.Count;
                        if (j == 0)
                            Console.WriteLine("\nSorry! There is No Trains Available in the List.\n\n");
                        else
                        {
                            Console.Write("\n--------------------------------------------------------------------------------\n");
                            Console.WriteLine("\t\t AVAILABLE TRAINS IS/ARE: \t\t\n");
                            foreach (Train trr in viewalltrain)
                            {
                                Console.Write("\nTrain Number\t  : \t" + trr.Tid + "\n");
                                Console.Write("Train Name\t  : \t" + trr.Tname + "\n");
                                Console.Write("Train Source\t  : \t" + trr.Tsource + "\n");
                                Console.Write("Train Destination : \t" + trr.Tdestination);
                                Console.Write("\n\n--------------------\n");
                            }

                            Console.WriteLine("\nFor Deleting Train Details Please Enter any one Train Id From above results.");
                            int trid = int.Parse(Console.ReadLine());

                            int tresult = re.DeleteTrain(trid);
                            if (tresult == 0)
                                Console.WriteLine("\nTrain can not be delete, because it contains Booking.");
                            else
                            {
                                if (tresult == 2)
                                    Console.WriteLine("\nEntered Train id is wrong, please check train id");

                                else
                                    Console.WriteLine("\nTrain {0} has been Successfully Deleted", trid);
                            }

                        }
                        break;


                    // CASE 3 :- FOR BOOKING NEW TICKET

                    case 3:

                        int totalprice;
                        long tikid = re.BookTicket(out totalprice);

                        if (totalprice == 0 || tikid == 0)
                        {
                            Console.WriteLine("\nInvalid Inputs !, please try again");
                            break;
                        }

                        else
                        {
                            Console.WriteLine("\nYour Ticket Has been successfully booked, Your Ticket details are:\n\n");
                            Console.WriteLine("Ticket Id\t : " + tikid);
                            Console.WriteLine("Total Price\t : " + totalprice);
                        }
                        break;


                    //  CASE 4 :- FOR VIEW TRAIN BETWEEN GIVEN STATIONS

                    case 4:

                        ArrayList trainlist = re.ViewTrains();
                        int c = trainlist.Count;
                        if (c == 0)
                            Console.WriteLine("\nSorry! There are no Tains Available Between Given Stations.");
                        else
                        {
                            Console.Write("\n--------------------------------------------------------------------------------\n");
                            Console.WriteLine("\t\t AVAILABLE TRAINS BETWEEN GIVEN STATIONS IS/ARE: \t\t\n");
                            foreach (Train trn in trainlist)
                            {
                                Console.WriteLine();
                                Console.WriteLine("Train Number : " + trn.Tid);
                                Console.WriteLine("Train Name : " + trn.Tname);
                                Console.WriteLine("Train Source Station : " + trn.Tsource);
                                Console.WriteLine("Train Destination Station : " + trn.Tdestination);

                                Console.Write("\n-----------------");
                            }
                        }
                        break;

                    // CASE 5 :- FOR VIEW BOOKED TICKETS

                    case 5:

                        ArrayList ticketlist = re.ViewTicket();
                        int co = ticketlist.Count;

                        if (co == 0)
                            Console.WriteLine("\nSorry! There are no Booked Tickets in list.");
                        else
                        {
                            Console.Write("\n--------------------------------------------------------------------------------\n");
                            Console.WriteLine("\t\t\t LIST OF BOOKED TICKETS \t\t\t\n");
                            foreach (Ticket tic in ticketlist)
                            {
                                Console.WriteLine();
                                Console.WriteLine("\nTicket Id\t\t : " + tic.Ticketid);
                                Console.WriteLine("Train Number\t\t : " + tic.Trid);
                                Console.WriteLine("Number Of Passengers     : " + tic.Noofpass);
                                Console.WriteLine("Total Fare\t\t : " + tic.Totalprice);
                                Console.Write("\n-----------------------");
                            }
                        }
                        break;



                    // CASE 6 :- FOR UPDATING TRAIN DETAILS 

                    case 6:

                        ArrayList viewallt = re.ViewAllTrains();
                        int k, tnum;    // variable 'tnum' stores train number given by user
                        k = viewallt.Count;
                        if (k == 0)
                            Console.WriteLine("\nSorry! There is No Trains Available in the List.\n\n");
                        else
                        {
                            Console.Write("\n--------------------------------------------------------------------------------\n");
                            Console.WriteLine("\t\t AVAILABLE TRAINS IS/ARE: \t\t\n");
                            foreach (Train trr in viewallt)
                            {
                                Console.Write("\nTrain Number\t  : \t" + trr.Tid + "\n");
                                Console.Write("Train Name\t  : \t" + trr.Tname + "\n");
                                Console.Write("Train Source\t  : \t" + trr.Tsource + "\n");
                                Console.Write("Train Destination : \t" + trr.Tdestination);
                                Console.Write("\n\n--------------------\n");
                            }

                            Console.WriteLine("\nEnter Train Number, which you want to Update.");
                            tnum = int.Parse(Console.ReadLine());
                            bool result = re.editTrain(tnum);

                            if (result)
                                Console.WriteLine("\nData Successfully Updated.");
                            else
                                Console.WriteLine("\nSorry! Your Updating Request could not be completed, please check train number or try again.");
                        }
                        break;




                    //  CASE 7 :- FOR VIEWING ALL TRAINS

                    case 7:

                        ArrayList viewall = re.ViewAllTrains();
                        int coun = viewall.Count;
                        if (coun == 0)
                            Console.WriteLine("\nSorry! There is No Trains Available in the List.\n\n");
                        else
                        {
                            Console.Write("\n--------------------------------------------------------------------------------\n");
                            Console.WriteLine("\t\t AVAILABLE TRAINS IS/ARE: \t\t\n");
                            foreach (Train trr in viewall)
                            {
                                Console.Write("\nTrain Number\t  : \t" + trr.Tid + "\n");
                                Console.Write("Train Name\t  : \t" + trr.Tname + "\n");
                                Console.Write("Train Source\t  : \t" + trr.Tsource + "\n");
                                Console.Write("Train Destination : \t" + trr.Tdestination);
                                Console.Write("\n\n--------------------\n");
                            }
                        }
                        break;

                    //  DEFAULT CASE

                    default:
                        break;
                }
            } while (r != 0);
        }
    }
    public interface ITrain
    {
        int At(int tid, string tname, string tsource, string tdestination);
        bool editTrain(int tid);
        int AddTrain();
        ArrayList ViewTrains();
        ArrayList ViewAllTrains();
        int DeleteTrain(int trid);
    }
    public interface ITicket
    {
        int BookTicket(out int totalprice);
        void Bt(int ticketid, int trid, int noofpass, int totalprice);
        ArrayList ViewTicket();
    }
    public class Train   
    {
        public string tname, tsource, tdestination;
        public int tid;

        public int Tid { get { return (tid); } set { tid = value; } }
        public String Tname { get { return (tname); } set { tname = value; } }
        public String Tsource { get { return (tsource); } set { tsource = value; } }
        public String Tdestination { get { return (tdestination); } set { tdestination = value; } }
        public void At(int tid, string tname, string tsource, string tdestination)
        {
            this.tid = tid;
            this.tname = tname;
            this.tsource = tsource;
            this.tdestination = tdestination;

        }
    }
    public class Ticket
    {
        public int trid, noofpass, totalprice;
        long ticketid;
        public long Ticketid { get { return (ticketid); } set { ticketid = value; } }
        public int Trid { get { return (trid); } set { trid = value; } }
        public int Noofpass { get { return (noofpass); } set { noofpass = value; } }
        public int Totalprice { get { return (totalprice); } set { totalprice = value; } }
        public void Bt(long ticketid, int trid, int noofpass, int totalprice)
        {
            this.ticketid = ticketid;
            this.trid = trid;
            this.noofpass = noofpass;
            this.totalprice = totalprice;
        }
    }
    public class Reservation : Train
    {

        ArrayList trlist = new ArrayList();
        ArrayList tilist = new ArrayList();
        ArrayList tlst = new ArrayList();

        public int AddTrain()
        {
            Console.WriteLine("\nEnter Train Name.");
            tname = Console.ReadLine();                    // variable 'tname' stores Trian Name

            Console.WriteLine("\nEnter Train Source Name.");
            tsource = Console.ReadLine();                    // variable 'tsource' stores Trian Source

            Console.WriteLine("\nEnter Train Destination Name.");
            tdestination = Console.ReadLine();                    // variable 'tdesti stores Trian Destination



            int n = random();                              // n stores random generated number
            tid = n;                    // variable 'tid' stores Trian ID
            Train t = new Train();
            t.At(tid, tname, tsource, tdestination);                    // calling method AddTrain with object 'tr'
            trlist.Add(t);                    // adding 'tr'  into list 'trlist'

            return tid;
        }
        public static int random()
        {
            Random rn = new Random();
            int num = rn.Next(10000, 19999);
            return num;
        }

        public ArrayList ViewTrains()            // Method returns list, depends upon matching reslut with source and destination
        {
            tlst.Clear();

            string sname, dname;

            Console.WriteLine("\nEnter Source Station Name.");
            sname = Console.ReadLine();                               // variable 'sname' stores source station name given by user

            Console.WriteLine("\nEnter Destination Staion Name.");
            dname = Console.ReadLine();                               // variable 'dname' stores destination station name given by user

            foreach (Train trn in trlist)
            {
                if (trn.Tsource == sname && trn.Tdestination == dname)
                    tlst.Add(trn);

            }
            return tlst;
        }

        public bool editTrain(int tid)
        {
            char ch;
            string nname, nsource, ndestination;

            foreach (Train istr in trlist)
            {
                if (istr.Tid == tid)        // checks  with given train number, train is present or not 
                {
                    Console.WriteLine("\nPress 'a' for Updating Train Source and Destination Station Name.");
                    Console.WriteLine("\nPress 'b' for Updating Train Name, Source and Destination Station Name.");
                    ch = char.Parse(Console.ReadLine());

                    if (ch == 'a')
                    {
                        Console.WriteLine("\nEnter New Source Station Name.");
                        nsource = Console.ReadLine();

                        Console.WriteLine("\nEnter New Destination Station Name.");
                        ndestination = Console.ReadLine();

                        istr.tsource = nsource;
                        istr.tdestination = ndestination;
                        return true;                           // source and destination name successfully updated
                    }

                    else
                    {
                        if (ch == 'b')
                        {
                            Console.WriteLine("\nEnter New Train Name.");
                            nname = Console.ReadLine();

                            Console.WriteLine("\nEnter New Source Station Name.");
                            nsource = Console.ReadLine();

                            Console.WriteLine("\nEnter New Destination Station Name.");
                            ndestination = Console.ReadLine();

                            istr.tname = nname;
                            istr.tsource = nsource;
                            istr.tdestination = ndestination;
                            return true;                           // source and destination name successfully updated
                        }

                        else
                        {
                            Console.WriteLine("\nInvalid Input!");
                            return false;
                        }
                    }
                }
                else       // means there is no train available with given train number
                    return false;
            }
            return false;
        }

        public ArrayList ViewAllTrains()
        {
            return trlist;
        }

        public long BookTicket(out int totalprice)
        {
            ArrayList trainlist = ViewTrains();
            int c, trid, noofpass, i = 0;
            string t1;
            long ticketid;

            c = trainlist.Count;
            if (c == 0)                                     // Means No Trains Available between given stations
            {
                Console.WriteLine("\nSorry! There is no Tains Available Between Given Stations.");
                totalprice = 0;
                return 0;
            }
            else
            {
                Console.Write("\n--------------------------------------------------------------------------------\n");
                Console.WriteLine("\t\t AVAILABLE TRAINS BETWEEN GIVEN STATIONS IS/ARE: \t\t\n");
                foreach (Train trn in trainlist)
                {
                    Console.WriteLine();
                    Console.WriteLine("Train Number is : " + trn.Tid);
                    Console.WriteLine("Train Name is : " + trn.Tname);
                    Console.WriteLine("Train Source Station is : " + trn.Tsource);
                    Console.WriteLine("Train Destination Station is : " + trn.Tdestination);

                }

                Console.Write("\n--------------------------------------------------------------------------------");
                Console.WriteLine("\nPlease Enter any one Train Id from above result.");
                trid = int.Parse(Console.ReadLine());

                foreach (Train trn in trainlist)
                {
                    if (trn.Tid == trid)
                        i += 1;
                }
                if (i == 1)                     // True Means User entered right train id from result.
                {
                    Console.WriteLine("\nEnter Number Of Passenger(s).");
                    noofpass = int.Parse(Console.ReadLine());

                    t1 = "2016" + random().ToString();


                    ticketid = int.Parse(t1);

                    totalprice = noofpass * 150;  // let 150 rs. is reservation charge per head and out totalprice

                    Ticket ti = new Ticket();
                    ti.Bt(ticketid, trid, noofpass, totalprice);
                    tilist.Add(ti);

                    return ticketid;  // returns ticket id                                             
                }
                else                               //  Means User entered wrong train id.
                {
                    Console.WriteLine("\nInvalid Inputs !, please try again");
                    totalprice = 0;
                    return 0;
                }
            }
        }

        public ArrayList ViewTicket()
        {
            return tilist;
        }

        public int DeleteTrain(int trid)
        {
            int cnt = 0, d = 0;
            ArrayList checktrain = ViewTicket();
            foreach (Ticket tik in checktrain)
            {
                if (tik.Trid == trid)
                    cnt += 1;
            }
            if (cnt == 0)                                   // Means Train does not contains any booking,  so it can be delete
            {
                foreach (Train trn in trlist)
                {
                    if (trn.Tid == trid)                                // check train id in train list
                    {
                        d += 1;
                        trlist.Remove(trn);
                        return 1;
                        break;
                    }
                }

                if (d == 1)                   // means train has been successfully deleted
                    return 1;
                else                         // Means train id is not present in train list
                    return 2;
            }
            else                                           // Means Train contains booking, so it can not be delete
                return 0;
        }
    }
}

