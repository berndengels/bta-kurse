@extends('layouts.default')

@section('header')
    <div class="float-left">
        Kurs-Teilnehmer
    </div>
    <div class="float-right w-50 mr-0 pr-0">
        <form id="frm" method="get">
            @csrf
            <x-inp.select name="courseID" label="Kurs" :options="$courses" />
        </form>
    </div>
@endsection

@section('body')
    <div>
        @if($data->count())
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
                                @if((int) $courseID === $course->course_id)
                                    class="text-primary"
                                @endif
                            ><b>{{ $course->course }}</b></span><br>
                        @endforeach
                    </td>
                </tr>
            @endforeach
        </table>
        @else
            <h5>Keine Daten vorhanden</h5>
        @endif
    </div>
    <script>
        $('#courseID').change(function (e) {
            var action = "{{ route('participant.list') }}/" + e.target.value;
            $('#frm').attr({action: action}).submit();
        });
    </script>
@endsection
