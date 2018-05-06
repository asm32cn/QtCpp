# -*- coding: utf-8 -*-
from PyQt4.QtCore import QVariant,  QTimer, pyqtSignal, QCoreApplication
import sys
from PyQt4.QtNetwork import QTcpSocket
from re import match
import json


conf__strCookie = 'Authorization=Basic%20YWRtaW46cGFzc3dk; ChgPwdSubTag=';
conf__strLinkPrefix = 'http://192.168.1.1/userRpm/'
strFile = 'AssignedIpAddrListRpm.htm'
strData = 'GET /userRpm/' + strFile + ' HTTP/1.1\r\n' \
	'Host: 192.168.1.1\r\n' \
	'Cookie: ' + conf__strCookie +  '\r\n' \
	'Referer: ' + conf__strLinkPrefix + 'MenuRpm.htm\r\n' \
	'Connection: keep-alive\r\n' \
	'\r\n';


MAX_WAIT_LEN  = 8

class UpQSocket(QTcpSocket):
	#data_ready = pyqtSignal(unicode)
	def __init__(self):
		QTcpSocket.__init__(self)
		self.wait_len = ''
		self.temp = ''
		self.setSocketOption(QTcpSocket.KeepAliveOption, QVariant(1))
		self.readyRead.connect(self.on_ready_read)
		self.connected.connect(self.on_connected)
		self.disconnected.connect(self.on_disconnect)
		self.error.connect(self.on_error)
		#self.data_ready.connect(self.print_command)

	def connectToHost(self, host, port):
		print 'connectToHost'
		self.temp = ''
		self.wait_len = ''
		QTcpSocket.abort(self)
		QTcpSocket.connectToHost(self, host, port)

	def close(self):
		print 'close!'
		self.disconnectFromHost()

	def send(self, data):
		self.writeData(data)
		#self.writeData('%s|%s' % (len(data), data))

	def on_ready_read(self):
		if self.bytesAvailable():
			data = str(self.readAll())
			print '-' * 50
			print data

	def print_command(self,data):
		print 'data!'
		print data

	def get_sstate(self):
		print self.state()

	def on_error(self):
		print 'error', self.errorString()
		self.close()
		#state_timer.stop()
		#exit(0)
		#self.connectToHost('192.168.1.1', 80)

	def on_disconnect(self):
		print 'disconnected!'
		#state_timer.stop()
		exit(0)

	def on_connected(self):
		print 'connected!'
		self.send(strData)
		'''
		self.send(json.dumps(
				{'command' : "operator_insite",
				 'password' : "376c43878878ac04e05946ec1dd7a55f",
				 'login' : "nsandr",
				 'version':unicode("1.2.9")}))
		'''

if __name__ == "__main__":
	app = QCoreApplication(sys.argv)
	main_socket = UpQSocket()
	#state_timer = QTimer()
	#state_timer.setInterval(1)
	#state_timer.timeout.connect(main_socket.get_sstate)
	#state_timer.start()
	main_socket.connectToHost('192.168.1.1', 80)
	sys.exit(app.exec_())