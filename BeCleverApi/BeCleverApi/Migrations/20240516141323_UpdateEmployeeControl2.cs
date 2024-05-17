using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BeCleverApi.Migrations
{
    /// <inheritdoc />
    public partial class UpdateEmployeeControl2 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_employeecontrol_Employee_Employeeid",
                table: "employeecontrol");

            migrationBuilder.DropIndex(
                name: "IX_employeecontrol_Employeeid",
                table: "employeecontrol");

            migrationBuilder.DropColumn(
                name: "Employeeid",
                table: "employeecontrol");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Employeeid",
                table: "employeecontrol",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_employeecontrol_Employeeid",
                table: "employeecontrol",
                column: "Employeeid");

            migrationBuilder.AddForeignKey(
                name: "FK_employeecontrol_Employee_Employeeid",
                table: "employeecontrol",
                column: "Employeeid",
                principalTable: "Employee",
                principalColumn: "id");
        }
    }
}
