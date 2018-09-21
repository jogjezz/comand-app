<?php
/**
 * Created by IntelliJ IDEA.
 * User: almustafa dekaulitz (sulaimanfahmi@gmail.com)
 * Date: 21/09/2018
 * Time: 13:57
 */

namespace Src;


use Src\Helper\Helper;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class SetupServices extends Command
{
    public function __construct()
    {
        parent::__construct();
    }

    public function configure()
    {
        $this->setName('install-service')
            ->setDescription('Install service PELNI')
            ->setHelp('this allow you to running service for application');
    }

    public function execute(InputInterface $input, OutputInterface $output)
    {
        $targetDir = "/etc/systemd/system/";
        $sourceFile = __DIR__ . "/dumper/pelni.service";
        Helper::copyFile($sourceFile, $targetDir);
        exec("service pelni start");
        $output->writeln("create sync service-bulk");
        $targetDir = "/etc/systemd/system/";
        $sourceFile = __DIR__ . "/dumper/pelni-sync-bulk.service";
        Helper::copyFile($sourceFile, $targetDir);
        $output->writeln("run sync service-bulk");
        exec("service pelni-sync-bulk start");
        $output->writeln("setup web-server");
        $targetDir = "/etc/nginx/sites-enabled/";
        $sourceFile = __DIR__ . "/dumper/default";
        Helper::copyFile($sourceFile, $targetDir);
    }
}