module SocialColorsRails
  module ApplicationHelper
    include ::FontAwesome::Rails::IconHelper
    ###
    #
    # Create social link tag given name, url and possible title, style, size and nofollow modifiers.
    #
    # Examples :
    #
    ###
    #
    # social_tag "github", "https://github.com/TimVille"
    #  => <a class="icon-stack stack-circle github" target="_blank" rel="external nofollow" href="https://github.com/TimVille">
    #       <i class="fa fa-github"></i>
    #     </a>
    #
    ###
    #
    # social_tag "github", "https://github.com/TimVille", style: "square"
    #  => <a class="icon-stack stack-square github" target="_blank" rel="external nofollow" href="https://github.com/TimVille">
    #       <i class="fa fa-github"></i>
    #     </a>
    #
    ###
    #
    # social_tag "github", "https://github.com/TimVille", size: "2x"
    #  => <a class="icon-stack stack-circle github stack-2x" target="_blank" rel="external nofollow" href="https://github.com/TimVille">
    #       <i class="fa fa-github"></i>
    #     </a>
    #
    ###
    #
    # social_tag "github", "https://github.com/TimVille", style: "square-o", size: "3x"
    #  => <a class="icon-stack stack-square-o github stack-3x" target="_blank" rel="external nofollow" href="https://github.com/TimVille">
    #       <i class="fa fa-github"></i>
    #     </a>
    #
    ###
    #
    # social_tag "github", "https://github.com/TimVille", size: "3x", title: "My awesome link title"
    #  => <a class="icon-stack stack-square-o github stack-3x" target="_blank" rel="external nofollow" title="My awesome link title" href="https://github.com/TimVille">
    #       <i class="fa fa-github"></i>
    #     </a>
    #
    ###

    def social_tag(name = "facebook", href = "#", url: nil, title: nil, style: "circle", size: nil, external: true, nofollow: true)
      classes = "icon-stack stack-#{style} #{name}" + (size.nil? ? "" : " stack-#{size}")
      location = href
      options = {
        class: classes,
        target: "_blank",
      }

      unless url.nil?
        location = url
      end

      if external
        options[:rel] = "external" + (nofollow ? " nofollow" : "")
      end

      unless title.nil?
        options[:title] = title
      end
      html = link_to(fa_icon(name), location, options)
      html
    end
  end
end
