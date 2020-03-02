<?php
/**
 *------
 * BGA framework: © Gregory Isabelli <gisabelli@boardgamearena.com> & Emmanuel Colin <ecolin@boardgamearena.com>
 * hadarawgs implementation : © Willy Goiffon <dev@z3bra.org>
 *
 * This code has been produced on the BGA studio platform for use on http://boardgamearena.com.
 * See http://en.boardgamearena.com/#!doc/Studio for more information.
 * -----
 *
 * material.inc.php
 *
 * hadarawgs game material description
 *
 * Here, you can describe the material of your game with PHP variables.
 *
 * This file is loaded in your game logic class constructor, ie these variables
 * are available everywhere in your game logic code.
 *
 */

$this->init_cards = array(
	1 => array( "income" => 3, "military" => 2, "culture" => 1, "food" => 4, "coins" => 8, ),
	2 => array( "income" => 2, "military" => 1, "culture" => 3, "food" => 4, "coins" => 8, ),
	3 => array( "income" => 3, "military" => 2, "culture" => 2, "food" => 3, "coins" => 8, ),
	4 => array( "income" => 2, "military" => 1, "culture" => 2, "food" => 5, "coins" => 9, ),
	5 => array( "income" => 2, "military" => 2, "culture" => 1, "food" => 5, "coins" => 9, ),
);
