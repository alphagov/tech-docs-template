# Buttons

Use buttons to move though a transaction, aim to use only one button per page.

### Button text

Button text should be short and describe the action the button performs.

<div class="sizer">
  <div class="example">
    <input class="button" type="submit" value="Save and continue">
  </div>
</div>

```html
  <input class="button" type="submit" value="Save and continue">
```

## Start now button

Launch your service with a Start now button.

<div class="sizer">
  <div class="example">
    <a class="button button-start" href="#" role="button">Start now</a>
  </div>
</div>

```html
<a class="button button-start" href="#" role="button">Start now</a>

```

## Button alignment

Align the primary action button to the left edge of your form, in the user's line of sight.

<div class="sizer">
  <div class="example example-button">

    <form action="/" method="post" class="form">
      <div class="form-group">
        <label for="form-email-address-1" class="form-label">Email address</label>
        <input type="text" class="form-control" id="form-email-address-1">
      </div>
      <div class="form-group">
        <button class="button">Save and continue</button>
      </div>
    </form>

  </div>
</div>

## Disabled buttons

Disabled buttons should be set at 50% opacity.

<div class="sizer">
  <div class="example">
    <button class="button" disabled="disabled">Primary button</button>
  </div>
</div>

```html
<input class="button" type="submit" value="Save and continue" disabled="disabled">
```

## Creating buttons

Use the GOV.UK Sass button mixin &ndash; find this in the GOV.UK frontend toolkit [buttons.scss](https://github.com/alphagov/govuk_frontend_toolkit/blob/master/stylesheets/design-patterns/_buttons.scss) file.

<div class="sizer">
  <div class="example example-button">
    <div class="grid-row">
      <div class="column-one-third">

        <button class="button">Save and continue</button>

      </div>
      <div class="column-one-third">

        <div class="swatch-wrapper">
          <h4 class="heading-small">Button</h4>
          <div class="swatch swatch-button-colour"></div>
          <ul>
            <li><b>#00823B</b></li>
            <li>$button-colour</li>
          </ul>
        </div>

      </div>
      <div class="column-one-third">

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

[Discuss navigation buttons on the design patterns Hackpad](https://designpatterns.hackpad.com/Navigation-buttons-continue-next-previous-zoP1sKiW3y4)
