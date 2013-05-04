Em.TEMPLATES.profile = Em.Handlebars.compile """
	<h1>My Profile</h1>
	<hr/>
	<div class="row">
		<div class="large-2 columns" style="height:200px;background:#2a2a2a"></div>
		<div class="large-10 columns" style="padding-top:20px">
			<h1><small>{{fullName}}</small></h1>
			{{#if isStatusEditable}}
				{{view J.View.EditableTextField valueBinding="status" action="statusUpdated" modelBinding="model"}}
			{{else}}
				<span {{action "updateStatus" model}}>{{status}}</span>
			{{/if}}
			<hr />
			<blockquote>
				{{city}}, Ukraine. <br/>
				ruslan.prytula@gmail.com
			</blockquote>
		</div>
	</div>

	<div class="row">
		<div class="large-2 columns">
			<div class="row">
				<div class="large-12">
					<ul class="side-nav">
					  <li class="active">
					  	<a href="#">Link 1</a>
					  </li>
					  <li>
					  	<a href="#">Link 2</a>
					  </li>
					  <li class="divider"></li>
					  <li>
					  	<a href="#">Link 3</a>
					  </li>
					  <li>
					  	<a href="#">Link 4</a>
					  </li>
					  <li>
					  	<a href="#">Link 5</a>
					  </li>
					  <li>
					  	<a href="#">Link 6</a>
					  </li>
					  <li class="divider"></li>
					  <li>
					  	<a href="#">Link 7</a>
					  </li>
					  <li>
					  	<a href="#">Link 8</a>
					  </li>
					  <li>
					  	<a href="#">Link 9</a>
					  </li>
					</ul>
				</div>
			</div>
		</div>
		<div class="large-10 columns">
			<div class="row">
				<dl class="sub-nav" style="margin-left:10px">
				  {{#linkTo "profile.feed" tagName="dd"}}<a {{bindAttr href="view.href"}}>Feed</a>{{/linkTo}}
				  {{#linkTo "profile.company" tagName="dd"}}<a {{bindAttr href="view.href"}}>Company</a>{{/linkTo}}
				</dl>
			</div>
			<div class="row">
				{{outlet}}
			</div>
		</div>
	</div>
"""