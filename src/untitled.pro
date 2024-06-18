QT += core gui
QT += core gui opengl
LIBS += -lglut -lGLU
LIBS += -lglut
LIBS += -L/usr/lib -lglut
LIBS += -lGL -lGLU -lglut
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

TARGET = TeapotRendering

TEMPLATE = app

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    glwidget.cpp

HEADERS += \
    glwidget.h \
    mainwindow.h
    glwidget.h

FORMS += \
    mainwindow.ui

TRANSLATIONS += \
    untitled_zh_CN.ts
CONFIG += lrelease
CONFIG += embed_translations

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
