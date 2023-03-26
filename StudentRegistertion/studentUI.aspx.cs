using System;
using System.Linq;

namespace StudentRegistertion
{
    public partial class studentUI : System.Web.UI.Page
    {
        StudentDbContex _dbContext = new StudentDbContex();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetStudent();
            }
        }
        protected void GetStudent()
        {
            var stud = _dbContext.Students.ToList();
            gvStudent.DataSource = stud;
            gvStudent.DataBind();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Student std = new Student();
            std.FristName = txtfname.Text;
            std.LastName = txtlname.Text;
            std.RollNumber = txtroll.Text;
            if (rdmale.Checked)
            {
                std.Gender = "Male";
            }
            else
            {
                std.Gender = "Female";
            }
            std.DateOfBirth = Convert.ToDateTime(txtdob.Text);
            std.MobileNumber = txtmobile.Text;
            std.Qulification = ddlqual.Text;
            std.State = txtstate.Text;
            std.HomeTown = txthom.Text;
            std.District = txtdist.Text;
            std.Country= txtcountry.Text;
            _dbContext.Students.Add(std);
            _dbContext.SaveChanges();
            lblResult.Text = "Student Registered Successfully !!";
            GetStudent();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            Student student = new Student();
            student.LastName = txtlname.Text;
            student = _dbContext.Students.Where(x => x.LastName == student.LastName).FirstOrDefault();
            student.RollNumber= txtroll.Text;
            student = _dbContext.Students.Where(x=>x.RollNumber==student.RollNumber).FirstOrDefault();
            if(student !=null)
            {
                _dbContext.Students.Remove(student);
                _dbContext.SaveChanges();
                lblResult.Text = "Employee Deleted Succesfully";
                GetStudent();
            }
            else
            {
                lblResult.Text = "User Data not found";
            }

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            Student student = new Student();
            student.FristName = txtfname.Text;
            student.LastName = txtlname.Text;
            student.RollNumber = txtroll.Text;
            if (rdmale.Checked)
            {
                student.Gender = "Male";
            }
            else
            {
                student.Gender = "Female";
            }
            student.DateOfBirth = Convert.ToDateTime(txtdob.Text);
            student.MobileNumber = txtmobile.Text;
            student.Qulification = ddlqual.Text;
            student.State = txtstate.Text;
            student.HomeTown = txthom.Text;
            student.District = txtdist.Text;
            student.Country = txtcountry.Text;
            _dbContext.Students.Add(student);
            _dbContext.SaveChanges();
            lblResult.Text = "Student Update Successfully !!";
            GetStudent();

        }
    }
}