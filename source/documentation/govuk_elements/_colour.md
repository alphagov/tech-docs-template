# Colour

Always use the GOV.UK colour palette.

## Colour contrast

The colour contrast ratio for text and interactive elements should be at least 4.5:1 [as recommended by the W3C](http://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html). Test your service to meet this standard.

## SASS variables

Use Sass variables in case colour values need to be updated &ndash; find these in the GOV.UK frontend toolkit [colours.scss](  https://github.com/alphagov/govuk_frontend_toolkit/blob/master/stylesheets/_colours.scss) file.

<div class="sizer">
  <div class="example">
    <div class="swatch-wrapper">
      <h4 class="heading-small">Text</h4>

      <div class="swatch swatch-text-colour"></div>
      <ul>
        <li><b>#0B0C0C</b></li>
        <li>$text-colour</li>
      </ul>

      <div class="swatch swatch-text-secondary"></div>
      <ul>
        <li><b>#6F777B</b></li>
        <li>$secondary-text-colour</li>
      </ul>

      <div class="swatch swatch-page-colour"></div>

      <ul>
        <li><b>#FFFFFF</b></li>
        <li>$page-colour</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <h4 class="heading-small">Links</h4>

      <div class="swatch swatch-link-colour"></div>
      <ul>
        <li><b>#005ea5</b></li>
        <li>$link-colour</li>
      </ul>

      <div class="swatch swatch-link-colour-hover"></div>
      <ul>
        <li><b>#2b8cc4</b></li>
        <li>$link-hover-colour</li>
      </ul>

      <div class="swatch swatch-link-colour-visited"></div>
      <ul>
        <li><b>#4c2c92</b></li>
        <li>$link-visited-colour</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <h4 class="heading-small">Backgrounds</h4>

      <div class="swatch swatch-border-colour"></div>
      <ul>
        <li><b>#BFC1C3</b></li>
        <li>$border-colour</li>
      </ul>

      <div class="swatch swatch-panel-colour"></div>
      <ul>
        <li><b>#DEE0E2</b></li>
        <li>$panel-colour</li>
      </ul>

      <div class="swatch swatch-highlight-colour"></div>
      <ul>
        <li><b>#F8F8F8</b></li>
        <li>$highlight-colour</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <h4 class="heading-small">Buttons</h4>

      <div class="swatch swatch-button-colour"></div>
      <ul>
        <li><b>#00823B</b></li>
        <li>$button-colour</li>
      </ul>

      <div class="swatch swatch-green"></div>
      <ul>
        <li><b>#006435</b></li>
        <li>$green (hover colour)</li>
      </ul>
    </div>

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

## Status colours

<div class="sizer">
  <div class="example">

    <div class="swatch-wrapper">
      <div class="swatch swatch-alpha"></div>
      <ul>
        <li><b>#d53880</b></li>
        <li>$alpha-colour</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <div class="swatch swatch-beta"></div>
      <ul>
        <li><b>#f47738</b></li>
        <li>$beta-colour</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <div class="swatch swatch-discovery"></div>
      <ul>
        <li><b>#912b88</b></li>
        <li>$discovery-colour</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <div class="swatch swatch-live"></div>
      <ul>
        <li><b>#85994b</b></li>
        <li>$live-colour</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <div class="swatch swatch-error"></div>
      <ul>
        <li><b>#B10E1E</b></li>
        <li>$error-colour</li>
      </ul>
    </div>

  </div>
</div>

## Greyscale palette

<div class="sizer">
  <div class="example">

    <div class="swatch-wrapper">
      <div class="swatch swatch-black"></div>
      <ul>
        <li><b>#0B0C0C</b></li>
        <li>$black</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <div class="swatch swatch-grey-1"></div>
      <ul>
        <li><b>#6F777B</b></li>
        <li>$grey-1</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <div class="swatch swatch-grey-2"></div>
      <ul>
        <li><b>#BFC1C3</b></li>
        <li>$grey-2</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <div class="swatch swatch-grey-3"></div>
      <ul>
        <li><b>#DEE0E2</b></li>
        <li>$grey-3</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <div class="swatch swatch-grey-4"></div>
      <ul>
        <li><b>#F8F8F8</b></li>
        <li>$grey-4</li>
      </ul>
    </div>

  </div>
</div>

## Extended palette

<div class="sizer">
  <ul class="list list-bullet text">
    <li>used for graphs and supporting material</li>
    <li>for tints of the extended palette use 50% or 25%</li>
    <li>for departmental colours
     &ndash; find these in the GOV.UK frontend toolkit <a href="https://github.com/alphagov/govuk_frontend_toolkit/blob/master/stylesheets/colours/_organisation.scss" rel="external">organisation.scss file</a></li>
  </ul>
</div>

<div class="sizer">
  <div class="example">

    <div class="swatch-wrapper">
      <h4 class="heading-small">Purple</h4>

      <div class="swatch swatch-purple"></div>
      <ul>
        <li><b>#2e358b</b></li>
        <li>$purple</li>
      </ul>

      <h4 class="heading-small">Mauve</h4>

      <div class="swatch swatch-mauve"></div>
      <ul>
        <li><b>#6f72af</b></li>
        <li>$mauve</li>
      </ul>

      <h4 class="heading-small">Fuschia</h4>

      <div class="swatch swatch-fuschia"></div>
      <ul>
        <li><b>#912b88</b></li>
        <li>$fuschia</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <h4 class="heading-small">Pink</h4>

      <div class="swatch swatch-pink"></div>
      <ul>
        <li><b>#d53880</b></li>
        <li>$pink</li>
      </ul>

      <h4 class="heading-small">Baby pink</h4>

      <div class="swatch swatch-baby-pink"></div>
      <ul>
        <li><b>#f499be</b></li>
        <li>$baby-pink</li>
      </ul>

      <h4 class="heading-small">Red</h4>

      <div class="swatch swatch-red"></div>
      <ul>
        <li><b>#b10e1e</b></li>
        <li>$red</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <h4 class="heading-small">Mellow red</h4>

      <div class="swatch swatch-mellow-red"></div>
      <ul>
        <li><b>#df3034</b></li>
        <li>$mellow-red</li>
      </ul>

      <h4 class="heading-small">Orange</h4>

      <div class="swatch swatch-orange"></div>
      <ul>
        <li><b>#f47738</b></li>
        <li>$orange</li>
      </ul>

      <h4 class="heading-small">Brown</h4>

      <div class="swatch swatch-brown"></div>
      <ul>
        <li><b>#b58840</b></li>
        <li>$brown</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <h4 class="heading-small">Yellow</h4>

      <div class="swatch swatch-yellow"></div>
      <ul>
        <li><b>#ffbf47</b></li>
        <li>$yellow</li>
      </ul>

      <h4 class="heading-small">Green</h4>

      <div class="swatch swatch-green"></div>
      <ul>
        <li><b>#006435</b></li>
        <li>$green</li>
      </ul>

      <h4 class="heading-small">Grass green</h4>

      <div class="swatch swatch-grass-green"></div>
      <ul>
        <li><b>#85994b</b></li>
        <li>$grass-green</li>
      </ul>
    </div>

    <div class="swatch-wrapper">
      <h4 class="heading-small">Turquoise</h4>

      <div class="swatch swatch-turquoise"></div>
      <ul>
        <li><b>#28a197</b></li>
        <li>$turquoise</li>
      </ul>

      <h4 class="heading-small">Light blue</h4>

      <div class="swatch swatch-light-blue"></div>
      <ul>
        <li><b>#2b8cc4</b></li>
        <li>$light-blue</li>
      </ul>

      <h4 class="heading-small">GOV.UK blue</h4>

      <div class="swatch swatch-govuk-blue"></div>
      <ul>
        <li><b>#005ea5</b></li>
        <li>$govuk-blue</li>
      </ul>

    </div>

  </div>
</div>

[Discuss colour on the design patterns Hackpad](https://designpatterns.hackpad.com/Colour-PDuGV42pJqx)

## Examples

### Transaction end page

<div class="sizer">
  <div class="example">

    <div class="grid-row">
      <div class="column-two-thirds">
        <p class="heading-xlarge">
          Example service name
        </p>

        <div class="govuk-box-highlight">
          <p class="bold-large">
            Application complete
          </p>
          <p>
            Your reference number is </br>
            <strong class="heading-medium">HDJ2123F</strong>
          </p>
        </div>

        <p>
          We have sent you a confirmation email.
        </p>

        <p class="heading-medium">
          What happens next?
        </p>
        <p>
          We've sent your application to Hackney Electoral Register Office.
        </p>
        <p>
          They will contact you either to confirm your registration, or to ask for more information.
        </p>
          

      </div>
    </div>

    </div>
</div>