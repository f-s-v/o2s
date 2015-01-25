class ShowcaseController < ApplicationController
  def index
    @showcase_blocks = EssentialSelling::ShowcaseBlock.limit(5)
  end
end
