using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace LouisianaManagement.ViewModel
{
    public class LoginViewModel : BaseViewModel
    {

        public bool Islogin { get; set; }
        public ICommand LoginWindowCommand { get; set; }
        public ICommand PasswordChangedCommand { get; set; }
        private string _Username;
        public string Username
        {
            get => _Username;
            set { _Username = value;OnPropertyChanged(); }
        }
        private string _Password;
        public string Password
        {
            get => _Password;
            set { _Password = value; OnPropertyChanged(); }
        }

        public LoginViewModel()
        {
            

            LoginWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { Login(p); });
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { Password = p.Password; });


        }

        void Login(Window p)
        {
            if (p == null)
                return;
            Islogin = true;
            p.Close();
        }
    }
}
