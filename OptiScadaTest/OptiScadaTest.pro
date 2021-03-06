QT += core testlib serialbus network serialport

QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

TARGET = OptiScada_Test

TEMPLATE= app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += ../OptiScada

SOURCES +=  main.cpp \
            devicemodbusethernet_test.cpp \
            modbusserver.cpp \
            ../OptiScada/devicemodbusethernet.cpp \
            ../OptiScada/device.cpp \
            ../OptiScada/modbusmemory.cpp \
            ../OptiScada/writecommand.cpp \
            ../OptiScada/modbuscommon.cpp \
            ../OptiScada/log.cpp

HEADERS +=  devicemodbusethernet_test.h \
            modbusserver.h \
            ../OptiScada/devicemodbusethernet.h \
            ../OptiScada/device.h \
            ../OptiScada/modbusmemory.h \
            ../OptiScada/writecommand.h \
            ../OptiScada/modbuscommon.h \
            ../OptiScada/log.h
