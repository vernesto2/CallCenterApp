using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace CallCenterApp.Data.Migrations
{
    public partial class Iniciar : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.EnsureSchema(
                name: "dbo");

            migrationBuilder.AddColumn<bool>(
                name: "Activo",
                table: "AspNetUsers",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Discriminator",
                table: "AspNetUsers",
                nullable: false,
                defaultValue: "");

            migrationBuilder.CreateTable(
                name: "TipoActividad",
                schema: "dbo",
                columns: table => new
                {
                    IdTipoActividad = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Descripcion = table.Column<string>(nullable: true),
                    Activo = table.Column<bool>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TipoActividad", x => x.IdTipoActividad);
                });

            migrationBuilder.CreateTable(
                name: "Actividad",
                schema: "dbo",
                columns: table => new
                {
                    IdActividad = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    IdTipoActividad = table.Column<long>(nullable: false),
                    InicioLlamada = table.Column<DateTime>(nullable: false),
                    FinLlamada = table.Column<DateTime>(nullable: false),
                    Motivo = table.Column<string>(nullable: true),
                    Resuelto = table.Column<bool>(nullable: false),
                    usuarioId = table.Column<string>(nullable: true),
                    TipoActividadIdTipoActividad = table.Column<long>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Actividad", x => x.IdActividad);
                    table.ForeignKey(
                        name: "FK_Actividad_TipoActividad_TipoActividadIdTipoActividad",
                        column: x => x.TipoActividadIdTipoActividad,
                        principalSchema: "dbo",
                        principalTable: "TipoActividad",
                        principalColumn: "IdTipoActividad",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Actividad_AspNetUsers_usuarioId",
                        column: x => x.usuarioId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Actividad_TipoActividadIdTipoActividad",
                schema: "dbo",
                table: "Actividad",
                column: "TipoActividadIdTipoActividad");

            migrationBuilder.CreateIndex(
                name: "IX_Actividad_usuarioId",
                schema: "dbo",
                table: "Actividad",
                column: "usuarioId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Actividad",
                schema: "dbo");

            migrationBuilder.DropTable(
                name: "TipoActividad",
                schema: "dbo");

            migrationBuilder.DropColumn(
                name: "Activo",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "Discriminator",
                table: "AspNetUsers");
        }
    }
}
