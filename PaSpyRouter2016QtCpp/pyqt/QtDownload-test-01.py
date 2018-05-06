#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Python 2.7
#

conf__strCookie = 'Authorization=Basic%20YWRtaW46cGFzc3dk; ChgPwdSubTag=';
conf__strLinkPrefix = 'http://192.168.1.1/userRpm/'

from PyQt4 import QtCore, QtNetwork, QtGui
import sys

def Do_DownloadData(strFile):
	print 'strFile=', strFile
	strData = 'GET /userRpm/' + strFile + ' HTTP/1.1\r\n' \
		'Cookie: ' + conf__strCookie +  '\r\n' \
		'Referer: ' + conf__strLinkPrefix + 'MenuRpm.htm\r\n\r\n';
	print strData

	client = QtNetwork.QTcpSocket();
	client.connectToHost(QtNetwork.QHostAddress('192.168.1.1'), 80)
	client.writeData(strData)
	cachedData = []
	while True:
		client.waitForReadyRead(30000);
		nBytesAvailable = client.bytesAvailable()
		if nBytesAvailable==0:break

		print nBytesAvailable, 'read.'
		print '-' * 60
		cachedData.append(str(client.readAll()))

	client.close()
	return ''.join(cachedData) 

print Do_DownloadData('AssignedIpAddrListRpm.htm')
print Do_DownloadData('SystemLogRpm.htm')
