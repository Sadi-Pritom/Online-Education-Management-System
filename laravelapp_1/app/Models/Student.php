<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Department;
use App\Models\CourseStudent;

class Student extends Model
{
    use HasFactory;

    protected $table='students_info';
    //protected $primaryKey = 'student_id';
    //public $incrementing = false;
    //protected $keyType = 'string';
    //protected $connection='mysql2'; //jodi onno database server er sathe connect kora hoy

    public $timestamps=false;

    public function department(){
        return $this->belongsTo(Department::class,'dept_id'); 
        //return $this->belongsTo(Department::class,'dept_id','username');//mane department table er id er sathe connect na hoye username er sathe connect hobe
    }
    public function courseStudent(){
        return $this->hasMany(CourseStudent::class, 'st_id');
    }
   
}
