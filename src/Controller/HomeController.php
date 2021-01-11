<?php

namespace App\Controller;

use App\Model\Factory\ModelFactory;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

/**
 * Class HomeController
 * Manages the Homepage
 * @package App\Controller
 */
class HomeController extends MainController
{
    /**
     * Renders the View Home
     * @return string
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */    
    public function defaultMethod()
    {
        $allPerson= ModelFactory::getModel("Personne")->listData();

        return $this->twig->render("home.twig", ["allPerson" => $allPerson]);
    }

    public function addMethod(){

        $post = $this->post->verifyPost();

        if($post === true){
            $post = $this->post->getPostArray();

            ModelFactory::getModel("Personne")->createData($post);

            return $this->twig->render("add.twig", ['success' => 'Ajouter avec succès']);
        }

        return $this->twig->render("add.twig", ["error" => $post]);
    }
    
    /**
     * searchMethod
     *
     * @return void
     */
    public function searchMethod(){
        $post = $this->post->verifyPost();

        if($post === true){
            $result = ModelFactory::getModel("Personne")->searchAllColumns( $this->post->getPostVar('search') );

            return $this->twig->render("search.twig", ["allPerson" => $result]);
        }
        return $this->twig->render("search.twig", ["error" => $post]);
    }
    
    /**
     * updateMethod
     *
     * @return void
     */
    public function updateMethod(){
        
        $get = filter_input(INPUT_GET, 'id');

        $person = ModelFactory::getModel("Personne")->readData($get);

        $post = $this->post->verifyPost();
        if($post === true)
        {
            $post = $this->post->getPostArray();

            ModelFactory::getModel("Personne")->updateData($person['id'], $post);

            return $this->twig->render("update.twig", 
                ['person' => $person, 'success' => 
                'La personne a bien été modifiée']);
        }

        return $this->twig->render("update.twig", ["person" => $person, "error" => $post]);
    }

    
    /**
     * deleteMethod
     *
     * @return void
     */
    public function deleteMethod(){
        $get = filter_input(INPUT_GET, 'id');

        ModelFactory::getModel("Personne")->deleteData($get);

        return $this->redirect("home");
    }
}
