<script>
  import '../../static/fonts.css'
</script>

<nav>
	<a class="logo" href="/">Lineus.dev</a>
	<span class="routes">
		<a href="/">About</a>
		<a href="/">Blog</a>
	</span>
</nav>

<slot></slot>

<style>
	:global(*) {
		font-family: 'Roboto', sans-serif;
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	nav {
		z-index: 100;
		position: relative;
		width: 100%;
		background: #fff;
		display: flex;
		flex-direction: row;
		justify-content: space-between;
		padding-left: 1rem;
		padding-right: 1rem;
	}
	.routes a, .routes a:visited, nav a, nav a:visited {
		font-size: 2.5rem;
		text-decoration: none;
	}
	
	.routes {
		display: flex;
		align-self: center;
		flex-direction: row;
	}

	.routes > a {
		padding-right: 1rem;
	}

	.routes a, .routes a:visited {
		color: #222;
		font-size: 1.8rem;
	}

	.logo {
		color: #111144;
	}
</style>