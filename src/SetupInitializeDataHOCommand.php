<?php
/**
 * Created by IntelliJ IDEA.
 * User: almustafa dekaulitz (sulaimanfahmi@gmail.com)
 * Date: 02/10/2018
 * Time: 12:19
 */

namespace Src;


use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class SetupInitializeDataHOCommand extends Command
{
    public function __construct()
    {
        parent::__construct();
    }

    public function configure()
    {
        $this->setName('initialize-data-kapal');
        $this->setDescription('This initialize data from HO.')
            ->setHelp('You have to make sure that HO already exist and already sync');
    }

    public function execute(InputInterface $input, OutputInterface $output)
    {
        exec("php /var/www/html/service/initialize_data.php");
    }
}