class projects::adapter_payment_gig {

  boxen::project { 'adapter_payment_gig':
    # ensure a certain ruby version is used in a dir
    source     => 'git@gitlab.sla-alacrity.com:production-gems/adapter-payment-gig.git',
    ruby       => '1.9.3-p392',
    postgresql => false
  }
}

