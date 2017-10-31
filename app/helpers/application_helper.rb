module ApplicationHelper

  def title(page_title)
    content_for(:title) { page_title }
  end

  def meta_description(page_text)
    content_for(:meta_description) { page_text }
  end

  def meta_keywords(keywords_text)
    content_for(:meta_keywords) { keywords_text }
  end

  def meta_canonical(canonical_text)
    content_for(:meta_canonical) { canonical_text }
  end

  def tel_to(text)
    groups = text.to_s.scan(/(?:^\+)?\d+/)
    link_to text, "tel:#{groups.join '-'}"
  end

end