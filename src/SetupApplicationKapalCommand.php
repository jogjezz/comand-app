<?php
/**
 * Created by IntelliJ IDEA.
 * User: almustafa dekaulitz (sulaimanfahmi@gmail.com)
 * Date: 20/09/2018
 * Time: 14:03
 */

namespace Src;


use Src\Helper\Helper;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class SetupApplicationKapalCommand extends Command
{
    private $urlRepo, $usernameRepo, $passwordRepo;
    private $targetFolder = "/var/www/html/pelni/";
    private $type;

    public function __construct()
    {
        parent::__construct();
    }

    public function configure()
    {
        $this->setName('install-aplication')
            ->setDescription('Install Aplication PELNI as KAPAL target.')
            ->setHelp('This allow you to pull latest source from master from your git Repositry')
            ->setHelp("example commad install-ho http://dekalitz.gitlabl.com/ username_repo password_repo url_repository")
            ->addArgument("repository", InputArgument::REQUIRED, "url repository")
            ->addArgument('username', InputArgument::REQUIRED, 'username repository.')
            ->addArgument("password", InputArgument::REQUIRED, "password repository");
    }

    public function execute(InputInterface $input, OutputInterface $output)
    {
        $this->usernameRepo = $input->getArgument("username");
        $this->passwordRepo = $input->getArgument("password");
        $this->urlRepo = $input->getArgument("repository");
        $output->writeln("source on process to pull");
        $this->pullLatestSources($output);
        $output->writeln("source cloned.");
    }

    public function pullLatestSources(OutputInterface $output)
    {
        $output->writeln("install composer for package management");
        exec("apt-get install composer");
        $output->writeln("source on process to pull");
        chdir("/var/www/html");
        exec("git init");
        $username = $this->usernameRepo;
        $password = $this->passwordRepo;
        //  exec('git reset --hard');
        //exec("git init");
        exec("git remote add origin " . $this->urlRepo);
        exec("git pull " . $this->getReposistory() . " dev", $output, $resRepo);
        if ($resRepo) {
            echo "somthing happen pelease check your command", PHP_EOL;
            die();
        }
        exec("composer install");
        exec("composer dump-autoload -o");//        exec("composer dump-autoload -o");
        exec("chmod -R 777 /var/www/html/storage");//        exec("composer dump-autoload -o");
        exec("chmod -R 777 /var/www/html/bootstrap/cache");//        exec("composer dump-autoload -o");
        $this->createEnv();
    }

    protected function createEnv()
    {
        $fileGetContet = file_get_contents(__DIR__ . "/dumper/kapal");
        $envLaravel = file_get_contents(__DIR__ . "/dumper/.env");
        $targetDir = "/var/www/html/";
        chdir($targetDir);
        file_put_contents(".env", $envLaravel);
        $targetDir = "/var/www/html/config/";
        chdir($targetDir);
        file_put_contents("env.php", $fileGetContet);
        chdir("/");
    }

    private function getReposistory()
    {
        $gitString = $this->urlRepo;
        $repo = substr($gitString, 8);
        $connection = "https://" . $this->usernameRepo . ":" . $this->passwordRepo . "@" . $repo;
        return $connection;
    }
}