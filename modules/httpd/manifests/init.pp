class httpd {
	# Install apache, copy over some configuration files, and start the service
	#
	#
	# Install package
	#
	
    $classname = httpd

    package { 'httpd':
		ensure => '2.2.15-29.el6.centos',
	}

    package { 'httpd-tools':
		ensure => '2.2.15-29.el6.centos',
        before => Service['httpd'],

	}

	#
	# Copy over some files from manifests directory
	#
	# /etc/httpd/conf directory

	file { '/etc/httpd/conf/httpd.conf':
		ensure   => 'file',
		source => 'puppet:///modules/httpd/conf/httpd.conf',
		group    => '0',
		mode     => '444',
		owner    => '0',
		selrange => 's0',
		selrole  => 'object_r',
		seltype  => 'httpd_config_t',
		seluser  => 'system_u',
	}
	file { '/etc/httpd/conf/magic':
		ensure   => 'file',
		source => 'puppet:///modules/httpd/conf/magic',
		group    => '0',
		mode     => '644',
		owner    => '0',
		selrange => 's0',
		selrole  => 'object_r',
		seltype  => 'httpd_config_t',
		seluser  => 'system_u',
	}
	
	# Create modsecurity.d directory
	#
	file { '/etc/httpd/modsecurity.d':
	  ensure   => 'directory',
	  group    => '0',
	  mode     => '755',
	  owner    => '0',
	  selrange => 's0',
	  selrole  => 'object_r',
	  seltype  => 'httpd_config_t',
	  seluser  => 'system_u',
	}
    file { '/etc/httpd/modsecurity.d/modsecurity-old.d':
	  ensure   => 'directory',
	  group    => '0',
	  mode     => '755',
	  owner    => '0',
	  selrange => 's0',
	  selrole  => 'object_r',
	  seltype  => 'httpd_config_t',
	  seluser  => 'system_u',
	}
	#
	# /etc/httpd/conf.d directory

	file { '/etc/httpd/conf.d/mod_deflate.conf':
		ensure   => 'file',
		source => 'puppet:///modules/httpd/conf.d/mod_deflate.conf',
		group    => '0',
		mode     => '444',
		owner    => '0',
		selrange => 's0',
		selrole  => 'object_r',
		seltype  => 'httpd_config_t',
		seluser  => 'system_u',
	}
	file { '/etc/httpd/conf.d/mod_security.conf':
		ensure   => 'file',
		source => 'puppet:///modules/httpd/conf.d/mod_security.conf',
		group    => '0',
		mode     => '444',
		owner    => '0',
		selrange => 's0',
		selrole  => 'object_r',
		seltype  => 'httpd_config_t',
		seluser  => 'system_u',
	}
	file { '/etc/httpd/conf.d/mod_security.conf.rpmnew':
		ensure   => 'file',
		source => 'puppet:///modules/httpd/conf.d/mod_security.conf.rpmnew',
		group    => '0',
		mode     => '644',
		owner    => '0',
		selrange => 's0',
		selrole  => 'object_r',
		seltype  => 'httpd_config_t',
		seluser  => 'system_u',
	}
	file { '/etc/httpd/conf.d/php.conf':
		ensure   => 'file',
		source => 'puppet:///modules/httpd/conf.d/php.conf',
		group    => '0',
		mode     => '644',
		owner    => '0',
		selrange => 's0',
		selrole  => 'object_r',
		seltype  => 'httpd_config_t',
		seluser  => 'system_u',
	}
	file { '/etc/httpd/conf.d/README':
		ensure   => 'file',
		source => 'puppet:///modules/httpd/conf.d/README',
		group    => '0',
		mode     => '644',
		owner    => '0',
		selrange => 's0',
		selrole  => 'object_r',
		seltype  => 'httpd_config_t',
		seluser  => 'system_u',
	}
	file { '/etc/httpd/conf.d/ssl.conf':
		ensure   => 'file',
		source => 'puppet:///modules/httpd/conf.d/ssl.conf',
		group    => '0',
		mode     => '444',
		owner    => '0',
		selrange => 's0',
		selrole  => 'object_r',
		seltype  => 'httpd_config_t',
		seluser  => 'system_u',
	}
	file { '/etc/httpd/conf.d/welcome.conf':
		ensure   => 'file',
		source => 'puppet:///modules/httpd/conf.d/welcome.conf',
		group    => '0',
		mode     => '644',
		owner    => '0',
		selrange => 's0',
		selrole  => 'object_r',
		seltype  => 'httpd_config_t',
		seluser  => 'system_u',
	}
	file { '/etc/httpd/conf.d/wsgi.conf':
		ensure   => 'file',
		source => 'puppet:///modules/httpd/conf.d/wsgi.conf',
		group    => '0',
		mode     => '444',
		owner    => '0',
		selrange => 's0',
		selrole  => 'object_r',
		seltype  => 'httpd_config_t',
		seluser  => 'system_u',
	}
	file { '/etc/httpd/conf.d/auth_cas.conf':
		ensure   => 'file',
		source => 'puppet:///modules/httpd/conf.d/auth_cas.conf',
		group    => '0',
		mode     => '444',
		owner    => '0',
		selrange => 's0',
		selrole  => 'object_r',
		seltype  => 'httpd_config_t',
		seluser  => 'system_u',
	}
	file { '/etc/httpd/conf.d/z_vhost.conf':
		ensure   => 'file',
		source => 'puppet:///modules/httpd/conf.d/z_vhost.conf',
		group    => '0',
		mode     => '444',
		owner    => '0',
		selrange => 's0',
		selrole  => 'object_r',
		seltype  => 'httpd_config_t',
		seluser  => 'system_u',
	}

	# 
	# Create vhost.d directory 
	file { '/etc/httpd/vhost.d/':
		ensure   => 'directory',
		group    => '0',
		mode     => '555',
		owner    => '0',
		selrange => 's0',
		selrole  => 'object_r',
		seltype  => 'httpd_config_t',
		seluser  => 'system_u',
	}
	file { '/etc/httpd/vhost.d/django.conf.example':
	  ensure  => 'file',
	  source => 'puppet:///modules/httpd/vhost.d/django.conf.example',
	  group   => '501',
	  mode    => '644',
	  owner   => '501',
	}
	file { '/etc/httpd/vhost.d/normal.conf.example':
	  ensure  => 'file',
	  source => 'puppet:///modules/httpd/vhost.d/normal.conf.example',
	  group   => '501',
	  mode    => '644',
	  owner   => '501',
	}
	file { '/etc/httpd/vhost.d/vagrant.conf':
	  ensure  => 'file',
	  source => 'puppet:///modules/httpd/vhost.d/vagrant.conf',
	  group   => '501',
	  mode    => '644',
	  owner   => '501',
	}
	#
	# Start httpd service

	service { 'httpd' :
		ensure => running,
		enable => true,
    	subscribe => File['/etc/httpd/conf/httpd.conf'],
	}
}
