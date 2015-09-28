ready = ->
  showHideAssignee = (el_status) ->
    el_assignee = $('#assignee');

    if el_status.val() == 'ASSIGNED'
      el_assignee.removeClass('hide');
    else
      el_assignee.addClass('hide');

  showHideAssignee($('#status'), $('#assignee'));

  $('#status').on('change', (e) ->
    showHideAssignee($(this));
  )

$(document).ready(ready)
$(document).on('page:load', ready)