#include "EditHiddenEvents.h"

namespace dialogs {
EditHiddenEvents::EditHiddenEvents(QWidget *parent)
  : QQuickWidget(QUrl("qrc:///qml/dialogs/EventFilterDialog.qml"), parent)
{
        this->setWindowModality(Qt::WindowModality::ApplicationModal);
        this->setWindowFlag(Qt::Dialog);
}

void
EditHiddenEvents::abort()
{
        this->close();
}
void
EditHiddenEvents::save()
{
        this->close();
}
}
