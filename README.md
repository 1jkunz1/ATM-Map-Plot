# ATM Map Implementation

ATM annotations plotted on map using MapKit / Objective-C

'MapViewAnnotation' is a custom subclass of MKAnnotation

ATM Locations are stored in a p-list

createAnnotations' iterates through the p-list, appends each location object to a mutable array and plots the location coordinates on an MapView

goToLocation sets the initial location to Chicago, IL (simulating the map displaying the user's current location)




