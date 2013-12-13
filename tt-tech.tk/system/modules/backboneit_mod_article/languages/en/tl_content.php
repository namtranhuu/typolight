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

$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_legend']
	= 'Article';

$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_multi']
	= array('Article selection', 'S = Exclude from search - C = Output article container - Please select the articles you want to insert.');
$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_id']
	= array('Referenced article', 'Please choose the article you want to insert.');
$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_nosearch_short']
	= array('S', 'Exclude this article from search.');
$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_container_short']
	= array('C', 'Output container for this article, not just its content elements.');
$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_multiTemplate']
	= array('Template', 'The selected template defines, how the articles are rendered. Selecting no template will render them directly one after another.');

$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_page']
	= array('Reference page', 'The page of the articles to be rendered.');
$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_columns']
	= array('Layout sections', 'The layout section from which the articles should be displayed.');
$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_nosearch']
	= array('Exclude from search', 'Excludes this article module from the Contao website search.');
$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_container']
	= array('Render article container', 'Additionally outputs the articles container instead of the content elements only.');
