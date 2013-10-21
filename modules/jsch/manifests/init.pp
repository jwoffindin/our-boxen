class jsch {
  $home = "/Users/${::boxen_user}"
  $ant_lib = "${home}/.ant/lib"

  file { ["$home/.ant", $ant_lib]:
    ensure => "directory",
  }

  exec { 'jsch':
    command => "wget http://softlayer-dal.dl.sourceforge.net/project/jsch/jsch.jar/0.1.50/jsch-0.1.50.jar",
    require => File[$ant_lib],
    cwd => $ant_lib,
    creates => "${ant_lib}/jsch-0.1.50.jar",
    user => $boxen_user,
  }

  class { 'ant':
    version => '1.7.1',
  }
}
