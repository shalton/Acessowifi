package goaccess

import grails.converters.*;

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
				response.msg = "AGUARDANDO AUTORIZA�AO"
			}
						
		withFormat{
			html response
			json { render response as JSON }
			xml { render response as XML }
		}
	}
	
}