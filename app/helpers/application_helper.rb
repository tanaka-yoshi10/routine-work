module ApplicationHelper
  def in_progress
    fa_icon 'spinner', class: 'fa-spin', text: '処理中...'
  end
end
