package com.uibuzz.events
{
    import flash.events.Event;
    
    public class VirtualKeyboardEvent extends Event
    {
        public var keyLabel:String;
        
        public function VirtualKeyboardEvent(type:String)
        {
            super(type);
        }
        
        override public function clone():Event
        {
            var eventObj:VirtualKeyboardEvent = new VirtualKeyboardEvent(type);
            eventObj.keyLabel = this.keyLabel;
            return eventObj;
        }
    }
}