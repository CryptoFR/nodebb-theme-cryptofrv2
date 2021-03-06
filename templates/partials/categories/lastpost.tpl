<div class="card" style="border-color: {../bgColor}">
	{{{each ./posts}}}
	<!-- IF @first -->
	<div component="category/posts" class="last-post" data-timestamp="{../timestamp}">
		<p class="permalink-wrapper">
			<a class="permalink category-link post-title" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
				{../topic.title}
			</a>
		</p>
		<p class="user-wrapper">
			<a class="timeago" title="{../timestampISO}" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->"></a>
			par
			<span class="username">
				{buildAvatar(posts.user, "sm", true)}
				<a class="user" href="user/{../user.userslug}">
					{../user.username}
				</a>
			</span>
		</p>
	</div>
	<!-- ENDIF @first -->
	{{{end}}}

	<!-- IF !../posts.length -->
	<div component="category/posts">
		<div class="post-content">
			[[category:no_new_posts]]
		</div>
	</div>
	<!-- ENDIF !../posts.length -->
</div>
