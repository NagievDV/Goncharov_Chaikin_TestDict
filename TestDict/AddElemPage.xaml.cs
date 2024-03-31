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

namespace TestDict
{
    /// <summary>
    /// Логика взаимодействия для AddElemPage.xaml
    /// </summary>
    public partial class AddElemPage : Page
    {
        private Terms term = new Terms();


        public AddElemPage()
        {
            InitializeComponent();

            DataContext = term;
        }


        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void btnAddElem_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (string.IsNullOrWhiteSpace(term.Term))
                errors.AppendLine("Укажите термин!");
            if (string.IsNullOrWhiteSpace(term.Description))
                errors.AppendLine("Укажите определение!");
            if (string.IsNullOrWhiteSpace(term.Source))
                errors.AppendLine("Укажите источник");
            if (errors.Length > 0)
            { 
                MessageBox.Show(errors.ToString());
                return;
            }

            if(term.ID == 0) Entities.GetContext().Terms.Add(term);

            try
            {
                Entities.GetContext().SaveChanges();
                MessageBox.Show("Данные успешно сохранены!");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }

            NavigationService.GoBack();
        }


    }
}
