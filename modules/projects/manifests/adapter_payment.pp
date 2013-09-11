class projects::adapter_payment {

  boxen::project { 'adapter_payment':
    # ensure a certain ruby version is used in a dir
    source     => 'git@gitlab.sla-alacrity.com:production-gems/adapter-payment.git',
    ruby       => '1.9.3-p392',
    postgresql => false
  }
}

