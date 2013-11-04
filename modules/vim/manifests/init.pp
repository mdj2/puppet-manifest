class vim {	
	# Install Vim package, set up Vim configuration files under home directory
	#
	package { 'vim-common':
  	ensure => '7.2.411-1.8.el6',
	}
	package { 'vim-enhanced':
  	ensure => '7.2.411-1.8.el6',
	}
	package { 'vim-minimal':
  	ensure => '7.2.411-1.8.el6',
	}
        
	# Create directory and files
        file { '/root/.vim':
           ensure => 'directory',
           group  => '501',
           mode   => '755',
           owner  => '501',
        }
        file { '/root/.vimrc':
           ensure  => 'file',
           source => 'puppet:///modules/vim/.vimrc',
           group   => '501',
           mode    => '644',
           owner   => '501',
        }
        file { '/root/.vim/backup':
          ensure => 'directory',
          group  => '501',
          mode   => '755',
          owner  => '501',
        }
        file { '/root/.vim/colors':
          ensure => 'directory',
          group  => '501',
          mode   => '755',
          owner  => '501',
        }
        file { '/root/.vim/colors/wombat256mod.vim':
          ensure  => 'file',
          source => 'puppet:///modules/vim/.vim/colors/wombat256mod.vim',
          group   => '501',
          mode    => '644',
          owner   => '501',
        }
        file { '/root/.vim/colors/zenburn.vim':
          ensure  => 'file',
          source => 'puppet:///modules/vim/.vim/colors/zenburn.vim',
          group   => '501',
          mode    => '644',
          owner   => '501',
        }
        file { '/root/.vim/tmp':
          ensure => 'directory',
          group  => '501',
          mode   => '755',
          owner  => '501',
        }
        file { '/root/.vim/undo':
          ensure => 'directory',
          group  => '501',
          mode   => '755',
          owner  => '501',
        }
        file { '/root/.vim/view':
          ensure => 'directory',
          group  => '501',
          mode   => '755',
          owner  => '501',
        }
} 
