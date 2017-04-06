#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include <QTimer>

#include <iostream>

#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>

#include <dlib/opencv.h>
#include <dlib/image_io.h>
#include <dlib/gui_widgets.h>
#include <dlib/image_processing.h>
#include <dlib/image_processing/frontal_face_detector.h>
#include <dlib/image_processing/render_face_detections.h>

using namespace std;
using namespace cv;
using namespace dlib;

namespace Ui {
class Widget;
}

class Widget : public QWidget
{
    Q_OBJECT

public:
    explicit Widget(QWidget *parent = 0);
    ~Widget();

private slots:
    void on_pushButton_open_camera_clicked();

    void on_pushButton_close_camera_clicked();

    void update_window();

private:
    Ui::Widget *ui;

    QTimer *timer;
    VideoCapture cap;

    Mat frame;
    QImage qt_image;

    frontal_face_detector detector;
    shape_predictor shape_model;

    void show_frame(Mat &);
};

#endif // WIDGET_H
