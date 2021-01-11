<?php

namespace App\Controller\Globals;


/**
 * Class PostController
 * @package App\Controller\Globals
 */
class PostController
{
    /**
     * @var mixed
     */
    private $post;

    /**
     * PostController constructor.
     */
    public function __construct()
    {
        $this->post = filter_input_array(INPUT_POST);
    }

    /**
     * @return mixed
     */
    public function getPostArray()
    {
        return $this->post;
    }

    /**
     * @param string $var
     * @return mixed
     */
    public function getPostVar(string $var)
    {
        return $this->post[$var];
    }

    /**
     * Verify if $_POST is empty or less than 5 character
     * @return bool|string
     * Return true if verif passed, false if null or empty, else return the error message
     */
    public function verifyPost(){
        $post = $this->getPostArray();
        if($post == null OR empty($post)){
            return false;
        }
        foreach ($post as $k => $v ){
            if(empty($v)){
                $error = $k .' est vide.';
                return $error;
            }
            elseif(strlen(trim($v)) <= 2)
            {
                $error =  $k .' est trop court.';
                return $error;
            }
        }
        return true;
    }
}