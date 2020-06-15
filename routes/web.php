<?php
use Illuminate\Support\Facades\Route;

Auth::routes();
Route::get('/{courseID?}', 'ParticipantController@index')->name('participant.list');
