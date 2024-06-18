#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    glWidget = new GLWidget(this);
    setCentralWidget(glWidget);
}

MainWindow::~MainWindow()
{
    delete ui;
}

