<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row">
		<h1 class="textAlign-center paddingBottom-m">{title}</h1>

		<div class="width-100 breakPointM-width-70"style="margin:0 auto;">

		<!-- IF !posts.length -->
			<div class="alert alert-warning text-center">{noItemsFoundKey}</div>
		<!-- ENDIF !posts.length -->

		<div class="col-xs-12">
			<!-- IMPORT partials/posts_list.tpl -->

			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
		</div>
	</div>
</div>