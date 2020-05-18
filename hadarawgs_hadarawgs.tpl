{OVERALL_GAME_HEADER}

<div id="player_hand" class="whiteblock"></div>

<div class="playerboards">
	<!-- BEGIN player -->
	<div id="board_p{PLAYER_ID}" class="playerboard whiteblock">
		<h3 style="color:#{PLAYER_COLOR}" class="player_{PLAYER_COLOR}">{PLAYER_NAME}</h3>
		<div class="animal_p{PLAYER_ID} icon_animal icon_{PLAYER_COLOR}"></div>
		<div class="playerboard_resources">
			<div class="resource resource_income"><span id="income_p{PLAYER_ID}">-</span></div>
			<div class="resource resource_military"><span id="military_p{PLAYER_ID}">-</span></div>
			<div class="resource resource_culture"><span id="culture_p{PLAYER_ID}">-</span></div>
			<div class="resource resource_food"><span id="food_p{PLAYER_ID}">-</span></div>
		</div>
		<div class="medal_area">
			<div id="silver1_p{PLAYER_ID}" class="medal_silver"></div>
			<div id="silver2_p{PLAYER_ID}" class="medal_silver"></div>
			<div id="gold1_p{PLAYER_ID}" class="medal_gold"></div>
			<div id="gold2_p{PLAYER_ID}" class="medal_gold"></div>
		</div>
		<div class="colony_area">
			<div id="colony3_p{PLAYER_ID}" class="colony">3</div>
			<div id="colony9_p{PLAYER_ID}" class="colony">9</div>
			<div id="colony15_p{PLAYER_ID}" class="colony">15</div>
			<div id="colony21_p{PLAYER_ID}" class="colony">21</div>
			<div id="colony30_p{PLAYER_ID}" class="colony">30</div>
		</div>
		<div class="statue_area">
			<div id="statue1_p{PLAYER_ID}" class="statue">6</div>
			<div id="statue2_p{PLAYER_ID}" class="statue">12</div>
			<div id="statue3_p{PLAYER_ID}" class="statue">20</div>
			<div id="statue4_p{PLAYER_ID}" class="statue">30</div>
		</div>
		<div id="deck_p{PLAYER_ID}"class="whiteblock card_area"></div>
	</div>
	<!-- END player -->
</div>

<div id="gameboard" class="debug">
	<div id="deck" class="deck"></div>
	<div id="discard" class="deck discard"></div>
</div>

<div id="animals" class="whiteblock debug">
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
	this.deck.jstpl_stock_item= "<div id=\"${id}\" class=\"epoch_card\" style=\"top:${top}px;left:${left}px;width:${width}px;height:${height}px;z-index:${position};background-image:url('${image}');\"></div>";
</script>

{OVERALL_GAME_FOOTER}
