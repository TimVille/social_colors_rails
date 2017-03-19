# Social-colors-rails
Based on [font-awesome](http://fontawesome.io/), rails-social-colors provide official colors of social brand icons

## Installation
Add these line to your application's Gemfile:

```ruby
gem 'font-awesome-rails'
gem 'social_colors_rails'
```

And then execute `bundle install`

### -- Simple use --

For simple use, add it to your rails asset-pipeline

```css
/*
 *= require font-awesome
 *= require social_colors_rails
 * Or for production
 *= require social_colors_rails.min
 */
```
in your `application.css` file

Or if you work with SASS
```scss
@import "font-awesome";
@import "social_colors_rails";
```

### -- Customized --
You can customize the social_colors rails plugin by importing the sass file and overwrite variables.
```scss
// Import your custom variables before the social_colors lib
@import "_custom_variables";

@import "font-awesome";
@import "social_colors_rails/init";
```

---

## Usage

The prefered method is to use the `social_tag` helper
```ruby

social_tag
#  => <a class="icon-stack stack-circle facebook" target="_blank" rel="external nofollow" href="#">
#       <i class="fa fa-facebook"></i>
#     </a>

social_tag url: "https://www.facebook.com/devsbrain/"
#  => <a class="icon-stack stack-square facebook" target="_blank" rel="external nofollow" href="https://www.facebook.com/devsbrain/">
#       <i class="fa fa-facebook"></i>
#     </a>

social_tag "github", "https://github.com/TimVille"
#  => <a class="icon-stack stack-circle github" target="_blank" rel="external nofollow" href="https://github.com/TimVille">
#       <i class="fa fa-github"></i>
#     </a>

social_tag "github", "https://github.com/TimVille", style: "square"
#  => <a class="icon-stack stack-square github" target="_blank" rel="external nofollow" href="https://github.com/TimVille">
#       <i class="fa fa-github"></i>
#     </a>

social_tag "github", "https://github.com/TimVille", size: "2x"
#  => <a class="icon-stack stack-circle github stack-2x" target="_blank" rel="external nofollow" href="https://github.com/TimVille">
#       <i class="fa fa-github"></i>
#     </a>

social_tag "github", "https://github.com/TimVille", title: "My awesome link title"
#  => <a class="icon-stack stack-circle github" target="_blank" rel="external nofollow" title="My awesome link title" href="https://github.com/TimVille">
#       <i class="fa fa-github"></i>
#     </a>

social_tag "github", "https://github.com/TimVille", nofollow: false
#  => <a class="icon-stack stack-circle github" target="_blank" rel="external" href="https://github.com/TimVille">
#       <i class="fa fa-github"></i>
#     </a>

social_tag "github", "https://github.com/TimVille", external: false
#  => <a class="icon-stack stack-circle github" target="_blank" href="https://github.com/TimVille">
#       <i class="fa fa-github"></i>
#     </a>
```

In order to provide a context to the icons, you need to wrap your font-awesome icon with
```html
<div class="icon-stack |brand-name|"></div>
```
### -- Options --

Options are available for stack style and stack size.
Add them next to `icon-stack` class to apply them!

#### Stack styles
`stack-circle`
`stack-square`
`stack-square-o`

#### Stack sizes
`stack-2x`
`stack-3x`
`stack-4x`


### -- Sass variables --
```scss
//
// Stack parameters
//
$stack-lighten-amount:       10%;
$stack-darken-amount:        10%;
$stack-alpha-amount:         0;
$stack-hover-color:          #424242;
$stack-hover-color-inverse:  #424242;

$stack-shadow-color:         transparentize(#000, 0.8);
$stack-shadow-length:        6;
$stack-shadow-blur:          4px;

$stack-square-o-width:       3px;
$stack-square-o-width-2x:    4px;
$stack-square-o-width-3x:    5px;
$stack-square-o-width-4x:    6px;

$stack-square-radius:        20%;

$stack-4x:                   3em;
$stack-3x:                   2.5em;
$stack-2x:                   2em;

$stack-anim-duration:        .25s;
$stack-anim-ease:            ease;


//
// Font-awesome icon shadow parameters
//
$icon-shadow-blur:           1px;
$icon-shadow-lighten-amount: 20%;
$icon-shadow-darken-amount:  30%;
$icon-shadow-alpha-amount:   0.7;
$icon-shadow-color:          #000;
$icon-shadow-color-inverse:  #000;
$icon-shadow-length:         100;
$icon-shadow-length-o:       6;

$icon-color:                 #fff;
$icon-color-lighten-amount:  10%;

$icon-anim-duration:         .25s;
$icon-anim-ease:             ease;
```

---

## Exemple

```html
<div class="icon-stack stack-circle github stack-4x">
  <i class="fa fa-github"></i>
</div>
```

---

## Available brand colors
  Brand names       |               |               |
  :----------------:|:-------------:|:-------------:|
  Amazon            | Android       |
  Behance           | Bitbucket     |
  Codepen           |               |
  Delicious         | Deviantart    | Dropbox
  Etsy              |               |
  Facebook          | Firefox       | Flickr
  Github            | Gitlab        | Google-plus
  Houzz             |               |
  Instagram         |               |
  Lastfm            | Linkedin      |
  Pinterest         |               |
  Reddit            | Rss           |
  Skype             | Slack         | Snapchat
  Soundcloud        | Spotify       | Stack-Exchange
  Stack-Overflow    | Steam         | Stumbleupon
  Trello            | Tripadvisor   | Tumblr
  Twitter           |               |
  Viadeo            | Vimeo         | Vine
  Wechat            | Whatsapp      |
  Yahoo             | Yelp          | Youtube
  Envelope          |               |


---

## Contributing
You can contribute by forking this project.
Enjoy!

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
