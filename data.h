#ifndef DATA_H
#define DATA_H

#include <QObject>

class MySingleton : public QObject {
    Q_OBJECT
    Q_PROPERTY(int myProperty READ myProperty WRITE setMyProperty NOTIFY myPropertyChanged)

public:
    static MySingleton* instance() {
        static MySingleton instance;
        return &instance;
    }

    int myProperty() const {
        return m_myProperty;
    }

public slots:
    void setMyProperty(int value) {
        if (m_myProperty != value) {
            m_myProperty = value;
            emit myPropertyChanged();
        }
    }

signals:
    void myPropertyChanged();

private:
    MySingleton(QObject* parent = nullptr) : QObject(parent), m_myProperty(0) {}
    ~MySingleton() {}

    MySingleton(const MySingleton&) = delete;
    MySingleton& operator=(const MySingleton&) = delete;

    int m_myProperty;
};

//#endif // DATA_H

// #include <QObject>
// #include <QQmlEngine>

// class Data : public QObject
// {
//     Q_OBJECT
//     QML_ELEMENT
//     QML_SINGLETON
//     Q_PROPERTY(int value READ value WRITE setValue NOTIFY valueChanged FINAL)
// private:
//     int m_value;

// public:
//     explicit Data(QObject *parent = nullptr);

//     void setValue(int v);
//     int value() const;

// signals:
//     void valueChanged(int);

// };

#endif // DATA_H
