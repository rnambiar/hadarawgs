-- ------
-- BGA framework: © Gregory Isabelli <gisabelli@boardgamearena.com> & Emmanuel Colin <ecolin@boardgamearena.com>
-- hadarawgs implementation : © Willy Goiffon <dev@z3bra.org>
-- 
-- This code has been produced on the BGA studio platform for use on http://boardgamearena.com.
-- See http://en.boardgamearena.com/#!doc/Studio for more information.
-- -----

-- Note: The database schema is created from this file when the game starts. If you modify this file,
--       you have to restart a game to see your changes in database.

CREATE TABLE IF NOT EXISTS `playerboard` (
	`id` int(10) unsigned NOT NULL,
	`animal` varchar(255) NOT NULL,
	`coins`    int(10) DEFAULT 0,
	`income`   int(10) DEFAULT 0,
	`military` int(10) DEFAULT 0,
	`culture`  int(10) DEFAULT 0,
	`food`     int(10) DEFAULT 0,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `card` (
  `card_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_type` varchar(32) NOT NULL,
  `card_type_arg` int(10) NOT NULL,
  `card_location` varchar(32) NOT NULL,
  `card_location_arg` int(10) NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
