# Form elements

Keep forms as simple as possible &ndash; only ask what's needed to run your service.

## Optional and mandatory fields

<div class="sizer">
  <ul class="text list list-bullet">
    <li>only ask for the information you absolutely need</li>
    <li>if you do ask for optional information, mark the labels of optional fields with '(optional)'</li>
    <li>don't mark mandatory fields with asterisks</li>
  </ul>
</div>

## Labels
<div class="sizer">
  <ul class="text list list-bullet">
    <li>all form fields should be given labels</li>
    <li>don't hide labels, unless the surrounding context makes them unnecessary</li>
    <li>labels should be aligned above their fields</li>
    <li>label text should be short, direct and in sentence case</li>
    <li>avoid colons at the end of labels</li>
    <li>labels should be associated with form fields using the <code class="code">for</code> attribute</li>
  </ul>
</div>

<div class="sizer">
  <div class="example">
    <label class="form-label" for="full-name-f1">Full name</label>
    <input class="form-control" id="full-name-f1" type="text">
  </div>
</div>

```html
<label class="form-label" for="full-name-f1">Full name</label>
<input class="form-control" id="full-name-f1" type="text">
```

## Form fields

Make field widths proportional to the input they take.

Ensure that users can enter the information they need at smaller screen sizes.

Snap form fields to 100% width at smaller screen sizes.

