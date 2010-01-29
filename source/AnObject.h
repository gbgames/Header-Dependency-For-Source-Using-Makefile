#ifndef anobject_h_
#define anobject_h_

class AnotherObject;

class AnObject
{
	public:
		AnObject();
		~AnObject();

	public:
		void foo();
		//void bar() = 0;


	private:
		AnotherObject * m_object;

};
#endif
