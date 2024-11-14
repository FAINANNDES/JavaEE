/**
 * Confirmação de exclusão de um contato
 * @autor Rafael Fernandes~
 * @param idcon
 */

function confirmar(idcon, Nome){
    let resposta = confirm("Confirmar a exclusão deste contato: " + Nome + "?");
    if(resposta === true){
		//alert(idcon)
		window.location.href = "delete?idcon=" + idcon
    }
}