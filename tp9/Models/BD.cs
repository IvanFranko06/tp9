using System.Data.SqlClient;
using Dapper;

public static class BD
{
    private static string ConnectionString { get; set; } = @"Server=localhost;Database=tp9;Trusted_Connection=True;";

    public static List<Usuario> Seleccion()
    {
        using (SqlConnection db = new SqlConnection(ConnectionString))
        {
            string sql = "SELECT * FROM Usuario";
            return db.Query<Usuario>(sql).ToList();
        }
    }

    public static void AgregarUsuario(Usuario us)
    {
        string sql = "INSERT INTO Usuario(Username, Contraseña, Nombre, Email, Telefono) VALUES (@pUsername, @pContraseña, @pNombre, @pEmail, @pTelefono)";
        using (SqlConnection db = new SqlConnection(ConnectionString))
        {
            db.Execute(sql, new { pUsername = us.Username, pContraseña = us.Contraseña, pNombre = us.Nombre, pEmail = us.Email, pTelefono = us.Telefono });
        }
    }

    public static bool ValidarUsuario(string username)
    {
        using (SqlConnection db = new SqlConnection(ConnectionString))
        {
            string sql = "SELECT Username FROM Usuario WHERE Username = @Username";
           string papu= db.QueryFirstOrDefault<string>(sql, new { Username = username }); 
           if (papu==username)
        {
            return true;
        }
        else 
        return false;
        }

       
    }



    public static bool ValidarContraseña(string contraseña)
    {
        using (SqlConnection db = new SqlConnection(ConnectionString))
        {
            string sql = "SELECT Contraseña FROM Usuario WHERE Contraseña = @Contraseña";
            string papu= db.QueryFirstOrDefault<string>(sql, new { Contraseña = contraseña });
             if (papu==contraseña)
        {
            return true;
        }
        else 
        return false;
        }
        
       
    }

    public static bool ExisteEmail(string email)
    {
        using (SqlConnection db = new SqlConnection(ConnectionString))
        {
            string sql = "SELECT Email FROM Usuario WHERE Email = @pEmail";
            var mail = db.QueryFirstOrDefault<string>(sql, new { pEmail = email });
            if (mail == email)
            {
                return true;
            }
            else
            
            return false;
        }
    }

    public static void ActualizarContra(string email, string nuevaContraseña)
    {
        using (SqlConnection db = new SqlConnection(ConnectionString))
        {
            string sql = "UPDATE Usuario SET Contraseña = @NuevaContraseña WHERE Email = @pemail";
            db.Execute(sql, new { NuevaContraseña = nuevaContraseña, pmail = email });
        }
    }
}
