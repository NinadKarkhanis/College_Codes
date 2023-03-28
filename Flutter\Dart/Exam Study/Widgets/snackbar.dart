  onPressed: () {  
          final snackBar = SnackBar(  
            content: Text('Hey! This is a SnackBar message.'),  
            duration: Duration(seconds: 5),  
            action: SnackBarAction(  
              label: 'Undo',  
              onPressed: () {  
                // Some code to undo the change.  
              },  
              
//Snackbar in Flutter is a widget showing the lightweight message that briefly informs the user when certain actions occur. 
//It displays the message for a very short period, and when the specified time completed, it will be disappeared from the screen. 
//By default, snack bar displays at the bottom of the screen. It is an excellent way to give feedback to users. 
//It also contains some actions that allow the user to undo or redo any action. Usually, the snack bar is used with the scaffold widget.
