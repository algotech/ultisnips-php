# ultisnips-php #

A vim bundle with snippets for *PHP* developers.
It contains snippets for the following tools:
 - *PHP* - [snippets](doc/php.md) | [website][php-website]
 - *PHPUnit* - [snippets](doc/phpunit.md) | [website][phpunit-website]
 - *Symfony2* - [snippets](doc/symfony2.md) | [website][symfony2-website]
 - *JMSSerializerBundle* - [snippets](doc/jms.md) | [website][jms-website]

Required bundles:
 - [ultisnips](https://github.com/SirVer/ultisnips)

## Installation

### Install with [vundle](https://github.com/gmarik/vundle)

Add to vimrc:

    Plugin "algotech/ultisnips-php"

And install it:

    :so ~/.vimrc
    :PluginInstall

### Install with [pathogen](https://github.com/tpope/vim-pathogen)

      cd ~/.vim/bundle
      git clone https://github.com/algotech/ultisnips-php.git

## Configuration

If you use the PSR-4 autoloading, then you can add a namespace prefix using `g:ultisnips_php_namespace_prefix`:
    
      let g:ultisnips_php_namespace_prefix = 'MyProject\Namespace'

[php-website]: http://php.net
[phpunit-website]: https://phpunit.de
[symfony2-website]: http://symfony.com
[jms-website]: http://jmsyst.com/bundles/JMSSerializerBundle
