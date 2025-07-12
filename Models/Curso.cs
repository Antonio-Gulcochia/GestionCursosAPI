using GestionCursosAPI.Models;

public class Curso
{
    public int Id { get; set; }
    required public string Nombre { get; set; }
    required public string Ciclo { get; set; }
    public int Creditos { get; set; }
    public int HorasSemanal { get; set; }

    public int IdDocente { get; set; }

    // 👉 Marcar como opcional usando ?
    public Docente? Docente { get; set; }
}
