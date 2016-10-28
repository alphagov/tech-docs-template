# Typography

For GOV.UK domains, always use the GDS Transport Website font in Light and Bold.

## Font

Use the GDS Transport Website font in Light and Bold. It's licensed for use on the GOV.UK domains only.

For services publicly available on different domains, use an alternative typeface like Arial.

## Headings

<div class="sizer">
  <ul class="list list-bullet text">
    <li>use GDS Transport Website Bold</li>
    <li>use sentence case for headings</li>
    <li>use headings consistently to create a clear hierarchy</li>
  </ul>
</div>

<div class="sizer">
  <div class="example">
    <h2 class="heading-xlarge">A <em class="highlight">48px Bold</em> heading</h2>

  <h2 class="heading-large">A <em class="highlight">36px Bold</em> heading</h2>

  <h3 class="heading-medium">A <em class="highlight">24px Bold</em> heading</h3>

  <h4 class="heading-small">A <em class="highlight">19px Bold</em> heading</h4>

  </div>
</div>

```html
<h1 class="heading-xlarge">A 48px Bold heading</h1>

<h2 class="heading-large">A 36px Bold heading</h2>

<h3 class="heading-medium">A 24px Bold heading</h3>

<h4 class="heading-small">A 19px Bold heading</h4>
```

### Headings

<div class="sizer">
   <ul class="list list-bullet">
    <li>use 24px for a lead paragraph</li>
    <li>there should only be one lead paragraph per page</li>
  </ul>
</div>

<div class="sizer">
  <div class="example">
  <div class="text">
    <p class="lede">
  A <em class="highlight">24px</em> lead paragraph, maecenas sed diam eget risus varius blandit sit amet non magna.
</p>

<p>
  A <em class="highlight">19px</em> body copy paragraph, maecenas sed diam eget risus varius blandit sit amet non magna.
</p>

  </div>
</div>
</div>

<pre>
<code class="language-markup">
  {% include "snippets/encoded/typography_lead_paragraph.html" %}
</code>
</pre>

  <h3 class="heading-medium" id="typography-body-copy">
    Body copy
  </h3>

  <ul class="list list-bullet text">
    <li>use GDS Transport Website Light</li>
    <li>avoid using bold and italics</li>
    <li>use 19px for body copy &ndash; 16px for smaller screens</li>
    <li>use smaller sizes only if there's a user need (eg 16px, 14px, 12px)</li>
    <li>make sure lines of text don't exceed 75 characters, as they become harder to read beyond that point</li>
  </ul>

<div class="example">
  <div class="text">
    {% include "snippets/typography_paragraphs_example.html" %}
  </div>
</div>

<pre>
<code class="language-markup">
  {% include "snippets/encoded/typography_paragraphs.html" %}
</code>
</pre>

  <h3 class="heading-medium" id="typography-links">Links</h3>
  <ul class="list list-bullet text">
    <li>links within body copy should be blue and underlined</li>
    <li>links without surrounding text should not have a full stop at the end</li>
    <li>link colours can be found in the <a href="/colour">colour palette</a></li>
  </ul>

<div class="example">
  <div class="text">
    {% include "snippets/typography_links.html" %}
  </div>
</div>

<pre>
<code class="language-markup">
  {% include "snippets/encoded/typography_links.html" %}
</code>
</pre>

  <h3 class="heading-medium" id="typography-lists">Lists</h3>
  <p class="text">
    List items start with a lowercase letter and have no full stop at the end.
  </p>

<div class="example">
  {% include "snippets/typography_lists.html" %}
</div>

<pre>
<code class="language-markup">
  {% include "snippets/encoded/typography_lists.html" %}
</code>
</pre>

  <h3 class="heading-medium" id="typography-inset-text">Inset text</h3>
  <p class="text">
    Use bordered inset text to draw attention to important content on the page.
  </p>

<div class="example">
  <div class="text">
    {% include "snippets/typography_inset_text.html" %}
  </div>
</div>

<pre>
<code class="language-markup">
  {% include "snippets/encoded/typography_inset_text.html" %}
</code>
</pre>

  <h3 class="heading-medium" id="typography-legal-text">Legal text</h3>
  <p class="text">
    Use bold text with an exclamation icon if there are legal consequences - for example, a fine or prison sentence.
  </p>

<div class="example">
  <div class="text">
    {% include "snippets/typography_legal_text.html" %}
  </div>
</div>

<pre>
<code class="language-markup">
  {% include "snippets/encoded/typography_legal_text.html" %}
</code>
</pre>

  <h3 class="heading-medium" id="typography-hidden-text">Hidden text (progressive disclosure)</h3>
  <p class="text">
    Use this to make your page easier to scan,
    only showing contextual information when required.
  </p>
  <p class="text">
    Click on "Help with nationality" to see how this works.
  </p>

<div class="example">
  {% include "snippets/typography_progressive_disclosure.html" %}
</div>

<pre>
<code class="language-markup">
  {% include "snippets/encoded/typography_progressive_disclosure.html" %}
</code>
</pre>

  <div class="panel panel-border-wide text">
    <p>
      If you're using the HTML5 details and summary elements, you'll need a polyfill for <a href="http://caniuse.com/#feat=details" rel="external">not-so-modern browsers</a>.
    </p>
    <p>
      You'll need to ensure that your markup matches the example above.
      <a href="https://github.com/alphagov/govuk_elements/blob/master/public/javascripts/vendor/details.polyfill.js">GOV.UK elements uses this polyfill</a>.
    </p>
    <p>
      <a href="/typography/example-details-summary/">Take a look at example page</a> which demonstrates conditionally revealing information, using the HTML5 details and summary elements.
    </p>
  </div>


  <h3 class="heading-medium" id="examples">Examples</h3>
  <ul class="list list-bullet">
    <li>
      <a href="/typography/example-typography/">
        an example typography page
      </a>
    </li>
  </ul>