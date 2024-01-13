// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

$(document).ready(function(){
  $('#cpf_cnpj_field').on('input', function(){
    var value = $(this).val().replace(/\D/g, ''); // Remove caracteres não numéricos

    if (value.length === 11) { // Se tiver 11 caracteres, é um CPF
      $(this).val(value.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, "$1.$2.$3-$4"));
    } else if (value.length === 14) { // Se tiver 14 caracteres, é um CNPJ
      $(this).val(value.replace(/(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/, "$1.$2.$3/$4-$5"));
    }
  });
});
