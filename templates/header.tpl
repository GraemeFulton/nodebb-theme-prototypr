<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" <!-- IF languageDirection -->data-dir="{languageDirection}" style="direction: {languageDirection};" <!-- ENDIF languageDirection --> >
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->{function.buildMetaTag}<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/stylesheet.css?{config.cache-buster}" />
	<!-- IF bootswatchCSS --><link id="bootswatchCSS" href="{bootswatchCSS}" rel="stylesheet" media="screen"><!-- ENDIF bootswatchCSS -->
	<!-- BEGIN linkTags -->{function.buildLinkTag}<!-- END linkTags -->

	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>

	<!-- IF useCustomHTML -->
	{{customHTML}}
	<!-- END -->
	<!-- IF useCustomCSS -->
	<style>{{customCSS}}</style>
	<!-- END -->
</head>

<body class="{bodyClass} skin-{config.bootswatchSkin}">
	<nav id="menu" class="slideout-menu hidden">
		<div class="menu-profile">
			<!-- IF user.uid -->
			<!-- IF user.picture -->
			<img src="{user.picture}"/>
			<!-- ELSE -->
			<div class="user-icon" style="background-color: {user.icon:bgColor};">{user.icon:text}</div>
			<!-- ENDIF user.picture -->
			<i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i>
			<!-- ENDIF user.uid -->
		</div>

		<section class="menu-section" data-section="navigation">
			<h3 class="menu-section-title">[[global:header.navigation]]</h3>
			<ul class="menu-section-list"></ul>
		</section>

		<!-- IF config.loggedIn -->
		<section class="menu-section" data-section="profile">
			<h3 class="menu-section-title">[[global:header.profile]]</h3>
			<ul class="menu-section-list" component="header/usercontrol"></ul>
		</section>

		<section class="menu-section" data-section="notifications">
			<h3 class="menu-section-title">
				[[global:header.notifications]]
				<span class="counter unread-count" component="notifications/icon" data-content="{unreadCount.notification}"></span>
			</h3>
			<ul class="menu-section-list notification-list-mobile" component="notifications/list"></ul>
			<p class="menu-section-list"><a href="{relative_path}/notifications">[[notifications:see_all]]</a></p>
		</section>
		<!-- ENDIF config.loggedIn -->
	</nav>
	<nav id="chats-menu" class="slideout-menu hidden">
		<!-- IF config.loggedIn -->
		<section class="menu-section" data-section="chats">
			<h3 class="menu-section-title">
				[[global:header.chats]]
				<i class="counter unread-count" component="chat/icon" data-content="{unreadCount.chat}"></i>
			</h3>
			<ul class="menu-section-list chat-list" component="chat/list"></ul>
		</section>
		<!-- ENDIF config.loggedIn -->
	</nav>

	<main id="panel" class="slideout-panel">
		<nav class="navbar navbar-default navbar-fixed-top header boxShadow-close" id="header-menu" component="navbar">
		<div class="pageWrap pageWrap--l">

			<div style="max-width:1320px;margin:0 auto">
			
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</div>
		</nav>


<!-- IF !config.loggedIn -->
<div class="bg-white paddingTop-l paddingBottom-l">
	<div class="pageWrap pageWrap--l">
        <div class="paddingTop-s grid grid--m grid--1 breakPointS-grid--1 breakPointM-grid--2 borderRadius-l display-flex breakPointM-display-block" style="background:#fff;flex-direction:column-reverse;">
            <div class="padding-m">
                <h1 class="fontSize-xxxl paddingTop-s paddingBottom-xxxs lineHeight-xxxl" style="font-weight:500;">Design and prototype your ideas with the community.</h1>
                <p class="fontSize-xl lineHeight-l c-silver paddingTopBottom-xs">Kickstart your project, discover new tools, and learn about design.</p>
                <a href="/register"> <button class="button button--l bg-blue c-white">Sign in</button></a>

            </div>
            <div class="textAlign-right paddingTopBottom-m ">
            <img class="adg-u-block" style="width:450px; float:right; max-width:100%" src="http://www.prototypr.io/wp-content/uploads/2018/06/illus.png" alt="">
            </div>
        </div>
    </div>
</div>
<!-- ENDIF !config.loggedIn -->

		<div id="content" class="pageWrap pageWrap--l marginTop-m">
		<!-- IMPORT partials/noscript/warning.tpl -->
