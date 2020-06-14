<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CourseDate extends Model
{
    protected $table = 'coursedates';
    protected $fillable = ['start','end'];
    protected $dates = ['start', 'end'];
    public $timestamps = false;

    public function course() {
        return $this->belongsTo(Course::class);
    }

    public function participants()
    {
        return $this->belongsToMany(Participant::class, 'participant_coursedate');
    }
}
