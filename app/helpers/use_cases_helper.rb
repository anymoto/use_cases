module UseCasesHelper
  def render_use_case(index)
    if index > 7
      'js-use-case-hidden'
    end
  end

  def render_link(length)
    if length < 8
      'hidden'
    end
  end
end
