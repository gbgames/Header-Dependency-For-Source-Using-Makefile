#include "AnObject.h"

#include "AnotherObject.h"

AnObject::AnObject() : m_object(new AnotherObject())
{
}

AnObject::~AnObject()
{
	delete m_object;
}

void AnObject::foo()
{
	m_object->foo();
}
