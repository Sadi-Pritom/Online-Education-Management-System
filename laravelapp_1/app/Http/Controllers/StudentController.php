<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use App\Models\CourseStudent;
use App\Models\Course;
use App\Models\Department;


class StudentController extends Controller
{
    //
    public function list()
    {
        
        
        $students=Student::all(); //select * from students and also converts it into collection of student object
        
        /*

       // $student = array ("id"=>1,"name"=>"Tanvir Ahmed","dob"=>"12.12.12");
       // $student=(object) $student;
        //return var_dump($student);
        $students = array();
        for($i=0;$i<10;$i++){
            $student=array(
                "id"=> $i+1,
                "name"=>"student".($i+1),
                "dept"=>"CS"

            );
            $student=(object)$student;
            $students[]=$student;

        }
         */
        return view('student.list')->with('students',$students);
    }
    public function create()
    {
        return view('student.create');
    }
    public function get()
    {
        $name = "Tanvir Ahmed";
        $id = "123";
        $courses = ["pl1","pl2","DS","Algorithm","oop1","oop2","oop3","atp1","atp2","atp3"];

        return view('student.get')
        ->with('name',$name)
        ->with('id',$id)
        ->with('courses',$courses);
    }
    public function details(Request $req)
    {
       /* return view('student.get')
        ->with('name',$req->name)
        ->with('id',$req->id-839)
        ->with('courses',[]);
        */
        $student= Student::where ('id',decrypt($req->id))
        ->first();
       /*
        //return $student->department->courses;//kaj kore na//thik ase ekhon
     //  return $student->department->students;
     // return $student->courseStudent;
     //return $student->courseStudent[0]->course;//id dekhanor kotha name dekhay//thik ase ekhon
     //return $student->courseStudent[0]->course->name;
     //return $student->courseStudent[0]->course->department;//eta kaj kore na //thik ase ekhon

    */


    return view('student.get')->with('s',$student);

    }

    public function edit(Request $req)
    {
        
       /* $student = Student :: where('id',decrypt($req->id))
        ->select('name','id')->first();*/
        $student = Student :: where('id',decrypt($req->id))
        ->first();
       // return $student->department->head;
        //generate edit in blade

        //my code start from here
       /* return view('student.update')
        
        ->with('student',$student);
       */
      return $student;
        
    }

    //if its your editsumit function
    public function editSubmit(Request $req)
    {
        $st= Student::where('id',$req->id)->first();
        $st->name=$req->name;
        $st->username=$req->username;
        $st->email=$req->email;
       
        $st->save(); //update
    }


   /* ////this function is done by me
    public function updateSubmit(Request $req)
    {
       

        
          $this->validate($req,

          [
            name'=>'required|regex:/^[A-Z a-z]+$/',
            'username'=>'required|min:5|max:20',
            'email'=>'required|email',//|exists:students, email'
           // 'password'=>'required|min:8',
            //'conf_password'=>'required|same:password'
            

        ],

        [
            'username.required' => 'Please provide username',
            'username.max'=>'Username must not exceed 20 alphabets',
           // 'conf_password.same'=>'Password and confirm password must match'
        ]
         );

         $st= Student::where('id',$req->id)->first();
          //$st->name=$req->name;
         // $st->username=$req->username;
         // $st->email=$req->email;
         DB::update('update student_info set name = ? where id = ?',[$name,$id]);
          
          $st->save(); 
          return redirect()->route('student.list');
        return "<h1>the form is Updated with $req->name</h1>";
    }
    */
}