[Discuss form fields on the design patterns Hackpad](https://designpatterns.hackpad.com/Text-boxes-imgij2JcsHO)

## Form focus states

All elements use the yellow focus style as a highlight, as either a fill or 3px outline.

Click on the label "Full name" or inside the form field to show the focus state.

<div class="sizer">
  <div class="example">
    <div class="grid-row">
      <div class="column-two-thirds">
        <form>
          <div class="form-group">
            <label class="form-label" for="full-name-f2">Full name</label>
            <input class="form-control" type="text" id="full-name-f2">
          </div>
        </form>
      </div>
      <div class="column-third">
        <div class="swatch-wrapper">
          <h4 class="heading-small">Focus</h4>
          <div class="swatch swatch-yellow"></div>
          <ul>
            <li><b>#FFBF47</b></li>
            <li>$focus-colour</li>
          </ul>
        </div>
      </div>
    </div>

  </div>
</div>

## Hint text

<div class="sizer">
  <ul class="list list-bullet text">
    <li>don't use placeholder text in form fields, as this will disappear once content is entered into the form field</li>
    <li>use hint text for supporting contextual help, this will always be shown</li>
    <li>hint text should sit above a form field</li>
    <li>ensure hint text can be read correctly by screen readers</li>
  </ul>
</div>

<div class="sizer">
  <div class="example">
    <label class="form-label" for="ni-number">
      National Insurance number
      <span class="form-hint">It'll be on your last payslip. For example, VO 12 34 56 D.</span>
    </label>
    <input class="form-control" id="ni-number" type="text">
  </div>
</div>

```html
<label class="form-label" for="ni-number">
  National Insurance number
  <span class="form-hint">It'll be on your last payslip. For example, VO 12 34 56 D.</span>
</label>
<input class="form-control" id="ni-number" type="text">
```

## Spacing between form elements

Ensure there is sufficient spacing between form elements.

<div class="sizer">
  <div class="example">
    <!-- Use .form-group to create spacing when wrapping label and input pairs -->
    <div class="form-group">
      <label class="form-label" for="first-name-2">First name</label>
      <input class="form-control" id="first-name-2" name="first-name-2" type="text">
    </div>
    <div class="form-group">
      <label class="form-label" for="last-name-2">Last name</label>
      <input class="form-control" id="last-name-2" name="last-name-2" type="text">
    </div>
  </div>
</div>

```html
<!-- Use .form-group to create spacing when wrapping label and input pairs -->
<div class="form-group">
  <label class="form-label" for="first-name-2">First name</label>
  <input class="form-control" id="first-name-2" name="first-name-2" type="text">
</div>
<div class="form-group">
  <label class="form-label" for="last-name-2">Last name</label>
  <input class="form-control" id="last-name-2" name="last-name-2" type="text">
</div>
```

## Fieldsets and legends

Use fieldsets to group related form controls. The first element inside a fieldset must be a <code class="code">legend</code> element which describes the group.

## Select boxes

Avoid using select boxes (drop-down lists) - use radio buttons or checkboxes instead.

[Discuss select boxes on the design patterns Hackpad](https://designpatterns.hackpad.com/Select-boxes-KzQ1IRd07HL)

## Radio buttons

<div class="sizer">
  <ul class="list list-bullet text">
    <li>use these to let users choose a single option from a list</li>
    <li>for more than two options, radio buttons should be stacked</li>
    <li>radio buttons with large hit areas are easier to select with a mouse or touch devices</li>
  </ul>
</div>

### Inline radio buttons

<div class="sizer">
  <div class="example">
    <form>
      <p class="heading-medium">
        Do you already have a personal user account?
      </p>

      <form>
        <fieldset class="inline">

          <legend class="visuallyhidden">Do you already have a personal user account?</legend>

          <label class="block-label" for="radio-inline-1">
            <input id="radio-inline-1" type="radio" name="radio-inline-group" value="Yes">
            Yes
          </label>
          <label class="block-label" for="radio-inline-2">
            <input id="radio-inline-2" type="radio" name="radio-inline-group" value="No">
            No
          </label>

        </fieldset>
      </form>

    </form>
  </div>
</div>

```html
<h1 class="heading-medium">
  Do you already have a personal user account?
</h1>

<form>
  <fieldset class="inline">

    <legend class="visuallyhidden">Do you already have a personal user account?</legend>

    <label class="block-label" for="radio-inline-1">
      <input id="radio-inline-1" type="radio" name="radio-inline-group" value="Yes">
      Yes
    </label>
    <label class="block-label" for="radio-inline-2">
      <input id="radio-inline-2" type="radio" name="radio-inline-group" value="No">
      No
    </label>

  </fieldset>
</form>
```

### Stacked radio buttons

<div class="sizer">
  <div class="example">
    <form>
      <p class="heading-medium">Where do you live?</p>

      <form>
        <fieldset>

          <legend class="visuallyhidden">Where do you live?</legend>

          <label class="block-label" for="radio-1">
            <input id="radio-1" type="radio" name="radio-group" value="Northern Ireland">
            Northern Ireland
          </label>
          <label class="block-label" for="radio-2">
            <input id="radio-2" type="radio" name="radio-group" value="Isle of Man or the Channel Islands">
            Isle of Man or the Channel Islands
          </label>
          <p class="form-block">or</p>
          <label class="block-label" for="radio-3">
            <input id="radio-3" type="radio" name="radio-group" value="I am a British citizen living abroad">
            I am a British citizen living abroad
          </label>

        </fieldset>
      </form>

    </form>
  </div>
</div>

```html
  <h1 class="heading-medium">Where do you live?</h1>

  <form>
    <fieldset>

      <legend class="visuallyhidden">Where do you live?</legend>

      <label class="block-label" for="radio-1">
        <input id="radio-1" type="radio" name="radio-group" value="Northern Ireland">
        Northern Ireland
      </label>
      <label class="block-label" for="radio-2">
        <input id="radio-2" type="radio" name="radio-group" value="Isle of Man or the Channel Islands">
        Isle of Man or the Channel Islands
      </label>
      <p class="form-block">or</p>
      <label class="block-label" for="radio-3">
        <input id="radio-3" type="radio" name="radio-group" value="I am a British citizen living abroad">
        I am a British citizen living abroad
      </label>

    </fieldset>
  </form>
```

## Checkboxes

<div class="sizer">
  <ul class="list list-bullet text">
    <li>use these to select either on/off toggles or multiple selections</li>
    <li>make it clear with words when users can select one or multiple options</li>
  </ul>
</div>

### Stacked checkboxes

<div class="sizer">
  <div class="example">
    <form>
      <p class="heading-medium">Which types of waste do you transport regularly?</p>
      <p>Select all that apply</p>

      <form>
        <fieldset>

          <legend class="visuallyhidden">Which types of waste do you transport regularly?</legend>

          <label class="block-label" for="waste-type-1">
            <input id="waste-type-1" name="waste-types" type="checkbox" value="waste-animal">
            Waste from animal carcasses
          </label>
          <label class="block-label" for="waste-type-2">
            <input id="waste-type-2" name="waste-types" type="checkbox" value="waste-mines">
            Waste from mines or quarries
          </label>
          <label class="block-label" for="waste-type-3">
            <input id="waste-type-3" name="waste-types" type="checkbox" value="waste-farm-agricultural">
            Farm or agricultural waste
          </label>

        </fieldset>
      </form>

    </form>
  </div>
</div>

```html
<h3 class="heading-medium">Which types of waste do you transport regularly?</h3>
<p>Select all that apply</p>

<form>
  <fieldset>

    <legend class="visuallyhidden">Which types of waste do you transport regularly?</legend>

    <label class="block-label" for="waste-type-1">
      <input id="waste-type-1" name="waste-types" type="checkbox" value="waste-animal">
      Waste from animal carcasses
    </label>
    <label class="block-label" for="waste-type-2">
      <input id="waste-type-2" name="waste-types" type="checkbox" value="waste-mines">
      Waste from mines or quarries
    </label>
    <label class="block-label" for="waste-type-3">
      <input id="waste-type-3" name="waste-types" type="checkbox" value="waste-farm-agricultural">
      Farm or agricultural waste
    </label>

  </fieldset>
</form>

```
### Inline checkboxes

<div class="sizer">
  <ul class="list list-bullet text">
    <li>large hit areas aren't always appropriate</li>
    <li>only pre-select options if there's a strong, user-centred reason to</li>
  </ul>
</div>

<div class="sizer">
  <div class="example">
    <form>
      <label class="form-label" for="telephone-number">Enter your telephone number</label>
      <input class="form-control" id="telephone-number" name="telephone-number" type="text">
      <label class="form-checkbox" for="checkbox-telephone-number">
        <input id="checkbox-telephone-number" name="contact-by-text-phone" type="checkbox" value="true">
        I need to be contacted using a text phone
      </label>

    </form>
  </div>
</div>

```html
<div class="example">
  <form>
    <label class="form-label" for="telephone-number">Enter your telephone number</label>
    <input class="form-control" id="telephone-number" name="telephone-number" type="text">
    <label class="form-checkbox" for="checkbox-telephone-number">
      <input id="checkbox-telephone-number" name="contact-by-text-phone" type="checkbox" value="true">
      I need to be contacted using a text phone
    </label>

  </form>
</div>
```

[Discuss radio buttons and checkboxes on the design patterns Hackpad](https://designpatterns.hackpad.com/Radio-buttons-and-checkboxes-8eBuLm9eRaz)


## Conditionally revealing content

<div class="sizer">
  <ul class="list list-bullet text">
    <li>reveal additional questions, depending on the context</li>
    <li>a left border is used to emphasise this supporting information</li>
  </ul>
</div>

### Radio buttons
Choose an option below to see how this works.

<div class="sizer">
  <div class="example">
    <form>
      <p class="heading-medium">
        How do you want to be contacted?
      </p>

      <form>
        <fieldset>

          <legend class="visuallyhidden">How do you want to be contacted?</legend>

          <div class="form-group">

            <label class="block-label" data-target="contact-by-email" for="example-contact-by-email">
              <input id="example-contact-by-email" type="radio" name="radio-contact-group" value="Yes">
              Email
            </label>
            <div class="panel panel-border-narrow js-hidden" id="contact-by-email">
              <label class="form-label" for="contact-email">Email address</label>
              <input class="form-control" name="contact-email" type="text" id="contact-email">
            </div>

            <label class="block-label" data-target="contact-by-phone" for="example-contact-by-phone">
              <input id="example-contact-by-phone" type="radio" name="radio-contact-group" value="No">
              Phone
            </label>
            <div class="panel panel-border-narrow js-hidden" id="contact-by-phone">
              <label class="form-label" for="contact-phone">Phone number</label>
              <input class="form-control" name="contact-phone" type="text" id="contact-phone">
            </div>

            <label class="block-label" data-target="contact-by-text" for="example-contact-by-text">
              <input id="example-contact-by-text" type="radio" name="radio-contact-group" value="No">
              Text message
            </label>
            <div class="panel panel-border-narrow js-hidden" id="contact-by-text">
              <label class="form-label" for="contact-text-message">Mobile phone number</label>
              <input class="form-control" name="contact-text-message" type="text" id="contact-text-message">
            </div>

          </div>

        </fieldset>
      </form>

    </form>
  </div>
</div>

<div class="sizer">
  <div class="panel panel-border-wide text">
    <p>
      A grey left hand border is used to visually connect the revealed content with the question above.
    </p>
  </div>
</div>

```html
<div class="panel panel-border-narrow"></div>
```

The [inset text section](/typography/#typography-inset-text) has more information on where and how to use panels (content with a grey left hand border).

```html
<h1 class="heading-medium">
  How do you want to be contacted?
</h1>

<form>
  <fieldset>

    <legend class="visuallyhidden">How do you want to be contacted?</legend>

    <div class="form-group">

      <label class="block-label" data-target="contact-by-email" for="example-contact-by-email">
        <input id="example-contact-by-email" type="radio" name="radio-contact-group" value="Yes">
        Email
      </label>
      <div class="panel panel-border-narrow js-hidden" id="contact-by-email">
        <label class="form-label" for="contact-email">Email address</label>
        <input class="form-control" name="contact-email" type="text" id="contact-email">
      </div>

      <label class="block-label" data-target="contact-by-phone" for="example-contact-by-phone">
        <input id="example-contact-by-phone" type="radio" name="radio-contact-group" value="No">
        Phone
      </label>
      <div class="panel panel-border-narrow js-hidden" id="contact-by-phone">
        <label class="form-label" for="contact-phone">Phone number</label>
        <input class="form-control" name="contact-phone" type="text" id="contact-phone">
      </div>

      <label class="block-label" data-target="contact-by-text" for="example-contact-by-text">
        <input id="example-contact-by-text" type="radio" name="radio-contact-group" value="No">
        Text message
      </label>
      <div class="panel panel-border-narrow js-hidden" id="contact-by-text">
        <label class="form-label" for="contact-text-message">Mobile phone number</label>
        <input class="form-control" name="contact-text-message" type="text" id="contact-text-message">
      </div>

    </div>

  </fieldset>
</form>

```

In the code snippet above, the <code class="language-markup">data-target=""</code> attribute is present on every label, as each option reveals an extra field.

### Checkboxes

Click on "Citizen of a different country" to see how this works.

<div class="sizer">
  <div class="example">
    <form>
      <p class="heading-medium">
        What is your nationality?
      </p>
      <p>
        Select all options that are relevant to you.
      </p>

      <form>
        <fieldset>

          <legend class="visuallyhidden">What is your nationality?</legend>

          <div class="form-group">
            <label class="block-label" for="nationalities-british">
              <input id="nationalities-british" name="nationalities" type="checkbox" value="British">
              British (including English, Scottish, Welsh and Northern Irish)
            </label>
            <label class="block-label" for="nationalities-irish">
              <input id="nationalities-irish" name="nationalities" type="checkbox" value="Irish">
              Irish
            </label>
            <label class="block-label" for="nationalities-other" data-target="example-different-country">
              <input id="nationalities-other" name="nationalities" type="checkbox" value="Citizen of a different country">
              Citizen of a different country
            </label>
            <div class="panel panel-border-narrow js-hidden" id="example-different-country">
              <label class="form-label" for="nationalities-other-country">Country name</label>
              <input class="form-control" type="text" id="nationalities-other-country" name="nationalities-other-country">
            </div>
          </div>

        </fieldset>
      </form>

    </form>
  </div>
</div>

```html
<h1 class="heading-medium">
  What is your nationality?
</h1>
<p>
  Select all options that are relevant to you.
</p>

<form>
  <fieldset>

    <legend class="visuallyhidden">What is your nationality?</legend>

    <div class="form-group">
      <label class="block-label" for="nationalities-british">
        <input id="nationalities-british" name="nationalities" type="checkbox" value="British">
        British (including English, Scottish, Welsh and Northern Irish)
      </label>
      <label class="block-label" for="nationalities-irish">
        <input id="nationalities-irish" name="nationalities" type="checkbox" value="Irish">
        Irish
      </label>
      <label class="block-label" for="nationalities-other" data-target="example-different-country">
        <input id="nationalities-other" name="nationalities" type="checkbox" value="Citizen of a different country">
        Citizen of a different country
      </label>
      <div class="panel panel-border-narrow js-hidden" id="example-different-country">
        <label class="form-label" for="nationalities-other-country">Country name</label>
        <input class="form-control" type="text" id="nationalities-other-country" name="nationalities-other-country">
      </div>
    </div>

  </fieldset>
</form>
```
[Discuss conditional form fields on the design patterns Hackpad](https://designpatterns.hackpad.com/Conditional-form-fields-powy4GQmLIx)

## Examples

<div class="sizer">
  <ul class="list list-bullet">
    <li><a href="/form-elements/example-form-elements/">form elements</a></li>
    <li><a href="/form-elements/example-date/">date pattern</a></li>
    <li><a href="/form-elements/example-radios-checkboxes/">radio buttons and checkboxes</a></li>
  </ul>
</div>