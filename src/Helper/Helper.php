<?php
/**
 * Created by IntelliJ IDEA.
 * User: almustafa dekaulitz (sulaimanfahmi@gmail.com)
 * Date: 21/09/2018
 * Time: 9:50
 */

namespace Src\Helper;


class Helper
{
    public static function copyFile($source, $dest)
    {
        if (is_dir($source)) {
            $dir_handle = opendir($source);
            while ($file = readdir($dir_handle)) {
                if ($file != "." && $file != "..") {
                    if (is_dir($source . "/" . $file)) {
                        if (!is_dir($dest . "/" . $file)) {
                            mkdir($dest . "/" . $file);
                        }
                        echo "copy " . $source . "/" . $file . ' to ' . $dest . "/" . $file, PHP_EOL;
                        copyFile($source . "/" . $file, $dest . "/" . $file);
                    } else {
                        echo "copy " . $source . "/" . $file . ' to ' . $dest . "/" . $file, PHP_EOL;
                        copy($source . "/" . $file, $dest . "/" . $file);
                    }
                }
            }
            closedir($dir_handle);
        } else {
            copy($source, $dest);
        }
    }
}