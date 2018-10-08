<?php
/**
 * Created by IntelliJ IDEA.
 * User: almustafa dekaulitz (sulaimanfahmi@gmail.com)
 * Date: 08/10/2018
 * Time: 1:07
 */

namespace Src;


use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class SetupCrontabKapalCommand extends Command
{
    public function configure()
    {
        $this->setName('install-crontab-kapal')
            ->setDescription('Install Schduler on KAPAL.')
            ->setHelp('Generate scheduler for KAPAL')
            ->addArgument("kapalId", InputArgument::REQUIRED, "kapal id");
    }

    public function execute(InputInterface $input, OutputInterface $output)
    {
        $kapalId = $input->getArgument("kapalId");
        $file = file_get_contents(__DIR__ . "/dumper/crontab-kapal");
        $fileGetContet = str_replace("%KAPALID%", $kapalId, $file);
        $output = file_put_contents(__DIR__ . "/dumper/crontab", $fileGetContet);

        exec("corontab " . __DIR__ . "/dumper/crontab", $output, $return);
        if ($return) {
            echo "shome thing happen when create scheduler";
            die();
        }
    }
}