class projects::adapter_payment_mpay {

  boxen::project { 'adapter_payment_mpay':
    # ensure a certain ruby version is used in a dir
    source     => 'git@gitlab.sla-alacrity.com:production-gems/adapter-payment-mpay.git',
    ruby       => '1.9.3-p392',
    postgresql => false
  }
}

