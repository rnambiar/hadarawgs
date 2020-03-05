{OVERALL_GAME_HEADER}

<div id="playerboards">
	<!-- BEGIN player -->
	<div id="board_p{PLAYER_ID}" class="playerboard whiteblock">
		<h3 style="color:#{PLAYER_COLOR}" class="player_{PLAYER_ANIMAL}">{PLAYER_NAME}</h3>
		<div class="playerboard_resources">
			<div class="playerboard_income"><span id="income_p{PLAYER_ID}">-</span></div>
			<div class="playerboard_food"><span id="food_p{PLAYER_ID}">-</span></div>
			<div class="playerboard_military"><span id="military_p{PLAYER_ID}">-</span></div>
			<div class="playerboard_culture"><span id="culture_p{PLAYER_ID}">-</span></div>
		</div>
	</div>
	<!-- END player -->
</div>

<div id="gameboard" class="debug">
	<div id="deck" class="whiteblock deck"></div>
	<div id="discard" class="whiteblock deck discard"></div>
</div>

<div id="animals" class="debug">
	<h3>Animals</h3>
	<div class="icon icon_animal icon_monkey"></div>
	<div class="icon icon_animal icon_scarab"></div>
	<div class="icon icon_animal icon_dragon"></div>
	<div class="icon icon_animal icon_pegasus"></div>
	<div class="icon icon_animal icon_lion"></div>
</div>

<script type="text/javascript">
	var jstpl_player_board = '<div class="pp_board">\
		<div class="icon icon_coins"></div><span id="pp_coins_p${id}" class="pp_value pp_coins">${coins}</span>\
		<div class="icon icon_food "></div><span id="pp_ncard_p${id}" class="pp_value pp_food ">${ncard}<span id="pp_food_p${id}" class="smalltext">/${food}</span></span>\
		</div>';
</script>

{OVERALL_GAME_FOOTER}
