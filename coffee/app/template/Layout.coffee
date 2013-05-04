Em.TEMPLATES.application = Em.Handlebars.compile """
	<nav class="top-bar fixed">
  		<ul class="title-area">
    		<li class="name">
      			<h1>
      				<a href="#">EmberJS Example #1</a>
      			</h1>
    		</li>
  		</ul>

  		<section class="top-bar-section">
	  		<ul class="left">
	  			<li class="divider"></li>
	  			{{#linkTo "profile" tagName="li"}}
	  				<a {{bindAttr href="view.href"}}>Profile</a>
	  			{{/linkTo}}
	  			<li class="divider"></li>
	  			{{#linkTo "developers" tagName="li"}}
	  				<a {{bindAttr href="view.href"}}>Developers</a>
	  			{{/linkTo}}
	  			<li class="divider"></li>
	  			{{#linkTo "about" tagName="li"}}
	  				<a {{bindAttr href="view.href"}}>About</a>
	  			{{/linkTo}}
	  			<li class="divider"></li>
	  		</ul>

	  		<ul class="right">
	  			<li class="divider"></li>
	  			<li><a>Log out</a></li>
	  			<li class="divider"></li>
	  		</ul>
	  	</section>
  	</nav>

  	<div class="row">
  		{{outlet}}
  	</div>
"""