<div class="container main-menu">
	<div class="row">
		<nav class="navbar navbar-default" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Menu</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<?php

				$html_menu="<ul class='nav navbar-nav target-active'>";
					foreach ($mainmenu as $menu)
					{
						$html_menu.="<li>";
						$html_menu.="<a id='".$menu['link']."' href='".$menu['link']."' title='".$menu['title']."'>".$menu['title']."</a>";
						$html_menu.="</li>";
					}
				$html_menu.="</ul>";

				echo $html_menu;
				?>

				<ul class="nav navbar-nav navbar-right">

				</ul>
			</div><!-- /.navbar-collapse -->
		</nav>
	</div>
</div>
