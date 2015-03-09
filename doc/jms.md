# JMSSerializerBundle snippets for vim #

- [Handlers](#handlers)
- [Back to main page](../README.md)

All shortcuts start with the `jms` prefix and are both short and intuitive:

### Handlers ###

`jmshandler`

```php
<?php

namespace AlgoTech\MainBundle\Handler;

use JMS\Serializer\Context;
use JMS\Serializer\GraphNavigator;
use JMS\Serializer\Handler\SubscribingHandlerInterface;
use JMS\Serializer\JsonDeserializationVisitor;
use JMS\Serializer\JsonSerializationVisitor;

class JMSCustomHandler implements SubscribingHandlerInterface
{
    /**
     * {@inheritdoc}
     */
    public static function getSubscribingMethods()
    {
        return array(

        );
    }
}
```

`jmsdeserializesubscribe`

```php
array(
    'direction' => GraphNavigator::DIRECTION_DESERIALIZATION,
    'format' => 'json',
    'type' => '',
),

```

`jmsdeserialize`

```php
public function deserializeTypeFromJson(
    JsonDeserializationVisitor $visitor,
    array $obj,
    array $type,
    Context $context
) {
    return
}
```
