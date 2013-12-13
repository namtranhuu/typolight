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

$GLOBALS['TL_LANG']['tl_module']['bbit_mod_art_legend']
	= 'Artikel';

$GLOBALS['TL_LANG']['tl_module']['bbit_mod_art_id']
	= array('Bezogener Artikel', 'Bitte wählen Sie den Artikel aus, den Sie einfügen möchten.');
$GLOBALS['TL_LANG']['tl_module']['bbit_mod_art_nosearch']
	= array('Nicht durchsuchen', 'Schließt dieses Artikelmodul von der Contao-Suche aus.');
$GLOBALS['TL_LANG']['tl_module']['bbit_mod_art_container']
	= array('Artikelcontainer ausgeben', 'Gibt zusätzlich den Artikelcontainer aus anstatt nur die Inhaltselemente des Artikels.');

$GLOBALS['TL_LANG']['tl_module']['bbit_mod_art_page']
	= array('Referenzseite', 'Die Seite dessen Artikel dargestellt werden sollen.');
$GLOBALS['TL_LANG']['tl_module']['bbit_mod_art_setColumns']
	= array('Layoutbereiche setzen', 'Die Layoutbereiche, aus denen die Artikel angezeigt werden sollen, festlegen. Wenn deaktiviert, werden automatisch die Artikel aus dem Bereich ausgegeben, in dem dieses Modul angezeigt wird.');
$GLOBALS['TL_LANG']['tl_module']['bbit_mod_art_columns']
	= array('Layoutbereiche', 'Die Layoutbereiche aus denen die Artikel angezeigt werden sollen.');

$GLOBALS['TL_LANG']['tl_module']['bbit_mod_art_multi']
	= array('Artikelauswahl', 'S = Nicht durchsuchen. C = Artikelcontainer ausgeben. Bitte wählen Sie die Artikel aus, die Sie einfügen möchten.');
$GLOBALS['TL_LANG']['tl_module']['bbit_mod_art_nosearch_short']
	= array('S', 'Schließt dieses Artikelmodul von der Contao-Suche aus.');
$GLOBALS['TL_LANG']['tl_module']['bbit_mod_art_container_short']
	= array('C', 'Gibt zusätzlich den Artikelcontainer aus anstatt nur die Inhaltselemente des Artikels.');
$GLOBALS['TL_LANG']['tl_module']['bbit_mod_art_multiContainer']
	= array('Gemeinsamen Artikelcontainer ausgeben', 'Gibt zusätzlich einen Artikelcontainer um alle ausgewählten Artikel zusammen aus.');
