using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace LouisianaManagement.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
       
        public bool Isloaded = false;

        public ICommand LoadedWindowCommand { get; set; }
        public ICommand UnitWindowCommand { get; set; }
        public ICommand SupplierWindowCommand { get; set; }
        public ICommand CustomerWindowCommand { get; set; }
        public ICommand ObjectWindowCommand { get; set; }
        public ICommand UserWindowCommand { get; set; }
        public ICommand InputWindowCommand { get; set; }
        public ICommand OutputWindowCommand { get; set; }
        public MainViewModel()
        {
            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) => {
                Isloaded = true;
                if (p == null)
                    return;

                p.Hide();
                LoginWindow loginWindow = new LoginWindow();
                loginWindow.ShowDialog();
                if (loginWindow == null)
                    return;
                var loginVM = loginWindow.DataContext as LoginViewModel;
                if(loginVM.Islogin)
                {
                    p.Show();
                }
                else
                {
                    p.Close();
                }
                
               
            });

            UnitWindowCommand = new RelayCommand<object>((p) => { return true; }, (p) => { UnitWindow Unitwd = new UnitWindow(); Unitwd.ShowDialog(); });
            SupplierWindowCommand= new RelayCommand<object>((p) => { return true; }, (p) => { SupplierWindow Supplierwd = new SupplierWindow(); Supplierwd.ShowDialog(); });
            CustomerWindowCommand = new RelayCommand<object>((p) => { return true; }, (p) => { CustomerWindow Cuswd = new CustomerWindow(); Cuswd.ShowDialog(); });
            ObjectWindowCommand = new RelayCommand<object>((p) => { return true; }, (p) => { ObjectWindow Objwd = new ObjectWindow(); Objwd.ShowDialog(); });
            UserWindowCommand = new RelayCommand<object>((p) => { return true; }, (p) => { UserWindow Userwd = new UserWindow(); Userwd.ShowDialog(); });
            InputWindowCommand = new RelayCommand<object>((p) => { return true; }, (p) => { InputWindow Inputwd = new InputWindow(); Inputwd.ShowDialog(); });
            OutputWindowCommand = new RelayCommand<object>((p) => { return true; }, (p) => { OutputWindow Outputwd = new OutputWindow(); Outputwd.ShowDialog(); });
        }
    }
    
}
