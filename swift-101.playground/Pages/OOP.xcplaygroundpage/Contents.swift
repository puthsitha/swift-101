import Foundation


/*
 
    1. init vs deinit
 
    init : inititalize object at the first time, allocate to memories,
    deinit : destroy object, remove or deallocate from memoreis
 
 
    2. Automatic Reference Counting (ARC)
 
    live count number of the object in memories
    create one obj count up by 1
    create two obj count up to 2
    destroy one obj cound down by 1
    The more obj in memoreis the more app perform slow
    wanna keep the ARC as low as possible
    it means create when only need, and destroy when don't need
 
    e.g : have 2 screen, when press navigate to screen twon diallocate screen two and init screen two.

 
    3. Memories type : Stack & Heap
 
    only obj in Heap are counted toward ARC
 
    stack have :
    - string, bool, int, most basic type
    - struct, enum (news)
 
    Heap have :
    - function, class(news), actor(news)
 
 
    4. Multi-Threat-Enviroment
 
    - each stack have a stack, but there is only 1 heap for all thread
    - stack is faster : independent in once thread and low memories footprint, preferable
    - heap is slower : share multi cross thread and high memories footprint,
 
 
    5. Value type vs Reference type
 
    - stack are value types, when edit a value type it means that create a copy of it new data(duplicated).
    - heap are reference type, when edit a refrence type it means that edit a simular value that reference(not duplicated, pointer).
 */


// Struct vs Class
//e.g : School = app, classroom = class(heap), quiz = struct (stack)


struct Person { // value type
    let personName: String = "Person 1"
}

class Product  { // reference type
    let produtName: String = "Pizza"
}
