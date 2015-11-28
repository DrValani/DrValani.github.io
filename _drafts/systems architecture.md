Having designed and developed distributed systems and api Microsystems. I discuss some praticties or techniques to keeping your systems loosely coupled and highly cohesive. 

The idea is based of a clean code pratice mentioned in Robert Martin's clean code around parameter passing and class design. 

When should a pass a method as a  parameter and when should it be a field writhin the class. 

Quite simply only define a method parameter if it is directly being used by the method. 

If the value is passed on to a private method make the value a private or accessible in some other way. 

Now abstract that concept out to how system design. 

Suppose you have a system of services.  Each services listens to a queue and may post messages to many other queues. 

What should be the content of theses messages. 

Let's consider two extremes. The first is the message just contains a single unique id. The consumer uses that I'd to source all the information it needs to do the work it needs to do. 

The other side is the message is overloaded with as much information as possible. The service consuming the data has all the information it needs. 

