<?php
/**
 * Created by IntelliJ IDEA.
 * User: almustafa dekaulitz (sulaimanfahmi@gmail.com)
 * Date: 20/09/2018
 * Time: 16:10
 */

namespace Src;


use PDO;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class PatchDatabaseCommand extends Command
{
    private $username, $password, $database;

    public function __construct()
    {
        parent::__construct();
    }

    public function configure()
    {
        $this->setName('install-database')
            ->setDescription('create ')
            ->setHelp('this allow you to create starter database SCM Aplication')
            ->setHelp("example commad install-database username_db password_db")
            ->addArgument('username', InputArgument::REQUIRED, 'username database.')
            ->addArgument("password", InputArgument::REQUIRED, "password database")
            ->addArgument("database", InputArgument::REQUIRED, "database name");
    }

    public function execute(InputInterface $input, OutputInterface $output)
    {
        $this->username = $input->getArgument("username");
        $this->password = $input->getArgument("password");
        $this->database = $input->getArgument("database");
        $this->patchingDB();
    }


    private function patchingDB()
    {
        $query = file_get_contents("./dumper/dummy.sql");
        $conn = new databaseConnection($this->username, $this->password, $this->database);
        $conn->getPdo()->query($query)->execute();
    }
}

class databaseConnection
{
    private $pdo;

    public function __construct($username, $password, $database)
    {
        $this->pdo = new PDO("pgsql:host=localhost;port=5432;dbname=$database;user=$username;password=$password");
    }

    /**
     * @return PDO
     */
    public function getPdo(): PDO
    {
        return $this->pdo;
    }
}