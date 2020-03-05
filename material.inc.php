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


$this->card_types = array('setup', 'income', 'military', 'culture', 'food', 'science');

// Setup cards, given at game start to players
$this->card_setup = array(
	array( 'type' => "initiative", 'type_arg' => 1, 'nbr' => 1),
	array( 'type' => "initiative", 'type_arg' => 2, 'nbr' => 1),
	array( 'type' => "initiative", 'type_arg' => 3, 'nbr' => 1),
	array( 'type' => "initiative", 'type_arg' => 4, 'nbr' => 1),
	array( 'type' => "initiative", 'type_arg' => 5, 'nbr' => 1),
);

// Bonus given by the setup cards (corresponding to 'type_arg')
$this->initiative = array(
	1 => array("initiative" => 1, "income" => 3, "military" => 2, "culture" => 1, "food" => 4, "coins" => 8),
	2 => array("initiative" => 2, "income" => 2, "military" => 1, "culture" => 3, "food" => 4, "coins" => 8),
	3 => array("initiative" => 3, "income" => 3, "military" => 2, "culture" => 2, "food" => 3, "coins" => 8),
	4 => array("initiative" => 4, "income" => 2, "military" => 1, "culture" => 2, "food" => 5, "coins" => 9),
	5 => array("initiative" => 5, "income" => 2, "military" => 2, "culture" => 1, "food" => 5, "coins" => 9),
);
