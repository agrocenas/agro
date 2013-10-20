<?php

use Phalcon\Tag,
	Phalcon\Mvc\Model\Criteria,
	Phalcon\Forms\Form,
	Phalcon\Forms\Element\Text,
	Phalcon\Forms\Element\Hidden;

class SuppliersController extends ControllerBase
{
	public function initialize()
	{
		$this->view->setTemplateAfter('main');
		Tag::setTitle('Gerir Produtores');
		parent::initialize();
	}

	protected function getForm($entity=null, $edit=false)
	{
		$form = new Form($entity);

		if (!$edit) {
			$form->add(new Text("id", array(
				"size" => 10,
				"maxlength" => 10,
			)));
		} else {
			$form->add(new Hidden("id"));
		}

		$form->add(new Text("name", array(
			"size" => 24,
			"maxlength" => 70
		)));

		$form->add(new Text("telephone", array(
			"size" => 10,
			"maxlength" => 30
		)));

		$form->add(new Text("address", array(
			"size" => 14,
			"maxlength" => 40
		)));

		$form->add(new Text("city", array(
			"size" => 14,
			"maxlength" => 40
		)));

		return $form;
	}

	public function indexAction()
	{
		$this->session->conditions = null;
		$this->view->form = $this->getForm();
	}

	public function searchAction()
	{
		$numberPage = 1;
		if ($this->request->isPost()) {
			$query = Criteria::fromInput($this->di, "Suppliers", $_POST);
			$this->persistent->searchParams = $query->getParams();
		} else {
			$numberPage = $this->request->getQuery("page", "int");
			if ($numberPage <= 0) {
				$numberPage = 1;
			}
		}

		$parameters = array();
		if ($this->persistent->searchParams) {
			$parameters = $this->persistent->searchParams;
		}

		$suppliers = Suppliers::find($parameters);
		if (count($suppliers) == 0) {
			$this->flash->warning("A pesquisa nao encontrou resultados");
			return $this->forward("suppliers/index");
		}

		$paginator = new Phalcon\Paginator\Adapter\Model(array(
			"data" => $suppliers,
			"limit" => 10,
			"page" => $numberPage
		));
		$page = $paginator->getPaginate();

		$this->view->setVar("page", $page);
		$this->view->setVar("suppliers", $suppliers);
	}

	public function newAction()
	{
		$this->view->form = $this->getForm();
	}

	public function editAction($id)
	{
		$request = $this->request;
		if (!$request->isPost()) {

			$supplier = Suppliers::findFirstById($id);
			if (!$supplier) {
				$this->flash->error("Produtor nao encontrado !");
				return $this->forward("suppliers/index");
			}

			$this->view->form = $this->getForm($supplier, true);
		}
	}

	public function createAction()
	{
		if (!$this->request->isPost()) {
			return $this->forward("suppliers/index");
		}

		$suppliers = new Suppliers();
		$suppliers->name = $this->request->getPost("name", "striptags");
		$suppliers->telephone = $this->request->getPost("telephone", "striptags");
		$suppliers->address = $this->request->getPost("address", "striptags");
		$suppliers->city = $this->request->getPost("city", "striptags");

		if (!$suppliers->save()) {
			foreach ($suppliers->getMessages() as $message) {
				$this->flash->error((string) $message);
			}
			return $this->forward("suppliers/new");
		}

		$this->flash->success("Produtor criado com successo !");
		return $this->forward("suppliers/index");
	}

	public function saveAction()
	{
		if (!$this->request->isPost()) {
			return $this->forward("suppliers/index");
		}

		$id = $this->request->getPost("id", "int");

		$suppliers = Suppliers::findFirstById($id);
		if ($suppliers == false) {
			$this->flash->error("Produtor nao encontrado ! ".$id);
			return $this->forward("suppliers/index");
		}

		$suppliers->id = $this->request->getPost("id", "int");
		$suppliers->name = $this->request->getPost("name", "striptags");
		$suppliers->telephone = $this->request->getPost("telephone", "striptags");
		$suppliers->address = $this->request->getPost("address", "striptags");
		$suppliers->city = $this->request->getPost("city", "striptags");

		if (!$suppliers->save()) {
			foreach ($suppliers->getMessages() as $message) {
				$this->flash->error((string) $message);
			}
			return $this->forward("suppliers/edit/".$suppliers->id);
		}

		$this->flash->success("Produtor actualizado !");
		return $this->forward("suppliers/index");
	}

	public function deleteAction($id)
	{

		$suppliers = Suppliers::findFirstById($id);
		if (!$suppliers) {
			$this->flash->error("Produtor nao encontrado !");
			return $this->forward("suppliers/index");
		}

		if (!$suppliers->delete()) {
			foreach ($suppliers->getMessages() as $message) {
				$this->flash->error((string) $message);
			}
			return $this->forward("suppliers/search");
		}

		$this->flash->error("Produtor eliminado !");
		return $this->forward("suppliers/index");
	}
}
