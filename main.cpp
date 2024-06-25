#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "data.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterSingletonType<MySingleton>("MyApp", 1, 0, "MySingleton",
                                          [](QQmlEngine*, QJSEngine*) -> QObject* {
                                              return MySingleton::instance();
                                          });
    //Data *data = new Data();
    //data->setValue(18);
    //printf("\nData value is %d\n",data->value());
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    //engine.rootContext()->setContextProperty("data",data);
    //Data *d = new Data();
    //d->setValue(23);
    //printf("\nData value is %d\n",data->value());
    engine.load(url);

    return app.exec();
}
