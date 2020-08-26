@import "CPViewController.j"
@import "CPTabView.j"

/*!
    @ingroup appkit
    @class CPTabViewController
    Each page of content is managed by a separate child view controller. Navigation between child view controllers is accomplished with the help of an NSTabView object, which the tab view controller manages. When the user selects a new tab, the tab view controller displays the content associated with the associated child view controller, replacing the previous content.
    Each tab is represented by an CPTabViewItem object, which contains the name of the tab and stores a pointer to the child view controller that manages the tab’s content. Normally, you configure the tab view items at design time using Interface Builder, but you can also add them programmatically using the methods of this class. Always assign a child view controller to new tab view items before adding those items to the tab view interface.
    Another way to add tabs programmatically is to add child view controllers directly to the tab view controller. When you call the addChildViewController: or insertChildViewController:atIndex: method of this class, the tab view controller automatically creates a default CPTabViewItem object for the specified view controller. You can fetch the newly created item using the tabViewItemForViewController: method and configure it. Removing a child view controller with the removeChildViewControllerAtIndex: method similarly removes the corresponding tab view item.
    The tab view controller lazily loads the views associated with each child view controller, creating them only after the corresponding tab is selected. When the tab view controller’s view is first displayed, only the view for the initially selected tab is loaded.
    The tabStyle property determines the appearance of the tab controls. A tab view controller can display a segmented control or display tabs in the window’s toolbar. You can also provide your own control for displaying tabs. The tab view controller automatically coordinates interactions between designated control and the corresponding tabView object.
 */

@typedef CPTabViewControllerTabStyle
/*!
    CPTabViewControllerTabStyleSegmentedControlOnTop:
    A style that displays a segmented control along the top edge of the tab view interface.
    Access the configuration of the tab items through the tab view, which you can get from the tabView property.
 */
CPTabViewControllerTabStyleSegmentedControlOnTop = 0; // Default value
/*!
    CPTabViewControllerTabStyleSegmentedControlOnBottom:
    A style that displays a segmented control along the bottom edge of the tab view interface.
    Access the configuration of the tab items through the tab view, which you can get from the tabView property.
 */
CPTabViewControllerTabStyleSegmentedControlOnBottom = 1;
/*!
    CPTabViewControllerTabStyleToolbar:
    A style that automatically adds any tabs to the window’s toolbar.
    The tab view controller takes control of the window’s toolbar and sets itself as the toolbar’s delegate.
    Customization of the toolbar is handled using the methods in Responding to Toolbar Events.
 */
CPTabViewControllerTabStyleToolbar = 2;
/*!
    CPTabViewControllerTabStyleTabBar:
    A style that displays a tabbed windows like (or Safari tabs like) tab bar.
    This is a Cappuccino specific tab view controller tab style.
 */
CPTabViewControllerTabStyleTabBar = 3;
/*!
    CPTabViewControllerTabStyleUnspecified:
    A style that indicates the tab view controller does not provide the tab selection UI.
    Your app provides the control (such as an CPSegmentedControl or CPPopUpButton) for navigating between tabs.
    You can bind an existing control to the tab view controller object so that interactions with the control automatically change tabs.
 */
CPTabViewControllerTabStyleUnspecified = -1;

@implementation CPTabViewController : CPViewController
{
    CPTabViewControllerTabStyle         _tabStyle;
    CPTabView                           _tabView;
    CPViewControllerTransitionOptions   _transitionOptions;
}

#pragma mark -
#pragma mark Configuring the Tab View

/*!
    The style used to display the tabs.
 */
- (CPTabViewControllerTabStyle)tabStyle
{
    return _tabStyle;
}

- (void)setTabStyle:(CPTabViewControllerTabStyle)aTabStyle
{
    if (_tabStyle == aTabStyle)
        return;

    _tabStyle = aTabStyle;
}

/*!
    The tab view that manages the views of the interface.
 */
- (CPTabView)tabView
{
    return _tabView;
}

- (void)setTabView:(CPTabView)aTabView
{
    if (_tabView === aTabView)
        return;

    _tabView = aTabView;
}

/*!
    The animation options to use when switching between tabs.
 */
- (CPViewControllerTransitionOptions)transitionOptions
{
    return _transitionOptions;
}

- (void)setTransitionOptions:(CPViewControllerTransitionOptions)transitionOptions
{
    if (_transitionOptions == transitionOptions)
        return;

    _transitionOptions = transitionOptions;
}

#pragma mark -
#pragma mark Managing Tab View Items

#pragma mark -
#pragma mark Responding to Tab View Events

#pragma mark -
#pragma mark Responding to Toolbar Events

@end

#pragma mark -

@implementation CPTabViewController (CPCoding)

- (id)initWithCoder:(CPCoder)aCoder
{
    self = [super initWithCoder:aCoder];

    if (self)
    {

    }

    return self;
}

- (void)encodeWithCoder:(CPCoder)aCoder
{
    [super encodeWithCoder:aCoder];
}

@end
