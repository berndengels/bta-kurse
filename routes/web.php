<?php
use Illuminate\Support\Facades\Route;

Auth::routes();
Route::get('/{kursID?}', 'ParticipantController@index')->name('participant.list');
