<?php if(!defined('TL_ROOT')) die('You can not access this file directly!');

/**
 * Contao Open Source CMS
 * Copyright (C) 2005-2010 Leo Feyer
 *
 * Formerly known as TYPOlight Open Source CMS.
 *
 * This program is free software: you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation, either
 * version 3 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this program. If not, please visit the Free
 * Software Foundation website at <http://www.gnu.org/licenses/>.
 *
 * backboneit_mod_article
 * Wrap an article into a module
 *
 * PHP version 5
 * @copyright  backboneIT | Oliver Hoff 2011-2012
 * @author     Oliver Hoff <oliver@hofff.com>
 * @license    http://opensource.org/licenses/lgpl-3.0.html
 */

$GLOBALS['TL_LANG']['MOD']['backboneit_mod_article']
	= 'backboneIT - Modul: Artikel';

$GLOBALS['TL_LANG']['CTE']['bbit_mod_multiArt']
	= array('Mehrfachartikel', 'Gibt einen referenzierten Artikel aus.');
$GLOBALS['TL_LANG']['CTE']['bbit_mod_pageArt']
	= array('Seitenartikel', 'Die Artikel einer Seite ausgeben.');

$GLOBALS['TL_LANG']['FMD']['bbit_mod_art']
	= array('Artikel', 'Gibt einen referenzierten Artikel aus.');
$GLOBALS['TL_LANG']['FMD']['bbit_mod_multiArt']
	= array('Mehrfachartikel', 'Gibt mehrere referenzierte Artikel aus.');
$GLOBALS['TL_LANG']['FMD']['bbit_mod_pageArt']
	= array('Seitenartikel', 'Die Artikel einer Seite ausgeben.');
