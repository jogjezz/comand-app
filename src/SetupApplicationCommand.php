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

class SetupApplicationCommand extends Command
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
            ->setDescription('Install Aplication PELNI as HO target.')
            ->setHelp('This allow you to pull latest source from master from your git Repositry')
            ->setHelp("example commad install-ho http://dekalitz.gitlabl.com/ username_repo password_repo target_folder project_type")
            ->addArgument('username', InputArgument::REQUIRED, 'username repository.')
            ->addArgument("password", InputArgument::REQUIRED, "password repository")
            ->addArgument("type", InputArgument::REQUIRED, "type project")
            ->addArgument("path", InputArgument::REQUIRED, "path project");
    }

    public function execute(InputInterface $input, OutputInterface $output)
    {
        $this->usernameRepo = $input->getArgument("username");
        $this->passwordRepo = $input->getArgument("password");
        $this->targetFolder = $input->getArgument("path");
        $this->type = $input->getArgument("type");
        $output->writeln("source on process to pull");
        $this->pullLatestSources($output);
        $output->writeln("source cloned.");
        $output->writeln("create sync service");
        $targetDir = "/etc/systemd/system/";
        $sourceFile = "./dumper/pelni.service";
        Helper::copyFile($sourceFile, $targetDir);
        exec("service pelni start");
        $output->writeln("create sync service-bulk");
        $targetDir = "/etc/systemd/system/";
        $sourceFile = "./dumper/pelni-sync-bulk.service";
        Helper::copyFile($sourceFile, $targetDir);
        $output->writeln("run sync service-bulk");
        exec("service pelni-sync-bulk start");
        $output->writeln("setup web-server");
        $targetDir = "/etc/nginx/sites-enabled/";
        $sourceFile = "./dumper/default";
        Helper::copyFile($sourceFile, $targetDir);

    }

    public function pullLatestSources(OutputInterface $output)
    {
        $output->writeln("source on process to pull");
        if (file_exists($this->targetFolder)) {
            mkdir($this->targetFolder);
        }
        chdir($this->targetFolder);
        exec("git init");
        $username = $this->usernameRepo;
        $password = $this->passwordRepo;
        exec('git reset --hard');
        exec("git pull https://" . $username . ":" . $password . "@gitlab.com/dekaulitz/pelni-dev.git development", $result);
        exec("composer dump-autoload -o");//        exec("composer dump-autoload -o");
    }


    protected function createEnv()
    {
        $targetDir = "/var/www/html/pelni/config/";
        chdir($targetDir);
        $fileGetContet = "";
        if ($this->type == "HO")
            $fileGetContet = file_get_contents("./dumper/ho");
        else $fileGetContet = file_get_contents("./dumper/kapal");
        file_put_contents("env.php", $fileGetContet);
        chdir("/");
    }
}