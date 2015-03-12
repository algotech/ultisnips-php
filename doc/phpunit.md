# PHPUnit snippets for vim #

- [Classes](#classes)
- [Mockings](#mockings)
- [Expectations](#expectations)
- [Back to main page](../README.md)

All shortcuts start with the `pu` prefix and are both short and intuitive:

### Classes ###

`putest`

```php
<?php

namespace AlgoTech\MainBundle\Tests;

/**
 * Class: CustomTest
 *
 * @see https://phpunit.de/manual/4.5/en/writing-tests-for-phpunit.html
 * @see \PHPUnit_Framework_TestCase
 */
class CustomTest extends \PHPUnit_Framework_TestCase
{

}
```

### Mockings ###

`pumock`

```php
$this
    ->getMockBuilder('Class')
    ->setMethods(array())
    ->disableOriginalConstructor()
    ->getMock()
```

`pumockpartial`

```php
$this
    ->getMockBuilder('Class')
    ->setConstructorArgs(array())
    ->setMethods(array())
    ->getMock()
```

### Expectations ###

`puexpects`

```php
->expects($this->once())
->method('method')
->with($this->equalTo('something'))
->will($this->returnValue(null))
```

`puexpectsat`

```php
->expects($this->at(0))
->method('method')
->with($this->equalTo('something'))
->will($this->returnValue(null))
```
