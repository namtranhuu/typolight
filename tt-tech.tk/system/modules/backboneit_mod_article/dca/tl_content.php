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

$GLOBALS['TL_DCA']['tl_content']['palettes']['bbit_mod_multiArt']
	= '{type_legend},name,type'
	. ';{bbit_mod_art_legend},bbit_mod_art_multi,bbit_mod_art_multiTemplate'
	. ';{protected_legend:hide},protected'
	. ';{expert_legend:hide},guests,invisible,cssID,space';

$GLOBALS['TL_DCA']['tl_content']['palettes']['bbit_mod_pageArt']
	= '{title_legend},name,type'
	. ';{bbit_mod_art_legend},bbit_mod_art_page,bbit_mod_art_columns,bbit_mod_art_nosearch,bbit_mod_art_container'
	. ';{protected_legend:hide},protected'
	. ';{expert_legend:hide},guests,cssID';

$GLOBALS['TL_DCA']['tl_content']['fields']['bbit_mod_art_multi'] = array(
	'label'			=> &$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_multi'],
	'inputType'		=> 'multiColumnWizard',
	'eval'			=> array(
		'columnFields' => array(
			'id' => array(
				'label'		=> &$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_id'],
				'inputType'	=> 'select',
				'options_callback'	=> array('IncludeArticleDCA', 'getArticles'),
				'eval'		=> array(
					'mandatory'		=> true,
					'chosen'		=> true,
					'style'			=> 'width: 280px;'
				),
				'wizard'			=> array(
					array('IncludeArticleDCA', 'editArticle')
				),
			),
			'cssID' => array(
				'label'		=> &$GLOBALS['TL_LANG']['tl_content']['cssID'],
				'exclude'	=> true,
				'inputType'	=> 'text',
				'eval'		=> array(
					'multiple'		=> true,
					'size'			=> 2,
					'style'			=> 'width: 100px;'
				)
			),
			'nosearch' => array(
				'label'		=> &$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_nosearch_short'],
				'inputType'	=> 'checkbox',
				'eval'		=> array(
				)
			),
			'container' => array(
				'label'		=> &$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_container_short'],
				'inputType'	=> 'checkbox',
				'eval'		=> array(
				)
			),
		),
// 		'tl_class'			=> 'clr'
	),
);

$GLOBALS['TL_DCA']['tl_content']['fields']['bbit_mod_art_multiTemplate'] = array(
	'label'				=> &$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_multiTemplate'],
	'exclude'			=> true,
	'inputType'			=> 'select',
	'options_callback'	=> array('IncludeArticleDCA', 'getMultiTemplates'),
	'eval'				=> array(
		'includeBlankOption'=> true,
		'tl_class'			=> 'clr'
	)
);

$GLOBALS['TL_DCA']['tl_content']['fields']['bbit_mod_art_page'] = array(
	'label'		=> &$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_page'],
	'exclude'	=> true,
	'inputType'	=> 'pageTree',
	'eval'		=> array(
		'fieldType'		=> 'radio',
		'mandatory'		=> true,
		'tl_class'		=> 'clr'
	)
);

$GLOBALS['TL_DCA']['tl_content']['fields']['bbit_mod_art_columns'] = array(
	'label'				=> &$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_columns'],
	'exclude'			=> true,
	'inputType'			=> 'checkbox',
	'options_callback'	=> array('IncludeArticleDCA', 'getLayoutSections'),
	'reference'			=> &$GLOBALS['TL_LANG']['tl_article'],
	'eval'				=> array(
		'mandatory'			=> true,
		'multiple'			=> true,
		'tl_class'			=> 'clr'
	)
);


$GLOBALS['TL_DCA']['tl_content']['fields']['bbit_mod_art_nosearch'] = array(
	'label'				=> &$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_nosearch'],
	'exclude'			=> true,
	'inputType'			=> 'checkbox',
	'eval'				=> array(
		'tl_class'			=> 'clr w50 cbx'
	)
);

$GLOBALS['TL_DCA']['tl_content']['fields']['bbit_mod_art_container'] = array(
	'label'				=> &$GLOBALS['TL_LANG']['tl_content']['bbit_mod_art_container'],
	'exclude'			=> true,
	'inputType'			=> 'checkbox',
	'eval'				=> array(
		'tl_class'			=> 'w50 cbx'
	)
);
