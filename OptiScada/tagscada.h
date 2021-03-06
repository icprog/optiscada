#ifndef TAGSCADA_H
#define TAGSCADA_H

#include "device.h"

#include <QVector>

class TagScada
{
public:
    QString get_Name();

    TagScada( QString name, int address, Device *pDevice );
    TagScada( QString name, int address, quint16 rawMin, quint16 rawMax, double engMin, double engMax, Device *pDevice );

    bool GetValue( quint16 &value );
    void SetValue( quint16 value );
    bool GetValue( bool &value );
    void SetValue( bool value );
    bool GetValue( double &value );
    void SetValue( double value );

private:
    QString m_Name;
    int m_Address;
    bool m_RawEng;
    Device *m_pDevice;
    quint16 m_RawMin;
    quint16 m_RawMax;
    double m_EngMin;
    double m_EngMax;

};

#endif // TAGSCADA_H
