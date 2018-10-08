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

class SetupCrontabHOCommand extends Command
{
    public function configure()
    {
        $this->setName('install-crontab-ho')
            ->setDescription('Install Schduler on HO.')
            ->setHelp('Generate scheduler for HO');
    }

    public function execute(InputInterface $input, OutputInterface $output)
    {
        exec("crontab " . __DIR__ . "/dumper/crontab-ho", $output, $return);
        if ($return) {
            echo "shome thing happen when create scheduler";
            die();
        }
    }
}