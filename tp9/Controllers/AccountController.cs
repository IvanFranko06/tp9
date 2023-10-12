using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using tp9.Models;

namespace tp9.Controllers;

public class Account : Controller
{
  public IActionResult login(string Username, string Contraseña)
    {
        if (BD.ValidarUsuario(Username) && BD.ValidarContraseña(Contraseña))
        {
            return RedirectToAction("login", "Home");
        }
        else
        {
             return RedirectToAction("index", "Home");
        }
}

public IActionResult registro(Usuario us)
  
    {
       BD.AgregarUsuario(us);
        
            return RedirectToAction("registro", "Home");
        
       
}


public IActionResult olvidepass(string email){
    if (BD.ExisteEmail(email))
        {
            return RedirectToAction("Newpass", "Home");
        }
        else
        {
             return RedirectToAction("index", "Home");
        }
}

public IActionResult updatep(string email, string nuevaContraseña)

{
            BD.ActualizarContra(email, nuevaContraseña);
            
            return RedirectToAction("index", "Home");
        
}
}