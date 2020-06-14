<?php

namespace App\Http\Controllers;

use App\Models\Participant;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Database\Eloquent\Builder;

class ParticipantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index($kursID = null)
    {
        $data = ($kursID > 0) ? Participant::filterByCourseId($kursID) : Participant::all();
        return view('participant', compact('data','kursID'));
    }

    /**
     * Display the specified resource.
     *
     * @param Participant $participant
     * @return Response
     */
    public function show(Participant $participant)
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Participant $participant
     * @return Response
     */
    public function edit(Participant $participant)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Participant $participant
     * @return Response
     */
    public function update(Request $request, Participant $participant)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Participant $participant
     * @return Response
     */
    public function destroy(Participant $participant)
    {
        //
    }
}
