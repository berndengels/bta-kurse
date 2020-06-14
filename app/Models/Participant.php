<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class Participant extends Model
{
    protected $fillable = ['name'];
    protected $appends = [];
    public $timestamps = false;

    public function scopeFilterByCourseId(Builder $query, $id) {
        return $query->whereHas('courses', function (Builder $query) use ($id) {
            $query->where('course_id', $id);
        })->get();
    }

    public function courses()
    {
        return $this->belongsToMany(CourseDate::class, 'participant_coursedate')
            ->orderBy('start');
    }

    public function __toString()
    {
        return $this->name;
    }
}
