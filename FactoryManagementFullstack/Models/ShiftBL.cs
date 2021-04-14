using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FactoryManagementFullstack.Models
{
    public class ShiftBL
    {
        private FactoryManagementDBEntities db = new FactoryManagementDBEntities();

        public List<EmployeesData> GetAllEmployeeShifts()
        {
            EmployeeBL employeeBL = new EmployeeBL(); 
            List<EmployeesData> list = employeeBL.GetAllEmployeesData();
            List<EmployeesData> orderedList = list.OrderBy(x => x.ShiftID).ToList();

            return orderedList;
        }

        public void Add(EmployeesData data)
        {
            shift shift = new shift();
            shift.date = data.Date;
            shift.start_time = data.StartTime;
            shift.end_time = data.EndTime;

            db.shifts.Add(shift);
            db.SaveChanges();
        }
    }
}