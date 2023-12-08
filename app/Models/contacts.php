<?php

namespace App\Models;

//require './ct275v6/src/PDOFactory.php';
//require_once './ct275v6/vendor/autoload.php';

class contact
{
    private $db;

    private $ct_id;
    public $name_contact;
    public $email;
    public $notes;
    public $created_at;
    public $updated_at;
    private $errors = [];
    public function get_ct_id()
	{
		return $this->ct_id;
	}

    public function __construct($PDO)
    {
        $this->db = $PDO;
    }

    public function fill(array $data)
	{
		if (isset($data['name_contact'])) {
			$this->name_contact = trim($data['name_contact']);
		}

		if (isset($data['email'])) {
			$this->email = trim($data['email']);
		}

		if (isset($data['notes'])) {
			$this->notes = trim($data['notes']);
		}

		return $this;
	}

    public function getValidationErrors()
	{
		return $this->errors;
	}

    public function validate()
	{
		if (!$this->name_contact) {
			$this->errors['name_contact'] = 'Invalid name.';
		}

		if (!$this->email) {
			$this->errors['email'] = 'Invalid email.';
		}

		if (strlen($this->notes) > 255) {
			$this->errors['notes'] = 'Notes must be at most 255 characters.';
		}

		return empty($this->errors);
	}

    public function all()
    {
        $contacts = [];
        $statement = $this->db->prepare('SELECT * FROM contacts');
        $statement->execute();
        while ($row = $statement->fetch()) {
            $contact = new contact($this->db);
            $contact->fillFromDB($row);
            $contacts[] = $contact;
        }
        return $contacts;
    }
    
    protected function fillFromDB(array $row)
    {
        [
			'ct_id' => $this->ct_id,
            'name_contact' => $this->name_contact,
            'email' => $this->email,
            'notes' => $this->notes
        ] = $row;
        return $this;
    }

    public function save()
	{
	$result = false;

	if ($this->ct_id >= 0) {
		$statement = $this->db->prepare(
			'update contacts set name_contact = :name_contact,
				email = :email, notes = :notes, updated_at = now()
				where ct_id = :ct_id'
		);
		$result = $statement->execute([
			'name' => $this->name_contact,
			'phone' => $this->email,
			'notes' => $this->notes,
			'id' => $this->ct_id]);
		} else {
			$statement = $this->db->prepare(
				'insert into contacts (name_contact, email, notes, created_at, updated_at)
					values (:name_contact, :email, :notes, now(), now())'
			);
			$result = $statement->execute([
				'name' => $this->name_contact,
				'phone' => $this->email,
				'notes' => $this->notes
			]);
			if ($result) {
				$this->ct_id = $this->db->lastInsertId();
			}
		}

		return $result;
	}

    public function find($ct_id)
	{
		$statement = $this->db->prepare('select * from contacts where ct_id = :ct_id');
		$statement->execute(['ct_id' => $ct_id]);

		if ($row = $statement->fetch()) {
			$this->fillFromDB($row);
			return $this;
		}

		return null;
	}

    public function add_contact()
    {
        $result = false;
        $statement = $this->db->prepare(
            'insert into contacts (name_contact, email, notes , created_at, updated_at)
            values (:name_contact, :email, :notes, now(), now())'
        );
        $result = $statement->execute([
            'name_contact' => $this->name_contact,
            'email' => $this->email,
            'notes' => $this->notes
        ]);
    }

    public function update(array $data)
	{
		$this->fill($data);
		if ($this->validate()) {
			return $this->save();
		}
		return false;
	}

    public function delete()
	{
		$statement = $this->db->prepare('delete from contacts where ct_id = :ct_id');
		return $statement->execute(['ct_id' => $this->ct_id]);
	}
}
