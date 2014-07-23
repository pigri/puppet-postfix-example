class postfix::install {
	package { 
	    postfix:
	    	ensure => present;
	    mailx:
	    	ensure => present;
	    sendmail:
	        ensure => absent;
	}
}