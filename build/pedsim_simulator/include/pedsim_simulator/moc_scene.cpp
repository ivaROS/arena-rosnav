/****************************************************************************
** Meta object code from reading C++ file 'scene.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/arena/utils/pedsim_ros/pedsim_engine/pedsim_simulator/include/pedsim_simulator/scene.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'scene.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Scene_t {
    QByteArrayData data[24];
    char stringdata0[304];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Scene_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Scene_t qt_meta_stringdata_Scene = {
    {
QT_MOC_LITERAL(0, 0, 5), // "Scene"
QT_MOC_LITERAL(1, 6, 12), // "aboutToStart"
QT_MOC_LITERAL(2, 19, 0), // ""
QT_MOC_LITERAL(3, 20, 17), // "aboutToMoveAgents"
QT_MOC_LITERAL(4, 38, 11), // "movedAgents"
QT_MOC_LITERAL(5, 50, 16), // "sceneTimeChanged"
QT_MOC_LITERAL(6, 67, 4), // "time"
QT_MOC_LITERAL(7, 72, 10), // "agentAdded"
QT_MOC_LITERAL(8, 83, 10), // "pedsim::id"
QT_MOC_LITERAL(9, 94, 2), // "id"
QT_MOC_LITERAL(10, 97, 12), // "agentRemoved"
QT_MOC_LITERAL(11, 110, 9), // "wallAdded"
QT_MOC_LITERAL(12, 120, 11), // "wallRemoved"
QT_MOC_LITERAL(13, 132, 13), // "waypointAdded"
QT_MOC_LITERAL(14, 146, 15), // "waypointRemoved"
QT_MOC_LITERAL(15, 162, 17), // "agentClusterAdded"
QT_MOC_LITERAL(16, 180, 19), // "agentClusterRemoved"
QT_MOC_LITERAL(17, 200, 17), // "waitingQueueAdded"
QT_MOC_LITERAL(18, 218, 4), // "name"
QT_MOC_LITERAL(19, 223, 19), // "waitingQueueRemoved"
QT_MOC_LITERAL(20, 243, 15), // "attractionAdded"
QT_MOC_LITERAL(21, 259, 17), // "attractionRemoved"
QT_MOC_LITERAL(22, 277, 13), // "moveAllAgents"
QT_MOC_LITERAL(23, 291, 12) // "cleanupScene"

    },
    "Scene\0aboutToStart\0\0aboutToMoveAgents\0"
    "movedAgents\0sceneTimeChanged\0time\0"
    "agentAdded\0pedsim::id\0id\0agentRemoved\0"
    "wallAdded\0wallRemoved\0waypointAdded\0"
    "waypointRemoved\0agentClusterAdded\0"
    "agentClusterRemoved\0waitingQueueAdded\0"
    "name\0waitingQueueRemoved\0attractionAdded\0"
    "attractionRemoved\0moveAllAgents\0"
    "cleanupScene"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Scene[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      18,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      16,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,  104,    2, 0x06 /* Public */,
       3,    0,  105,    2, 0x06 /* Public */,
       4,    0,  106,    2, 0x06 /* Public */,
       5,    1,  107,    2, 0x06 /* Public */,
       7,    1,  110,    2, 0x06 /* Public */,
      10,    1,  113,    2, 0x06 /* Public */,
      11,    1,  116,    2, 0x06 /* Public */,
      12,    1,  119,    2, 0x06 /* Public */,
      13,    1,  122,    2, 0x06 /* Public */,
      14,    1,  125,    2, 0x06 /* Public */,
      15,    1,  128,    2, 0x06 /* Public */,
      16,    1,  131,    2, 0x06 /* Public */,
      17,    1,  134,    2, 0x06 /* Public */,
      19,    1,  137,    2, 0x06 /* Public */,
      20,    1,  140,    2, 0x06 /* Public */,
      21,    1,  143,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      22,    0,  146,    2, 0x0a /* Public */,
      23,    0,  147,    2, 0x09 /* Protected */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Double,    6,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void, QMetaType::QString,   18,
    QMetaType::Void, QMetaType::QString,   18,
    QMetaType::Void, QMetaType::QString,   18,
    QMetaType::Void, QMetaType::QString,   18,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void Scene::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Scene *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->aboutToStart(); break;
        case 1: _t->aboutToMoveAgents(); break;
        case 2: _t->movedAgents(); break;
        case 3: _t->sceneTimeChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 4: _t->agentAdded((*reinterpret_cast< pedsim::id(*)>(_a[1]))); break;
        case 5: _t->agentRemoved((*reinterpret_cast< pedsim::id(*)>(_a[1]))); break;
        case 6: _t->wallAdded((*reinterpret_cast< pedsim::id(*)>(_a[1]))); break;
        case 7: _t->wallRemoved((*reinterpret_cast< pedsim::id(*)>(_a[1]))); break;
        case 8: _t->waypointAdded((*reinterpret_cast< pedsim::id(*)>(_a[1]))); break;
        case 9: _t->waypointRemoved((*reinterpret_cast< pedsim::id(*)>(_a[1]))); break;
        case 10: _t->agentClusterAdded((*reinterpret_cast< pedsim::id(*)>(_a[1]))); break;
        case 11: _t->agentClusterRemoved((*reinterpret_cast< pedsim::id(*)>(_a[1]))); break;
        case 12: _t->waitingQueueAdded((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 13: _t->waitingQueueRemoved((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 14: _t->attractionAdded((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 15: _t->attractionRemoved((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 16: _t->moveAllAgents(); break;
        case 17: _t->cleanupScene(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Scene::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::aboutToStart)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Scene::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::aboutToMoveAgents)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (Scene::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::movedAgents)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (Scene::*)(double );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::sceneTimeChanged)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (Scene::*)(pedsim::id );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::agentAdded)) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (Scene::*)(pedsim::id );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::agentRemoved)) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (Scene::*)(pedsim::id );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::wallAdded)) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (Scene::*)(pedsim::id );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::wallRemoved)) {
                *result = 7;
                return;
            }
        }
        {
            using _t = void (Scene::*)(pedsim::id );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::waypointAdded)) {
                *result = 8;
                return;
            }
        }
        {
            using _t = void (Scene::*)(pedsim::id );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::waypointRemoved)) {
                *result = 9;
                return;
            }
        }
        {
            using _t = void (Scene::*)(pedsim::id );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::agentClusterAdded)) {
                *result = 10;
                return;
            }
        }
        {
            using _t = void (Scene::*)(pedsim::id );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::agentClusterRemoved)) {
                *result = 11;
                return;
            }
        }
        {
            using _t = void (Scene::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::waitingQueueAdded)) {
                *result = 12;
                return;
            }
        }
        {
            using _t = void (Scene::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::waitingQueueRemoved)) {
                *result = 13;
                return;
            }
        }
        {
            using _t = void (Scene::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::attractionAdded)) {
                *result = 14;
                return;
            }
        }
        {
            using _t = void (Scene::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Scene::attractionRemoved)) {
                *result = 15;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject Scene::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_Scene.data,
    qt_meta_data_Scene,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *Scene::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Scene::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Scene.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "Ped::Tscene"))
        return static_cast< Ped::Tscene*>(this);
    return QObject::qt_metacast(_clname);
}

int Scene::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 18)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 18;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 18)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 18;
    }
    return _id;
}

// SIGNAL 0
void Scene::aboutToStart()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void Scene::aboutToMoveAgents()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void Scene::movedAgents()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void Scene::sceneTimeChanged(double _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void Scene::agentAdded(pedsim::id _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void Scene::agentRemoved(pedsim::id _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void Scene::wallAdded(pedsim::id _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void Scene::wallRemoved(pedsim::id _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void Scene::waypointAdded(pedsim::id _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}

// SIGNAL 9
void Scene::waypointRemoved(pedsim::id _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 9, _a);
}

// SIGNAL 10
void Scene::agentClusterAdded(pedsim::id _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 10, _a);
}

// SIGNAL 11
void Scene::agentClusterRemoved(pedsim::id _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 11, _a);
}

// SIGNAL 12
void Scene::waitingQueueAdded(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 12, _a);
}

// SIGNAL 13
void Scene::waitingQueueRemoved(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 13, _a);
}

// SIGNAL 14
void Scene::attractionAdded(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 14, _a);
}

// SIGNAL 15
void Scene::attractionRemoved(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 15, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
