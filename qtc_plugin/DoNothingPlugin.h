#ifndef DONOTHINGPLUGIN_H
#define DONOTHINGPLUGIN_H

#include <extensionsystem/iplugin.h>

class DoNothingPlugin : public ExtensionSystem::IPlugin
{
    Q_OBJECT

public:
    DoNothingPlugin();
    ~DoNothingPlugin();

    void extensionsInitialized();
    bool initialize(const QStringList & arguments, QString * errorString);
    void shutdown();

private:
    void createMenus();
    void createMenuItems();

private slots:
    void about();

};

#endif // DONOTHINGPLUGIN_H
