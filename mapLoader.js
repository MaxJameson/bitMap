let mappedMarkers = [];

// creates markers
function makeMarker(lat, lng, photo, photoName, userName, Date){

  // converts file to an image source
  var image = new Image();
  image.src = photo;

  // store the current location for the image as a google position object
  current = new google.maps.LatLng(lat,lng)

  // loops through all markers
  for (i in mappedMarkers){

    // checks if the current marker is in the same position of another marker
    if (mappedMarkers[i].getPosition().equals(current)){

      // moves markers location by a small random amount
      lat += Math.random() * (0.006 - -0.006) + -0.006;
      lng += Math.random() * (0.006 - -0.006) + -0.006;
    }
  }

  // creates a marker using the google maps API
  const marker = new google.maps.Marker({
    position: { lat: lat, lng: lng},
    map,
    animation: google.maps.Animation.DROP,
    title: photoName,
    visible: false,
  });

  // adds an event listener to detect if the marker is clicked
  marker.addListener("click", () => {
    
    // opens an info window attatched to the marker
    infowindow.open(map,marker);

    // makes the marker bounce if selected
    if (marker.getAnimation() !== null) {
      marker.setAnimation(null);
    } else {
      marker.setAnimation(google.maps.Animation.BOUNCE);
    }
   });

  // capitalises the name of the photo
  photoName = photoName.charAt(0).toUpperCase() + photoName.slice(1);

  // calculates the aspect ratio of the image
  newWidth = aspectRatio(image);

  // creates an info window for the marker
  const infowindow = new google.maps.InfoWindow({
    content: ('<h3>'+ photoName +'</h3>' +
              '<p>By: '+userName+'</p>' +
              '<p>Posted: '+ Date +'</p>' + 
              '<img src="'+photo+'" width="'+newWidth*4+'" height="'+45*4+'">'),
  });

  // stops the marker bouncing when deselected
  infowindow.addListener("closeclick", () =>{
    marker.setAnimation(null);
  })
   

  
  // loads the imahe as a marker
  image.onload = function(){
    // calculates the scaled width of the photo
    newWidth = aspectRatio(image);
    marker.setIcon({url: photo, scaledSize: new google.maps.Size((newWidth),(45))});
    marker.setVisible(true);
    marker.setAnimation(google.maps.Animation.DROP);
   
  };

  mappedMarkers.push(marker);
};

// centers the map on a specific location
function centerMap(lat, long){
  coords = new google.maps.LatLng(lat,long);
  map.panTo(coords);
}

// creates the map
async function initMap() {
	
  // usues the google maps API to create a map
  map = new google.maps.Map(document.getElementById("map"), {
    mapId: "2f686051150cc298",
    center: { lat: 48.85, lng: 2.35 },
    zoom: 6,
    fullscreenControl: false,
    mapTypeControl: false,
  });

  // fetches an object of images 
  points = await getPoints();

  allMarkers = new Array();

  // creates a marker for each image object
  for (i in points){
    
    // converts the lat and long strings to floats
    lati = parseFloat(points[i]["Lat"]);
    longi = parseFloat(points[i]["Long"]);

    // makes a marker for the current image
   makeMarker(lati,longi,points[i]["StoragePath"],points[i]["PhotoName"],points[i]["UserName"],points[i]["Date"]);
  } 

  autoComplete = new google.maps.places.Autocomplete(document.getElementById("location"),{fields: ['geometry','name']});

};

function getPlace(){
  // stores the current selected location as an object
  let place = autoComplete.getPlace();

  // checks if a place has been selected
  if (place == undefined){
    return[null, null];
  }
  // grabs the coordinates for the current place
  lat = place.geometry.location.lat();
  long = place.geometry.location.lng();
  return [lat, long, place.name];
}

// rescales the width of the photo
function aspectRatio(image){
  h = image.height;
  w = image.width;
  newWidth = (w / h) * 45;
  return newWidth;
}

// runs the function to create the map
window.initMap = initMap;