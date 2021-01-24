@component('mail::message')
# New Client Registeration Request

Client name : {{$clientName}} <br>
Client business : {{$business}} <br>
Client business : {{$region}} <br>
Client Tel : {{$tel}}

{{-- @component('mail::button', ['url' => ''])
Button Text
@endcomponent --}}

Regards,<br>
Helpy API
@endcomponent
