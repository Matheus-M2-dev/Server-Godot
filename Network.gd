extends Node

## variaveis do servidor
const IP_SERVER = "192.168.1.110"
const PORT = 54000

var tcp = StreamPeerTCP.new()
var msg_Error

	
func connection_server():
	var error = tcp.connect_to_host(IP_SERVER,PORT)
	if error:
		msg_Error = error
		return msg_Error
	print("conectado com sucesso")


func create_room(name_room:String,password:String,size:int,isPrivate:bool):
	return

func join_room(name_player:String):
	tcp.put_utf8_string(name_player)
	print("msg enviada!!")
	tcp.disconnect_from_host()
	return
	
