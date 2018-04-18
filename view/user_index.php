<article class="hreview open special">
	<?php if (empty($user)): ?>
		<div class="dhd">
			<h2 class="item title">Hoopla! Keine User gefunden.</h2>
		</div>
	<?php else: ?>
			<div class="panel panel-default">
				<div class="panel-heading"><?= $user->uname;?></div>
				<div class="panel-body">
				</div>
			</div>
	<?php endif ?>
</article>
