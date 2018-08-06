<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->

	<!-- IF !loggedIn -->
<div class="bg-white paddingTop-l paddingBottom-l">
	<div class="pageWrap pageWrap--l">
        <div class="grid grid--m grid--2 paddingBottom-m borderRadius-l" style="background:#fff">
            <div>
                <h1  class="fontSize-xxxl marginBottom-xs">Make and learn together.</h1>
                <p class="fontSize-l marginBottom-s">Find help and support from a community of product makers.</p>
                <button class="button button--l bg-blue c-white">Sign in</button>

            </div>
            <div class="textAlign-right">
            <img class="adg-u-block" style="width:450px; float:right;" src="http://www.prototypr.io/wp-content/uploads/2018/06/icons-def.png" alt="">
            </div>
        </div>
    </div>
</div>
<!-- ENDIF !loggedIn -->
</div>
<div class="bg-snow paddingTop-l paddingBottom-l">
	<div class="pageWrap pageWrap--l">
		<div class="row">
			<div class="<!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
				<h1 class="categories-title">[[pages:categories]]</h1>
				<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
					<!-- BEGIN categories -->
					<!-- IMPORT partials/categories/item.tpl -->
					<!-- END categories -->
				</ul>
			</div>
			<div widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
				<!-- BEGIN widgets.sidebar -->
				{{widgets.sidebar.html}}
				<!-- END widgets.sidebar -->
			</div>
		</div>
		<div widget-area="footer">
			<!-- BEGIN widgets.footer -->
			{{widgets.footer.html}}
			<!-- END widgets.footer -->
		</div>
	</div>
</div>
