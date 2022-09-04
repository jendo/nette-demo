<?php
declare(strict_types=1);

namespace App\Router;

use App\Model\Category\CategoryRepository;
use Nette\Application\Routers\RouteList;


final class RouterFactory
{

    private CategoryRepository $categoryRepository;

    public function __construct(CategoryRepository $categoryRepository)
    {
        $this->categoryRepository = $categoryRepository;
    }

    public function createRouter(): RouteList
	{
		$router = new RouteList;
        $router->add(new CategoryRoute($this->categoryRepository));
        $router->addRoute('product/<slug  [a-z-]+>','Product:default');
		$router->addRoute('<presenter>/<action>[/<id>]', 'Homepage:default');
		return $router;
	}
}
