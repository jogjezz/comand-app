<?php
/**
 * Created by IntelliJ IDEA.
 * User: almustafa dekaulitz (sulaimanfahmi@gmail.com)
 * Date: 20/09/2018
 * Time: 13:55
 */
require_once __DIR__ . '/vendor/autoload.php';

use Symfony\Component\Console\Application;

$app = new Application('Console App', 'v1.0.0');
$app->add(new \Src\SetupApplicationCommand());
$app->add(new \Src\PatchDatabaseCommand());
$app->run();

