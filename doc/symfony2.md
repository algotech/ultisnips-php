# Symfony2 snippets for vim #

- [Bundle](#bundle)
- [Command](#command)
- [Controller](#controller)
- [Doctrine](#doctrine)
- [Form](#form)
- [Twig](#twig)
- [Validator](#validator)
- [YML](#yml)
- [Back to main page](../README.md)

All shortcuts start with the `sf` prefix and are both short and intuitive:

### Bundle ###

`sfbundle`

```php
<?php

namespace AlgoTech\MainBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

/**
 * Class: AlgoTechMainBundle
 *
 * @see http://symfony.com/doc/current/cookbook/bundles/best_practices.html
 * @see Bundle
 */
class AlgoTechMainBundle extends Bundle
{
}
```

`sfbundleextension`

```php
<?php

namespace AlgoTech\MainBundle\DependencyInjection;

use Symfony\Component\Config\FileLocator;
use Symfony\Component\DependencyInjection\ContainerBuilder;
use Symfony\Component\DependencyInjection\Loader;
use Symfony\Component\HttpKernel\DependencyInjection\Extension;


/**
 * Class: AlgoTechMainExtension
 *
 * This is the class that loads and manages your bundle configuration.
 *
 * @see http://symfony.com/doc/current/cookbook/bundles/extension.html
 * @see Extension
 */
class AlgoTechMainExtension extends Extension
{
  /**
   * {@inheritDoc}
   */
  public function load(array $configs, ContainerBuilder $container)
  {
    $configuration = new Configuration();
    $config = $this->processConfiguration($configuration, $configs);

    $loader = new Loader\YamlFileLoader(
      $container,
      new FileLocator(__DIR__.'/../Resources/config')
    );

    $loader->load('services.yml');
  }
}
```

`sfbundleconfig`

```php
<?php

namespace AlgoTech\MainBundle\DependencyInjection;

use Symfony\Component\Config\Definition\Builder\TreeBuilder;
use Symfony\Component\Config\Definition\ConfigurationInterface;

/**
 * Class: Configuration
 *
 * This is the class that validates and merges configuration
 * from your app/config files.
 *
 * @see http://symfony.com/doc/current/cookbook/bundles/extension.html
 * @see ConfigurationInterface
 */
class Configuration implements ConfigurationInterface
{
    /**
     * {@inheritDoc}
     */
    public function getConfigTreeBuilder()
    {
        $treeBuilder = new TreeBuilder();
        $rootNode = $treeBuilder->root('algotech_main');

        return $treeBuilder;
    }
}
```

### Command ###

`sfcommandca`

```php
<?php

namespace AlgoTech\MainBundle\Command;

use Symfony\Bundle\FrameworkBundle\Command\ContainerAwareCommand;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

/**
 * Class: CustomCommand
 *
 * @see http://symfony.com/doc/current/cookbook/console/console_command.html
 * @see ContainerAwareCommand
 */
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

namespace AlgoTech\MainBundle\Command;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

/**
 * Class: CustomCommand
 *
 * @see http://symfony.com/doc/current/cookbook/console/console_command.html
 * @see Command
 */
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

namespace AlgoTech\MainBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Class: DefaultController
 *
 * @see http://symfony.com/doc/current/book/controller.html
 * @see Controller
 */
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

namespace AlgoTech\MainBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * Class: DefaultController
 *
 * @see http://symfony.com/doc/current/book/controller.html
 * @see Controller
 */
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
```

`sfforward`

```php
$this->forward(
    'Bundle:Controller:action',
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

namespace AlgoTech\MainBundle\Repository;

use Doctrine\ORM\EntityRepository;

/**
 * Class: CustomRepository
 *
 * @see http://symfony.com/doc/current/book/doctrine.html
 * @see EntityRepository
 */
class CustomRepository extends EntityRepository
{
}
```

`sfentity`

```php
<?php

namespace AlgoTech\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * Class: CustomEntity
 *
 * @ORM\Entity()
 * @ORM\Table()

 * @see http://symfony.com/doc/current/book/doctrine.html
 */
class CustomEntity
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

namespace AlgoTech\MainBundle\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

/**
 * Class: CustomType
 *
 * @see http://symfony.com/doc/current/book/forms.html
 * @see AbstractType
 */
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

namespace AlgoTech\MainBundle\Form\Transformer;

use Symfony\Component\Form\DataTransformerInterface;
use Symfony\Component\Form\Exception\UnexpectedTypeException;
use Symfony\Component\Form\Exception\TransformationFailedException;

/**
 * Class: CustomDataTransformer
 *
 * @see http://symfony.com/doc/current/cookbook/form/data_transformers.html
 * @see DataTransformerInterface
 */
class CustomDataTransformer implements DataTransformerInterface
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

namespace AlgoTech\MainBundle\Twig;

/**
 * Class: AppExtension
 *
 * @see http://symfony.com/doc/current/cookbook/templating/twig_extension.html
 * @see \Twig_Extension
 */
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

`sfconstraint`

```php
<?php

namespace AlgoTech\MainBundle\Validator\Constraint;

use Symfony\Component\Validator\Constraint;

/**
 * Class: CustomConstraint
 *
 * @see http://symfony.com/doc/current/cookbook/validation/custom_constraint.html
 * @see Constraint
 */
class CustomConstraint extends Constraint
{
    public $message = '';
}
```

`sfvalidator`

```php
<?php

namespace AlgoTech\MainBundle\Validator\Constraint;

use Symfony\Component\Validator\Constraint;
use Symfony\Component\Validator\ConstraintValidator;

/**
 * Class: CustomConstraintValidator
 *
 * @see http://symfony.com/doc/current/cookbook/validation/custom_constraint.html
 * @see ConstraintValidator
 */
class CustomConstraintValidator extends ConstraintValidator
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
