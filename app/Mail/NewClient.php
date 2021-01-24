<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class NewClient extends Mailable
{
    use Queueable, SerializesModels;

    private $tempClient;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($tempClient)
    {
        $this->tempClient = $tempClient;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('emails.newClient')
                    ->with([
                        'clientName' => $this->tempClient->personal_name,
                        'business' => $this->tempClient->name,
                        'region' => $this->tempClient->clientRegion->region_name,
                        'tel' => $this->tempClient->tel,
                    ]);
    }
}
