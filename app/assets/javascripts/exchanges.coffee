converter = () ->
  if $('#amount').val() < 0
    $('#result').val(0)
    return false

  $.ajax '/convert',
      type: 'GET'
      dataType: 'json'
      data: {
              source_currency: $("#source_currency").val(),
              target_currency: $("#target_currency").val(),
              amount: $("#amount").val()
            }
      error: (jqXHR, textStatus, errorThrown) ->
        alert textStatus
      success: (data, text, jqXHR) ->
        $('#result').val(data.value)
    return false

$(document).ready ->

  $('form').submit ->
    if $('form').attr('action') == '/convert'
      converter()

  $('#target_currency').change ->
    converter()

  $('#amount').change ->
    converter()

  $('#amount').keyup ->
    converter()

  $('#source_currency').change ->
    converter()

  $('#btnrev').click ->
    source_currency = $('#source_currency').val()
    target_currency = $('#target_currency').val()
    $('#source_currency').val(target_currency)
    $('#target_currency').val(source_currency)
    converter()