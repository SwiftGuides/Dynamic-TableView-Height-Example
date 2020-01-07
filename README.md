# Dynamic-TableView-Height-Example
Trying to make tableview height dynamic


Source :- https://stackoverflow.com/a/59486428/12189609

Note :- Make Row Height constant to not cut any cell edges on the buttom of the tableview

Steps :- 
1. Drag scrollView and give constraint to all the edges. (Turn Off Content Layout Guides First and also change content inset to never)
2. After that drag UIView In ScrollView And give its constraint to all the edges of scrollview.
3. Give UIView equal Width Proptional to Main UIView Of ViewController.(Dont give equal height to the Main UIView or it won't work)
4. Now drag any UIVIew on the top side make its height Constant.
5. After that put tableView just below the new UIView And Give its constraint to the edges and top to the new uiview.(Remeber to turn of scrolling for tableview)
6. Now Give TableView a Specific Constant height , lets say its 100 and check priorirty should be 1000.
7. Now Make an outlet of the tableview Height and Put this code in Cell For row method of tableview.
```swift
        self.tableViewHeightConstraint.constant = self.myNewTableView.contentSize.height
        self.view.layoutIfNeeded()
```
8. Now run the App And it should scroll whole view alongside tablview all Cells. 
