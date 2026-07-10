class HeimuTag < Liquid::Tag
  def initialize(tag_name, text, tokens)
    super
    @text = text
  end

  def render(context)
    # 输出为带有 heimu 类的 span 标签
    "<span class=\"heimu\" title=\"你知道的太多了\">#{@text}</span>"
  end
end

Liquid::Template.register_tag('heimu', HeimuTag)
