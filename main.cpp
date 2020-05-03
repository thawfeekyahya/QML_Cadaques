#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QSslSocket>
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    qDebug()<<QSslSocket::sslLibraryVersionString();

    QQuickView view;
    QString fileURL = "qml/main.qml";
    view.setSource(fileURL);

    view.show();


    return app.exec();
}
