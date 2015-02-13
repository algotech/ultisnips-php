ultisnips-symfony2
==================

A vim bundle with snippets for symfony developers

Required bundles:
 - [ultisnips](https://github.com/SirVer/ultisnips)

## Shortcuts ##

All shortcuts start with the `sf` prefix and are both short and intuitive:

### Bundle ###

`sfbundle`

```php
<?php

namespace Wee\DefaultBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class WeeDefaultBundle extends Bundle
{
}
```

`sfbundleextension`

```php
<?php

namespace Wee\DefaultBundle\DependencyInjection;

use Symfony\Component\DependencyInjection\ContainerBuilder;
use Symfony\Component\Config\FileLocator;
use Symfony\Component\HttpKernel\DependencyInjection\Extension;
use Symfony\Component\DependencyInjection\Loader;

/**
 * This is the class that loads and manages your bundle configuration
 *
 * To learn more see {@link http://symfony.com/doc/current/cookbook/bundles/extension.html}
 */
class WeeDefaultBundleExtension extends Extension
{
    /**
     * {@inheritDoc}
     */
    public function load(array $configs, ContainerBuilder $container)
    {
        $configuration = new Configuration();
        $config = $this->processConfiguration($configuration, $configs);

        $loader = new Loader\YamlFileLoader($container, new FileLocator(__DIR__.'/../Resources/config'));
        $loader->load('services.yml');
    }
}
```

`sfbundleconfig`

```php
<?php

namespace Wee\DefaultBundle\DependencyInjection;

use Symfony\Component\Config\Definition\Builder\TreeBuilder;
use Symfony\Component\Config\Definition\ConfigurationInterface;

/**
 * This is the class that validates and merges configuration from your app/config files
 *
 * To learn more see {@link http://symfony.com/doc/current/cookbook/bundles/extension.html#cookbook-bundles-extension-config-class}
 */
class Configuration implements ConfigurationInterface
{
    /**
     * {@inheritDoc}
     */
    public function getConfigTreeBuilder()
    {
        $treeBuilder = new TreeBuilder();
        $rootNode = $treeBuilder->root('wee_default');

        return $treeBuilder;
    }
}
```
### Class ###

`sfclass`

```php
<?php

namespace Wee\DefaultBundle\Class;

class CustomClass
{

}
```

`sfinterface`

```php
<?php

namespace Wee\DefaultBundle\Class;

interface CustomInterface
{

}
```

### Command ###

`sfcommandca`

```php
<?php

namespace Wee\DefaultBundle\Command;

use Symfony\Bundle\FrameworkBundle\Command\ContainerAwareCommand;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class CustomCommand extends ContainerAwareCommand
{
    /**
     * {@inheritdoc}
     */
    protected function configure()
    {
        $this
            ->setName('default:command')
            ->setDescription('Default description')
            ;
    }

    /**
     * {@inheritdoc}
     */
    protected function execute(InputInterface $input, OutputInterface $output)
    {

    }
}
```

`sfcommand`

```php
<?php

namespace Wee\DefaultBundle\Command;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class CustomCommand extends Command
{
    /**
     * {@inheritdoc}
     */
    protected function configure()
    {
        $this
            ->setName('default:command')
            ->setDescription('Default description')
            ;
    }

    /**
     * {@inheritdoc}
     */
    protected function execute(InputInterface $input, OutputInterface $output)
    {

    }
}
```

### Controller ###

`sfcontroller`

```php
<?php

namespace Wee\DefaultBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    public function indexAction(Request $request)
    {

        return $this->render('Bundle:Folder:file.html.twig', array());
    }
}
```

`sfcontrollera`

```php
<?php

namespace Wee\DefaultBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("index", name="default.index")
     * @Template(index)
     */
    public function indexAction(Request $request)
    {

    }
}
```

`sfaction`

```php
public function customAction(Request $request)
{

    return $this->render('Bundle:Folder:file.html.twig', array());
}
```

`sfactiona`

```php
/**
 * @Route("custom", name="default.custom")
 * @Template(custom)
 */
public function customAction(Request $request)
{

}
```

`sfrender`

```php
return $this->render('Bundle:Folder:file.html.twig', array());
);
```

`sfforward`

```php
$this->forward(
    'Default:Controller:index',
    array()
);
```

`sfredirect`

```php
$this->redirect(
    $this->generateUrl(
        'route',
        array()
    )
);
```

### Doctrine ###

`sfrepository`

```php
<?php

namespace Wee\DefaultBundle\Repository;

use Doctrine\ORM\EntityRepository;

class CustomRepository extends EntityRepository
{
}
```

`sfentity`

```php
<?php

namespace Wee\DefaultBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity()
 * @ORM\Table(name="main_defaults")
 */
class Default
{
    /**
     * @ORM\Id()
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;
}
```

`sfcolumn`

```php
/**
 * @ORM\Column(type="string")
 */
protected $column;
```

### Form ###

`sfform`

```php
<?php

namespace Wee\DefaultBundle\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class CustomType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        ;
    }

    /**
     * {@inheritdoc}
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => null,
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getName()
    {
        return 'custom';
    }
}
```

`sfdatatransformer`

```php
<?php

namespace Wee\DefaultBundle\Form\Transformer;

use Symfony\Component\Form\DataTransformerInterface;
use Symfony\Component\Form\Exception\UnexpectedTypeException;
use Symfony\Component\Form\Exception\TransformationFailedException;

class CustomDataTransformer extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function transform($value)
    {

    }

    /**
     * {@inheritdoc}
     */
    public function reverseTransform($value)
    {

    }
}
```

### Twig ###

`sftwigextension`

```php
<?php

namespace Wee\DefaultBundle\Twig;

class AppExtension extends \Twig_Extension
{
    /**
     * {@inheritdoc}
     */
    public function getFilters()
    {
        return array();
    }

    /**
     * {@inheritdoc}
     */
    public function getFunctions()
    {
        return array();
    }

    /**
     * {@inheritdoc}
     */
    public function getName()
    {
        return 'extension_name';
    }
}
```

### Validator ###

`sfcontraint`

```php
<?php

namespace Wee\DefaultBundle\Validator\Constraint;

use Symfony\Component\Validator\Constraint;

class CustomConstraint extends Constraint
{
    public $message = 'Custom';
}
```

`sfvalidator`

```php
<?php

namespace Wee\DefaultBundle\Validator\Constraint;

use Symfony\Component\Validator\Constraint;
use Symfony\Component\Validator\ConstraintValidator;

class CustomValidator extends ConstraintValidator
{
    public function validate($value, Constraint $constraint)
    {

    }
}
```

### YML ###

`sfroute`

```yml
route_name:
    path: /
    defaults:
        _controller: Bundle:Controller:action
    requirements:
        _method: GET|POST
```

`sfservice`

```yml
service_name:
    class: %service_name.class%
    arguments:
        -
```
