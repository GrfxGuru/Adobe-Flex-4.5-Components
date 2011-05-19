VirtualKeyboard
---------------
Version 1.0.0	-	5/18/11


Description
-----------
A simple keyboard with both an upper and lowercase character set. You can switch between the two by clicking the 'Shift' key found on both the left and right sides. The keyboard uses the default skin.

Usage
-----
Simply use the component the same as any other, clicking a key generates and dispatches an event back to the application via the 'KeyClicked' event. All you need do is create a function to handle the event, the 'event.keyLabel' will give you the character displayed on the key to work with.

A simple usage example,

<?xml version="1.0" encoding="utf-8"?>
<s:Application xmlns:fx="http://ns.adobe.com/mxml/2009"
               xmlns:s="library://ns.adobe.com/flex/spark"
               xmlns:mx="library://ns.adobe.com/flex/mx"
               xmlns:components="com.uibuzz.components.*"
               minWidth="955" minHeight="600">
    
    <fx:Script>
        <![CDATA[
            import com.uibuzz.events.VirtualKeyboardEvent;
            
            protected function HandleKeyEvent(event:VirtualKeyboardEvent):void
            {
                trace("Key pressed: " + event.keyLabel);
            }
        ]]>
    </fx:Script>
    
    <fx:Declarations>
		<!-- Place non-visual elements (e.g., services, value objects) here -->
	</fx:Declarations>
    <components:VirtualKeyboard x="0" y="0" KeyClicked="HandleKeyEvent(event)"/>
</s:Application>