# PHP snippets for vim #

- [Classes](#classes)
- [Generic methods](#generic-methods)
- [Getters and setters](#getters-and-setters)
- [Back to main page](../README.md)

### Classes ###

`class`

```php
<?php

namespace AlgoTech;

class ClassName
{

}
```

`interface`

```php
<?php

namespace AlgoTech;

interface InterfaceName
{

}
```

### Generic methods ###

`pub`

```php
public function name($param)
{
    return null;
}
```

`pro`

```php
protected function name($param)
{
    return null;
}
```

`pri`

```php
private function name($param)
{
    return null;
}
```

### Getters and setters ###

`get`

```php
/**
 * Get variable
 *
 * @return mixed
 */
public function getVariable()
{
    return $this->variable;
}

```

`set`

```php
/**
 * Set variable
 *
 * @param mixed $variable
 * @return mixed
 */
public function setVariable($variable)
{
    $this->variable = $variable;

    return $this;
}
```
