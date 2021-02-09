@component('mail::message')
# New Contact Request

Client name : {{$clientName}} <br>
Client email : {{$clientEmail}} <br>
Client tel : {{$clientTel}} <br>
Client message : {{$clientMsg}}

{{-- @component('mail::button', ['url' => ''])
Button Text
@endcomponent --}}

Regards,<br>
Helpy API
@endcomponent