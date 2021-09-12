<?php
class commentaire{
    private $id;
    private $date;
    private $commentaire;
    private $article_id;

    public function getId() : int
	{
		return $this->id;
	}

	public function setDate(string $d) : self
	{
		$this->date = $d;
		return $this;
	}
	public function getDate() : string
	{
		return $this->date;
	}

	public function setCommentaire(string $c) : self
	{
		$this->commentaire = $c;
		return $this;
	}
	public function getCommentaire() : string
	{
		return $this->commentaire;
	}

	public function setArticleId(int $id) : self
	{
		$this->article_id = $id;
		return $this;
	}
	public function getArticleId() : int
	{
		return $this->article_id;
	}
}
?>