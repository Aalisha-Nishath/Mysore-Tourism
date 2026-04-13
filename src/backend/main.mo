import TourismLib "lib/tourism";
import TourismApi "mixins/tourism-api";
import List "mo:core/List";

actor {
  let attractions = TourismLib.initAttractions();
  let hotels = TourismLib.initHotels();

  include TourismApi(attractions, hotels);
};
