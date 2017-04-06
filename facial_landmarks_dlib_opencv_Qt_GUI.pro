#-------------------------------------------------
#
# Project created by QtCreator 2017-04-06T00:54:34
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = facial_landmarks_dlib_opencv_Qt_GUI
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += main.cpp\
        widget.cpp

HEADERS  += widget.h

FORMS    += widget.ui

INCLUDEPATH += G:\dlib-19.4\include

LIBS += -LG:\dlib-19.4\build
LIBS += -ldlib


INCLUDEPATH += G:\opencv\build\include \

LIBS += -LG:\opencv\\build\\bin \
libopencv_calib3d310 \
libopencv_core310 \
libopencv_features2d310 \
libopencv_flann310 \
libopencv_highgui310 \
libopencv_imgcodecs310 \
libopencv_imgproc310 \
libopencv_ml310 \
libopencv_objdetect310 \
libopencv_photo310 \
libopencv_shape310 \
libopencv_stitching310 \
libopencv_superres310 \
libopencv_video310 \
libopencv_videoio310 \
libopencv_videostab310


