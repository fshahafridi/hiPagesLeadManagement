using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace LeadManagement.Repository.Models
{
    public partial class LeadManagementDBContext : DbContext
    {
        public LeadManagementDBContext()
        {
        }

        public LeadManagementDBContext(DbContextOptions<LeadManagementDBContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Categories> Categories { get; set; }
        public virtual DbSet<Jobs> Jobs { get; set; }
        public virtual DbSet<Suburbs> Suburbs { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Categories>(entity =>
            {
                entity.ToTable("categories");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(255);

                entity.Property(e => e.ParentCategoryId).HasColumnName("parent_category_id");
            });

            modelBuilder.Entity<Jobs>(entity =>
            {
                entity.ToTable("jobs");

                entity.Property(e => e.CategoryId).HasColumnName("category_id");

                entity.Property(e => e.ContactEmail)
                    .IsRequired()
                    .HasColumnName("contact_email")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.ContactName)
                    .IsRequired()
                    .HasColumnName("contact_name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.ContactPhone)
                    .IsRequired()
                    .HasColumnName("contact_phone")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedAt)
                    .HasColumnName("created_at")
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Description)
                    .IsRequired()
                    .HasColumnName("description")
                    .HasColumnType("text");

                entity.Property(e => e.Price).HasColumnName("price");

                entity.Property(e => e.Status)
                    .IsRequired()
                    .HasColumnName("status")
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasDefaultValueSql("('new')");

                entity.Property(e => e.SuburbId).HasColumnName("suburb_id");

                entity.Property(e => e.UpdatedAt)
                    .HasColumnName("updated_at")
                    .HasColumnType("datetime");
            });

            modelBuilder.Entity<Suburbs>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("suburbs");

                entity.Property(e => e.Id).ValueGeneratedOnAdd();

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Postcode)
                    .IsRequired()
                    .HasColumnName("postcode")
                    .HasMaxLength(4)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
