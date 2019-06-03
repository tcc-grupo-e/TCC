using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class MensagemBLL
    {
        private static String Titulo;
        private static String Msm;

        public void setMensagem(String val)
        {
            Msm = val;
        }
        public String getMensagem()
        {
            return Msm;
        }
        public void setTitulo(String val)
        {
            Titulo = val;
        }
        public String getTitulo()
        {
            return Titulo;
        }
    }
}
