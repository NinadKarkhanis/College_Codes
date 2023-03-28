		children: <Widget>[
			InkWell(
			onTap: () {
				setState(() {
				inkwell='Inkwell Tapped';
				});
			},
			onLongPress: () {
				setState(() {
				inkwell='InkWell Long Pressed';
				});
			},
			
        
        //InkWell is the material widget in flutter. It responds to the touch action as performed by the user.
        //Inkwell will respond when the user clicks the button. There are so many gestures like double-tap, 
        //long press, tap down, etc. Below are the so many properties of this widget. We can set the radius of
        //the inkwell widget using radius and also border-radius using borderRadius. We can give the splash color using 
        //splashColor and can do a lot of things.
