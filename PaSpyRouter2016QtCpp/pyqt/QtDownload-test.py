#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Python 2.7
#

conf__strCookie = 'Authorization=Basic%20YWRtaW46cGFzc3dk; ChgPwdSubTag=';
conf__strLinkPrefix = 'http://192.168.1.1/userRpm/'

from PyQt4 import QtCore, QtNetwork, QtGui
import sys

def Do_DownloadData(strFile, isFin = False):
	strData = 'GET /userRpm/' + strFile + ' HTTP/1.1\r\n' \
		'Cookie: ' + conf__strCookie +  '\r\n' \
		'Referer: ' + conf__strLinkPrefix + 'MenuRpm.htm\r\n\r\n';
	print strData
	cachedData = []
	def on_ready_read():
		if client.bytesAvailable():
			print '-' * 50
			print 'on_ready_read()'
			print client.bytesAvailable(), 'read.'
			data = str(client.readAll())
			cachedData.append(data)
			print len(data), client.bytesAvailable()
			#print data
	def on_connected():
		client.writeData(strData)
		print 'connected.'
	def on_disconnect():
		print '-' * 50
		print 'on_disconnect()'
		print len(cachedData)
		print ''.join(cachedData)
		if isFin:exit(0)

	client = QtNetwork.QTcpSocket();
	client.readyRead.connect(on_ready_read)
	client.connected.connect(on_connected)
	client.disconnected.connect(on_disconnect)
	client.connectToHost(QtNetwork.QHostAddress('192.168.1.1'), 80)

app = QtGui.QApplication(sys.argv)
str1 = Do_DownloadData('AssignedIpAddrListRpm.htm')
str1 = Do_DownloadData('SystemLogRpm.htm', True)
app.exec_()