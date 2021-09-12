<?php
class article{
    private $id;
    private $titre;
    private $contenu;
    private $categorie_id;


    public function getId() : int
	{
		return $this->id;
	}

	public function setTitre(string $t) : self
	{
		$this->titre = $t;
		return $this;
	}
	public function getTitre() : string
	{
		return $this->titre;
	}

	public function setContenu(string $c) : self
	{
		$this->contenu = $c;
		return $this;
	}
	public function getContenu() : string
	{
		return $this->contenu;
	}

	public function setCategorieId(int $id) : self
	{
		$this->categorie_id = $id;
		return $this;
	}
	public function getCategorieId() : int
	{
		return $this->categorie_id;
	}
} 
?>