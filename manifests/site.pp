# Make filebucket 'main' the default backup location for all File resources
# Required for puppet master to show file diffs
filebucket { 'main':
  server => 'puppet',
  path   => false,
}
File { backup => 'main' }

node default {
	notify{'Hello from Puppet Master':}
}
