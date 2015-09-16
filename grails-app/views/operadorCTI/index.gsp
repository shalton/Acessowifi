<!DOCTYPE html>
<html>
<head>
<title>Sistema de Solicitação de Acesso Wifi</title>
<meta name="layout" content="main4">
<style>
#page-body {

}
#pub {
padding-top: 25px;
padding-bottom: 25px;
padding-right: 30px;
padding-left: 30px;
}
.link-normal {
	background: #43CD80;
	color: black;
	margin: 10px;
	padding: 20px;
	font-size:16px;

}
</style>

</head>
<body class="page">
	<div class="content">
			<div class="row" id="pub">
				<div class="col-md-3"> 
					<ul class="nav">
						<li><g:remoteLink class="link-normal" controller="Solicitacao" action="index" update="page-body">
						<span class="glyphicon glyphicon-search">
						Solicitações</span></g:remoteLink></li>
						<li><g:remoteLink controller="OperadorCTI" action="indexAntigo" update="page-body">Operadores</g:remoteLink></li>
						<li><g:remoteLink controller="UsuarioSolicitante" action="index" update="page-body">Usuários</g:remoteLink></li>
						<li><g:remoteLink controller="UsuarioTemporario" action="index" update="page-body">Usuários temporários</g:remoteLink></li>
						<li><g:remoteLink controller="Equipamento" action="index" update="page-body">Equipamentos</g:remoteLink></li>
						<li><g:remoteLink controller="autorizadorProf" action="indexAntigo" update="page-body">Autorizadores</g:remoteLink></li>
						<li><g:remoteLink controller="OutrasTarefas" action="autorizador" update="page-body">Encerrar Solicitacoes (P)</g:remoteLink></li>
						<li><a href="j_spring_security_logout">Fazer logout</a></li>
					</ul>	
				</div>
				<div class="col-md-9" id="page-body">
					<h1>Sem bem Vindo, Operador</h1>
					<p>
					Texto para o operador...Texto para o operador...Texto para o operador...<br>
					Texto para o operador...Texto para o operador...Texto para o operador...<br>
					Texto para o operador...Texto para o operador...Texto para o operador...<br>
					<br>
					PENDENCIA: tentar colocar aqui uma lista das solicitacoes pendentes, a serem encerradas!<br>
					<br>
					PENDENCIA EM CADASTRO DE OPERADORES E AUTORIZADORES: Tem que pegar o usuario e a senha<br>
					informados e, automaticamente, tb fazer o cadastro em clientes, papelcliente e papel (autenticacao).
					</p>
				</div>
			</div>
	</div>
		<footer class="site-footer">
		Copyright &copy; 2014
	</footer>	
</body>
</html>