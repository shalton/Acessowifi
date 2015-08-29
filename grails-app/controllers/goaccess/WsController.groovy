package goaccess

import grails.converters.*;
import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
//import grails.transaction.Transactional

//@Transactional(readOnly = true)
@Secured('ROLE_ADMIN')
class WsController {

    def index() {
	}
	
	
	def listPlacements() {
		
		def protocolo = params.protocolo
	
		def response = [:]
		
		def solicita = Solicitacao.findByNumProtocolo(protocolo)

			if (solicita){
				response.Nome = usuario.nome
				response.Login = usuario.login
				response.HashSenha = usuario.hashSenha
			}else {
				response.msg = "AGUARDANDO AUTORIZAÇAO"
			}
						
		withFormat{
			html response
			json { render response as JSON }
			xml { render response as XML }
		}
	}
	
}
