@extends('layouts.default')

@section('header')
    Kurs-Teilnehmer
@endsection

@section('body')
    <div>
        <table class="table table-striped">
            <tr>
                <th>Teilnehmer</th>
                <th>Kurse</th>
            </tr>
            @foreach($data as $item)
                <tr>
                    <td>{{ $item }}</td>
                    <td>
                        @foreach($item->courses as $course)
                            {{ $course->start->format('d.m.Y') }}:
                            <span
                                @if($kursID == $course->course_id)
                                    class="text-primary"
                                @endif
                            ><b>{{ $course->course }}</b></span><br>
                        @endforeach
                    </td>
                </tr>
            @endforeach
        </table>
    </div>
@endsection
