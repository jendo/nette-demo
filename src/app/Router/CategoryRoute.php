<?php
declare(strict_types=1);

namespace App\Router;

use App\Model\Category\CategoryNotFoundException;
use App\Model\Category\CategoryRepository;
use Nette\Http\IRequest;
use Nette\Http\Url;
use Nette\Http\UrlScript;
use Nette\Routing\Router;

class CategoryRoute implements Router
{

    private CategoryRepository $categoryRepository;

    public function __construct(CategoryRepository $categoryRepository)
    {
        $this->categoryRepository = $categoryRepository;
    }

    public function match(IRequest $httpRequest): ?array
    {
        $slug = ltrim($httpRequest->getUrl()->getPath(), '/');
        if ($slug === '') {
            return null;
        }

        try {
            $category = $this->categoryRepository->getByUrl($slug);
        } catch (CategoryNotFoundException $e) {
            return null;
        }

        $params['presenter'] = 'Category';
        $params['slug'] = $category->getUrl();

        return $params;
    }

    public function constructUrl(array $params, UrlScript $refUrl): ?string
    {
        if ($params['presenter'] !== 'Category') {
            return null;
        }

        $baseUrl = $refUrl->getBaseUrl();
        $url = $baseUrl . $params['slug'];

        return (new Url($url))->getAbsoluteUrl();
    }
}
