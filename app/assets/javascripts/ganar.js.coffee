# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#

  ubigeos = getAjaxObject "https://s3.amazonaws.com/macn/ubi.json"
  cargarUbigeo ubigeos, 'dist', 'prov', 'dep'

  jQuery ->

    TelTable = $('#telefonos').dataTable(
      "bPaginate": false,
      "bLengthChange": false,
      "fnCreatedRow": (  nRow, aData, iDisplayIndex ) ->
        $(nRow).find('.btn-danger').click (e) ->
          index = $(TelTable.fnGetData()).getIndexObj aData, 'id'
          TelTable.fnDeleteRow index
      "bFilter": true,
      "bSort": false,
      "bInfo": false,
      "bAutoWidth": false,
      "sDom": "<r>t<'row-fluid'>",
    )
    
    $('#addtelbtn').click ->
      BtnElim = '<a class="btn btn-danger" href="#"><i class="icon-remove"></i>Eliminar</a>'
      Num = $('#telefono').val()
      Tipo = $( "#tipotel option:selected" ).text();
      NewElem = [ Num, Tipo, BtnElim]
      TelTable.fnAddData NewElem
      $('#telefono').val ""
