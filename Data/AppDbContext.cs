using Microsoft.EntityFrameworkCore;
using GestionCursosAPI.Models;

namespace GestionCursosAPI.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<Curso> Cursos { get; set; }
        public DbSet<Docente> Docentes { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Docente>().HasMany(d => d.Cursos).WithOne(c => c.Docente).HasForeignKey(c => c.IdDocente);
        }
    }
}