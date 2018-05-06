//#include <QtNetwork/QtNetwork>
#include <QtCore>
#include <QtGui>

QString qstrCaptain = "PaSpyRouter2016QtCpp";
QString qstrCookies = "Authorization=Basic%20YWRtaW46cGFzc3dk; ChgPwdSubTag=";
QString qstrHost = "192.168.1.1";

class PaSpyRouter2016QtCpp : public QMainWindow{
	//Q_OBJECT
public:
	PaSpyRouter2016QtCpp(){
		setWindowTitle(qstrCaptain);
		resize(780, 450);
		setWindowIcon(QIcon(":/res/icon32.png"));

		this->initUI();
	}

private:
	QTreeView * objDisplay;
	QToolBar * toolBar;
	QStatusBar * objStatusBar;
	QAction * objAction;
	QString Do_DownloadData(QString qstrFile){
		QStringList qslHeaders;
		qslHeaders << "GET /userRpm/" << qstrFile << " HTTP/1.1\r\n";
		qslHeaders << "Cookie: " << qstrCookies << "\r\n";
		qslHeaders << "Referer: http://" << qstrHost << "/userRpm/MenuRpm.htm\r\n\r\n";
		QString qstrHeaders = qslHeaders.join("");
		char * lpszHeaders = qstrHeaders.toLocal8Bit().data();
		QStringList qsl;
		/*
		QTcpSocket client;
		client.connectToHost(QHostAddress(qstrHost), 80);
		client.write(lpszHeaders, qstrHeaders.length());
		int nBytesAvailable = 0;
		do{
			client.waitForReadyRead(30000);
			nBytesAvailable = client.bytesAvailable();
			qsl.append(client.readAll());
		}while(nBytesAvailable);
		client.close();
		qsl << "asdas1";
		qsl.append("asdc1");
		qsl.append(QString("asdc2"));
		qsl.append(QString("asdc3"));
		return qsl.join("");*/
		return qstrHeaders;
	}
	void initUI(){
		QString A_qsActionIcon[7] = {":/res/res-button-01.png", ":/res/res-button-02.png", ":/res/res-button-03.png",
			":/res/res-button-04.png", ":/res/res-button-05.png", ":/res/res-button-06.png", ":/res/res-button-07.png" };
		QString A_qsActionText[7] = {"设备状态", "报表", "DHCP", "数据包", "日志", "清除日志", "重启设备"};
		QString A_qsActionTip[7] = {"查看设备状态", "查看综合报表", "查看DHCP列表", "统计无线数据包", "查看设备日志", "清除日志", "重启设备"};
		objDisplay = new QTreeView();
		objDisplay->setRootIsDecorated(false);
		objDisplay->setAlternatingRowColors(true);

		setCentralWidget(objDisplay);

		toolBar = addToolBar("ToolBar");

		//QAction * objAction;
		for(int i=0; i<7; i++){
			objAction = new QAction( QIcon(A_qsActionIcon[i]), A_qsActionText[i], this);
			objAction->setStatusTip(A_qsActionTip[i]);
			toolBar->addAction(objAction);
			connect(objAction, SIGNAL(triggered()), this, SLOT(btnClick()));
			if(i==0 || i==3 || i==5)
				toolBar->addSeparator();
		}

		objStatusBar = statusBar();
		//btnClick();
	}

protected slots:
	void btnClick(){
		QString s = Do_DownloadData("AssignedIpAddrListRpm.htm");
		QMessageBox::information(this, qstrCaptain, s);
	}

};


int main(int argc, char * argv[]){
	QTextCodec::setCodecForCStrings(QTextCodec::codecForName("System"));
	QApplication app(argc, argv);
	PaSpyRouter2016QtCpp * ex = new PaSpyRouter2016QtCpp();
	//QDesktopWidget * desktop=QApplication::desktop();
	//move( desktop->width()/2 - 390 , desktop->height()/2 -225 );
	ex->show();
	return app.exec();
}
