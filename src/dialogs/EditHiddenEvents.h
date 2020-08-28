#include <QQuickWidget>

namespace dialogs {
class EditHiddenEvents : public QQuickWidget
{
        Q_OBJECT
public:
        EditHiddenEvents(QWidget *parent);

public slots:
        void abort();
        void save();
};
}
