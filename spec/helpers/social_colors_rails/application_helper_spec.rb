require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ApplicationHelper.

module SocialColorsRails
  RSpec.describe ApplicationHelper, type: :helper do

    let(:default_fa)  { content_tag(:i, nil, class: "fa fa-facebook") }
    let(:default_tag) { content_tag(:a, default_fa, class: "icon-stack stack-circle facebook", target: "_blank", rel: "external nofollow", href: "#") }

    let(:social)      { social_tag }
    let(:brand)       { social_tag "twitter", "http://twitter.com/" }

    describe 'social_tag' do

      context "without params" do
        it 'include all default classes' do
          expect( social ).to have_tag('a', with: { class: "icon-stack stack-circle" })
          expect( social ).to have_tag('a[target="_blank"]')
          expect( social ).to have_tag('a[href="#"]')
          expect( social ).to have_tag('i', with: { class: "fa" })
        end

        it 'generate a nofollow external link' do
          expect( social ).to have_tag('a[rel="external nofollow"]')
        end

        it 'use circle style' do
          expect( social ).to have_tag('a.stack-circle')
        end

        it 'use facebook' do
          expect( social ).to have_tag('a.facebook')
          expect( social ).to have_tag('i.fa-facebook')
        end
      end

      context "with name" do
        it 'generate specific tags' do
          expect( brand ).to have_tag('a.twitter')
          expect( brand ).to have_tag('i.fa-twitter')
        end
      end

      context "with name & href" do
        it 'generate correct url link' do
          expect( brand ).not_to have_tag('a[href="http://twitter.com"].twitter')
        end
      end

      context "dofollow" do
        it 'generate dofollow link' do
          expect( social_tag nofollow: false ).to have_tag('a[rel="external"]')
        end
      end

      context "not external" do
        it 'generate internal dofollow link' do
          expect( social_tag external: false ).not_to have_tag('a[rel]')
        end
      end

      context "squared" do
        it 'generate squared stack style' do
          expect( social_tag style: "square" ).to have_tag('a.stack-square')
        end
      end

      context "resized" do
        it 'generate resised stack' do
          expect( social_tag size: "3x" ).to have_tag('a.stack-3x')
        end
      end

      context "with url" do
        it 'generate correct link' do
          expect( social_tag url: "http://twitter.com/" ).to have_tag('a[href="http://twitter.com/"]')
        end
      end

    end

  end
end
