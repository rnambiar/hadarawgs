-- ------
-- BGA framework: © Gregory Isabelli <gisabelli@boardgamearena.com> & Emmanuel Colin <ecolin@boardgamearena.com>
-- hadarawgs implementation : © Willy Goiffon <dev@z3bra.org>
-- 
-- This code has been produced on the BGA studio platform for use on http://boardgamearena.com.
-- See http://en.boardgamearena.com/#!doc/Studio for more information.
-- -----

-- Note: The database schema is created from this file when the game starts. If you modify this file,
--       you have to restart a game to see your changes in database.

-- Epoch cards
CREATE TABLE IF NOT EXISTS `card` (
	`card_id`             int(10) unsigned NOT NULL AUTO_INCREMENT,
	`card_player`         int(10) unsigned DEFAULT 0,
	`card_epoch`          int(10) unsigned NOT NULL,
	`card_color`          varchar(16) NOT NULL,
	`card_cost`           int(10) DEFAULT 0,
	`card_bonus_income`   int(10) unsigned DEFAULT 0,
	`card_bonus_military` int(10) unsigned DEFAULT 0,
	`card_bonus_culture`  int(10) unsigned DEFAULT 0,
	`card_bonus_food`     int(10) unsigned DEFAULT 0,
	`card_effect`         int(10) unsigned DEFAULT 0,
	`card_advanced`       boolean DEFAULT false,
	PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- Setup cards
CREATE TABLE IF NOT EXISTS `setup_card` (
	`setup_card_id`            int(10) unsigned NOT NULL AUTO_INCREMENT,
	`setup_card_player`        int(10) unsigned NOT NULL DEFAULT 0,
	`setup_card_coin`          int(10) unsigned NOT NULL DEFAULT 0,
	`setup_card_initiative`    int(10) unsigned NOT NULL DEFAULT 0,
	`setup_card_base_income`   int(10) DEFAULT 0,
	`setup_card_base_military` int(10) DEFAULT 0,
	`setup_card_base_culture`  int(10) DEFAULT 0,
	`setup_card_base_food`     int(10) DEFAULT 0,
	PRIMARY KEY (`setup_card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- Track tokens used for statues or silver medals 
CREATE TABLE IF NOT EXISTS `tile` (
	`tile_id`      int(10) unsigned NOT NULL AUTO_INCREMENT,
	`tile_player`  int(10) NOT NULL,
	`tile_type`    int(10) NOT NULL,
	`tile_used`    boolean DEFAULT false,
	`tile_points`  int(10) DEFAULT 0,
	PRIMARY KEY (`tile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- Statues 
CREATE TABLE IF NOT EXISTS `statue` (
	`statue_id`             int(10) unsigned NOT NULL AUTO_INCREMENT,
	`statue_player`         int(10) NOT NULL,
	`statue_index`          int(10) NOT NULL,
	`statue_points`         int(10) DEFAULT 0,
	`statue_tile`           int(10) DEFAULT 0,
	PRIMARY KEY (`statue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

ALTER TABLE `player` ADD `player_animal`   VARCHAR(255) NOT NULL DEFAULT '0';
ALTER TABLE `player` ADD `player_income`   INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `player` ADD `player_military` INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `player` ADD `player_culture`  INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `player` ADD `player_food`     INT UNSIGNED NOT NULL DEFAULT '0';

ALTER TABLE `player` ADD `player_statue`   INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `player` ADD `player_colony`   INT UNSIGNED NOT NULL DEFAULT '0';

ALTER TABLE `player` ADD `player_medal_s1` INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `player` ADD `player_medal_s2` INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `player` ADD `player_medal_g1` BOOLEAN NOT NULL DEFAULT false;
ALTER TABLE `player` ADD `player_medal_g2` BOOLEAN NOT NULL DEFAULT false;
