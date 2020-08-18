#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQuickItem>
#include <QSslSocket>
#include <QDebug>
#include <QQmlComponent>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);


//    QQuickView view;
//    QString fileURL = "qml/main.qml";
//    view.setSource(fileURL);
//    view.show();


    QQmlApplicationEngine engine("qml/main.qml");

    return app.exec();

}
