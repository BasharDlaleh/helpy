<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ContactUs extends Mailable
{
    use Queueable, SerializesModels;

    private $contactInfo;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($contactInfo)
    {
        $this->contactInfo = $contactInfo;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('emails.contactUs')
                    ->with([
                        'clientName' => $this->contactInfo['client_name'],
                        'clientEmail' => $this->contactInfo['client_email'],
                        'clientTel' => $this->contactInfo['client_tel'],
                    ]);
    }
}
