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
using System.Data.OleDb;
using System.Configuration;
using System.Collections;
using System.Data;
using System.Text.RegularExpressions;

namespace ControlMensual
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

       


        private double gananciaTotal;
        private double total;
        private double gananciaPorcent = 20;

        public MainWindow()
        {
            InitializeComponent();
            getData();
            loadMonto();
            textBox_Copy.IsReadOnly = true;
            textBox.IsReadOnly = true;



        }

        private void ComboBoxItem_Selected(object sender, RoutedEventArgs e)
        {

        }
        private static bool isValid(String str)
        {
            return Regex.IsMatch(str, @"^[a-zA-Z]+$");
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string date = fecha.Text;
            string montos = Monto.Text;
            string texto = Detalle.Text;
           

            if (date == "" )
            {
                MessageBox.Show("Ingrese una fecha");

            }else if (isValid(montos))
            {
                MessageBox.Show("Ingrese solo numeros");
            }
            else
            {
                OleDbConnection con = new OleDbConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ControlMensual.Properties.Settings.Ganancias_DBConnectionString"].ToString();
                con.Open();
                OleDbCommand cmd = new OleDbCommand();

                cmd.CommandText = "insert into [Detalle_Ganacias](Fecha,Monto,Detalle)Values(@dt,@mt,@det)";
                cmd.Parameters.AddWithValue("@dt", Convert.ToDateTime(fecha.Text));
                cmd.Parameters.AddWithValue("@mt", Convert.ToDouble(Monto.Text));
                cmd.Parameters.AddWithValue("@det", Detalle.Text);
                cmd.Connection = con;
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    MessageBox.Show("Registro añadido");
                    loadMonto();
                    loadGanancia();
                    con.Close();
                }
            }

            
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void dataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void getData() {
            DataTable dt = new DataTable();
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ControlMensual.Properties.Settings.Ganancias_DBConnectionString"].ToString();
            con.Open();
            OleDbCommand cmd = new OleDbCommand();

            cmd.CommandText = "select Fecha,Monto,Detalle from [Detalle_Ganacias]";
            cmd.Connection = con;
            OleDbDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);

            dataGrid.ItemsSource = dt.AsDataView();

            con.Close();

           



        }

        private void textBox_TextChanged_1(object sender, TextChangedEventArgs e)
        {

            

        }

        private void loadMonto() {

            DataTable dt = new DataTable();
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ControlMensual.Properties.Settings.Ganancias_DBConnectionString"].ToString();
            con.Open();
            OleDbCommand cmd = new OleDbCommand();
           ;
            cmd.CommandText = "select Monto from [Detalle_Ganacias]";
            cmd.Connection = con;
            OleDbDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                total += Convert.ToDouble(reader["Monto"].ToString());
            }
            loadGanancia();
            textBox.Text = total.ToString();
        }

        private void loadGanancia() {



            gananciaTotal = total*gananciaPorcent/100;

           

            textBox_Copy.Text = gananciaTotal.ToString();

        }

        private void button_Copy_Click(object sender, RoutedEventArgs e)
        {

            DataTable dt = new DataTable();
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ControlMensual.Properties.Settings.Ganancias_DBConnectionString"].ToString();
            con.Open();
            OleDbCommand cmd = new OleDbCommand();

            cmd.CommandText = "select Fecha,Monto,Detalle from [Detalle_Ganacias] where fecha between @d1 and @d2";
            cmd.Parameters.AddWithValue("@d1", Convert.ToDateTime(datePicker.Text));
            cmd.Parameters.AddWithValue("@d2", Convert.ToDateTime(datePicker1.Text));
            cmd.Connection = con;
            OleDbDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);

            dataGrid.ItemsSource = dt.AsDataView();

            con.Close();

        }

        private void Porcentaje_Ganancia_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void AddPorGanancia_Click(object sender, RoutedEventArgs e)
        {
            this.gananciaPorcent = Convert.ToDouble(Porcentaje_Ganancia.Text);
            loadGanancia();

        }
    }
}
