# Layout

Use white space to create a visual hierarchy on the page.

## Page width

The default maximum page width is 1020px, but go wider if the content requires it.

[Use a grid](#layout-grid-unit-proportions) to lay out your content. To prevent long lines of text, content should sit in a column which is two-thirds of the page width.

Long lines reduce legibility, so all lines of text should be no longer than 70 to 80 characters.

## Screen size

Design for small screens first using a single column layout.

Optimise for different screen sizes, but don’t make assumptions about what devices people are using.

<div class="sizer">


<h2 class="heading-medium" id="layout-spacing">Spacing</h2>
  <ul class="list list-bullet text">
    <li>spacing between elements is usually 5px, 10px, 15px or multiples of 15px</li>
    <li>gutters are 15px for smaller screens and 30px for larger screens</li>
  </ul>

  <div class="example example-images">
    <div class="grid-row">
  <div class="column-one-half">
    <img src="images/examples/15px-gutter-example.png" alt="15px gutter example">
  </div>
  <div class="column-one-half">
    <img src="images/examples/30px-gutter-example.png" alt="30px gutter example">
  </div>
</div>

  </div>

  <h2 class="heading-medium" id="layout-grid-unit-proportions">Grid unit proportions</h2>
  <ul class="list list-bullet text">
    <li>introduce columns as the content requires it – base column ratios on halves, thirds or quarters of the page width</li>
    <li>for screen breakpoints use media queries &ndash; find these in the GOV.UK frontend toolkit <a href="https://github.com/alphagov/govuk_frontend_toolkit/blob/master/stylesheets/_conditionals.scss">_conditionals.scss</a> file</li>
  </ul>

<h3 class="heading-medium">Halves</h3>
<div class="example example-grid">
  <div class="grid-row">

	  <div class="column-one-half">
	    <p>Content</p>
	  </div>

	  <div class="column-one-half">
	    <p>Content</p>
	  </div>

	</div>

</div>

</div>


```html
<div class="example example-grid">
	<div class="grid-row">

		<div class="column-one-half">
			<p>Content</p>
		</div>

		<div class="column-one-half">
			<p>Content</p>
		</div>

	</div>
</div>
```


<div class="sizer">

	<h3 class="heading-medium">Thirds</h3>
	<div class="example example-grid">
		<div class="grid-row">

			<div class="column-one-third">
			<p>Content</p>
			</div>

			<div class="column-one-third">
			<p>Content</p>
			</div>

			<div class="column-one-third">
			<p>Content</p>
			</div>
		</div>

	</div>

</div>

```html
<div class="example example-grid">
		<div class="grid-row">

			<div class="column-one-third">
			<p>Content</p>
			</div>

			<div class="column-one-third">
			<p>Content</p>
			</div>

			<div class="column-one-third">
			<p>Content</p>
			</div>
		</div>

	</div>
```



### Two thirds / One third

<div class="sizer">
	<div class="example example-grid">
		<div class="grid-row">
			<div class="column-two-thirds">
				<p>Content</p>
			</div>
			<div class="column-one-third">
				<p>Content</p>
			</div>
		</div>
	</div>
</div>

```html
<div class="grid-row">

  <div class="column-two-thirds">
    <p>Content</p>
  </div>

  <div class="column-one-third">
    <p>Content</p>
  </div>

</div>

```

### One Third / two thirds

<div class="sizer">
	<div class="example example-grid">
		<div class="grid-row">
			<div class="column-one-third">
				<p>Content</p>
			</div>
			<div class="column-two-thirds">
				<p>Content</p>
			</div>
		</div>
	</div>
</div>

```html
<div class="grid-row">
	<div class="column-one-third">
		<p>Content</p>
	</div>
	<div class="column-two-thirds">
		<p>Content</p>
	</div>
</div>
```

### Quarters

<div class="sizer">
	<div class="example example-grid">
		<div class="grid-row">
			<div class="column-one-quarter">
				<p>Content</p>
			</div>
			<div class="column-one-quarter">
				<p>Content</p>
			</div>
			<div class="column-one-quarter">
				<p>Content</p>
			</div>
			<div class="column-one-quarter">
				<p>Content</p>
			</div>
		</div>
	</div>
</div>

```html
<div class="grid-row">
	<div class="column-one-quarter">
		<p>Content</p>
	</div>
	<div class="column-one-quarter">
		<p>Content</p>
	</div>
	<div class="column-one-quarter">
		<p>Content</p>
	</div>
	<div class="column-one-quarter">
		<p>Content</p>
	</div>
</div>
```

## Examples

<div class="sizer">
	<ul class="list list-bullet">
    <li>
      <a href="/layout/example-grid-layout/">
        an example grid layout page
      </a>
    </li>
  </ul>
</div>
