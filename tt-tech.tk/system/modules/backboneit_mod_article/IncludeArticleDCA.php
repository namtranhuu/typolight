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

class IncludeArticleDCA extends Backend {

	public function getArticles($objDC) {
		$this->import('BackendUser', 'User');

		$arrPids = array();
		$arrAlias = array();

		if(!$this->User->isAdmin) {
			foreach($this->User->pagemounts as $intID) {
				if(isset($arrPids[$intID]))
					continue;
				$arrPids[$intID] = true;
				$arrPids = array_merge($arrPids, array_flip($this->getChildRecords($intID, 'tl_page', true)));
			}

			if(empty($arrPids))
				return $arrAlias;

			$objAlias = $this->Database->prepare('
				SELECT
					a.id,
					a.title,
					a.inColumn,
					p.title AS parent
				FROM
					tl_article AS a
				LEFT JOIN
					tl_page AS p ON p.id = a.pid
				WHERE
					a.pid IN(' . implode(',', array_map('intval', array_keys($arrPids))) . ')
				ORDER BY
					parent, a.sorting'
			)->execute();
		} else {
			$objAlias = $this->Database->prepare('
				SELECT
					a.id,
					a.title,
					a.inColumn,
					p.title AS parent
				FROM
					tl_article AS a
				LEFT JOIN
					tl_page AS p ON p.id = a.pid
				ORDER BY
					parent, a.sorting
			')->execute();
		}

		if(!$objAlias->numRows)
			return $arrAlias;

		$this->loadLanguageFile('tl_article');

		while($objAlias->next())
			$arrAlias[$objAlias->parent][$objAlias->id] = sprintf(
				'%s (%s, ID %s)',
				$objAlias->title,
				strlen($GLOBALS['TL_LANG']['tl_article'][$objAlias->inColumn])
					? $GLOBALS['TL_LANG']['tl_article'][$objAlias->inColumn]
					: $objAlias->inColumn,
				$objAlias->id
			);

		return $arrAlias;
	}

	public function editArticle(DataContainer $objDC) {
		$GLOBALS['TL_JAVASCRIPT']['bbit.cto.articleWizard'] = 'system/modules/backboneit_mod_article/html/js/bbit.cto.articleWizard.js';
		return sprintf(
			' <a href="contao/main.php?do=article&amp;table=tl_content&amp;id=" class="bbit_cto_articleWizard" title="%s">%s</a>',
			$GLOBALS['TL_LANG']['MSC']['bbit_cto_articleWizard_edit'],
			$this->generateImage('edit.gif', $GLOBALS['TL_LANG']['MSC']['bbit_cto_articleWizard_edit'])
		) . sprintf(
			' <a href="contao/main.php?do=article&amp;table=tl_article&amp;act=edit&amp;id=" class="bbit_cto_articleWizard" title="%s">%s</a>',
			$GLOBALS['TL_LANG']['MSC']['bbit_cto_articleWizard_header'],
			$this->generateImage('header.gif', $GLOBALS['TL_LANG']['MSC']['bbit_cto_articleWizard_header'])
		);
	}


	public function getMultiTemplates() {
		return $this->getTemplateGroup('bbit_mod_art_multi_');
	}


	public function getLayoutSections() {
		$this->loadLanguageFile('tl_article');
		$arrSections = trimsplit(',', $GLOBALS['TL_CONFIG']['customSections']);
		array_unshift($arrSections, 'header', 'left', 'right', 'main', 'footer');
		return $arrSections;
	}



	private static $objInstance;

	public static function getInstance() {
		if(isset(self::$objInstance))
			return self::$objInstance;

		return self::$objInstance = new self();
	}

}
