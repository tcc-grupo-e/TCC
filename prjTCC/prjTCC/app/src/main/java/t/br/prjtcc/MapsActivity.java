package t.br.prjtcc;

import android.graphics.Color;
import android.location.Address;
import android.location.Geocoder;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.Polyline;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.maps.DirectionsApi;
import com.google.maps.DirectionsApiRequest;
import com.google.maps.GeoApiContext;
import com.google.maps.model.DirectionsLeg;
import com.google.maps.model.DirectionsRoute;
import com.google.maps.model.DirectionsStep;
import com.google.maps.model.EncodedPolyline;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;


public class MapsActivity extends AppCompatActivity implements OnMapReadyCallback {

    private GoogleMap mMap;
    double lng, lat;
    ClasseCompartilha cp = new ClasseCompartilha();
    String[] enderecos;
      LatLng  endereco;
    Geocoder geocoder;
    List<Address> address;
    List<LatLng> path;
    DirectionsApiRequest req;
    LatLng zaragoza = new LatLng(41.648823,-0.889085);
    List<LatLng> latLngs = null;
    ListView listEnd;
    int posicao;
    String end;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_maps);
        // Obtain the SupportMapFragment and get notified when the map is ready to be used.
        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager()
                .findFragmentById(R.id.map);
        mapFragment.getMapAsync(this);

     enderecos = cp.getEderecos();
listEnd = findViewById(R.id.listEnd);
        ArrayAdapter<String> adpL = new ArrayAdapter<String>(getBaseContext(),R.layout.listview,enderecos);
        listEnd.setAdapter(adpL);
        geocoder = new Geocoder(this, Locale.getDefault());
        listEnd.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                 end= (String)(listEnd.getItemAtPosition(i));
                posicao = i;
                try {
                    address = geocoder.getFromLocationName(end, 5);
                } catch (IOException e) {
                    e.printStackTrace();
                }
                Address location = address.get(0);
                lat = location.getLatitude();
                lng = location.getLongitude();

                mMap.addMarker(new MarkerOptions().position(endereco).title("Destino"));
                endereco= new LatLng(lat, lng);
                mMap.moveCamera(CameraUpdateFactory.newLatLng(endereco));
                mMap.setTrafficEnabled(true);
                path = new ArrayList<>();
                new SincronismoConsulta2HTTP().execute();

            }


        });
    }


        @Override
        public void onMapReady(GoogleMap googleMap) {


        mMap = googleMap;


    }
    private class SincronismoConsulta2HTTP extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();
        }

        @Override
        protected Void doInBackground(Void... params) {


             String TAG = "so47492459";





            //Execute Directions API request
            GeoApiContext context = new GeoApiContext().setApiKey("AIzaSyDTPeKObsFAJ94iyjTLBdRGanV6VSj4AeE");
            DirectionsApiRequest req = DirectionsApi.getDirections(context, "41.385064,2.173403", endereco +"");

            DirectionsRoute[] res = new DirectionsRoute[0];
            try {
                res = req.await();
            } catch (Exception e) {
                e.printStackTrace();
            }

            //Loop through legs and steps to get encoded polylines of each step
                if (res != null && res.length > 0) {
                    DirectionsRoute route = res[0];

                    if (route.legs !=null) {
                        for(int i=0; i<route.legs.length; i++) {
                            DirectionsLeg leg = route.legs[i];
                            if (leg.steps != null) {
                                for (int j=0; j<leg.steps.length;j++){
                                    DirectionsStep step = leg.steps[j];
                                    if (step.steps != null && step.steps.length >0) {
                                        for (int k=0; k<step.steps.length;k++){
                                            DirectionsStep step1 = step.steps[k];
                                            EncodedPolyline points1 = step1.polyline;
                                            if (points1 != null) {
                                                //Decode polyline and add points to list of route coordinates
                                                List<com.google.maps.model.LatLng> coords1 = points1.decodePath();
                                                for (com.google.maps.model.LatLng coord1 : coords1) {
                                                    path.add(new LatLng(coord1.lat, coord1.lng));
                                                }
                                            }
                                        }
                                    } else {
                                        EncodedPolyline points = step.polyline;
                                        if (points != null) {
                                            //Decode polyline and add points to list of route coordinates
                                            List<com.google.maps.model.LatLng> coords = points.decodePath();
                                            for (com.google.maps.model.LatLng coord : coords) {
                                                path.add(new LatLng(coord.lat, coord.lng));
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }


          return null;
        }




        @Override
        protected void onPostExecute(Void vd) {
            super.onPostExecute(vd);

            if (path.size() > 0) {
                PolylineOptions opts = new PolylineOptions().addAll(path).color(Color.BLUE).width(5);
                mMap.addPolyline(opts);
            }

            mMap.getUiSettings().setZoomControlsEnabled(true);

            mMap.moveCamera(CameraUpdateFactory.newLatLngZoom(endereco, 6));


        }
    }
      }

//    @Override
//    public void onMapReady(GoogleMap googleMap) {
//        mMap = googleMap;
//
//        geocoder = new Geocoder(this, Locale.getDefault());
//        LatLng endereco;
//        List<LatLng> latLngs = null;
//      try {
//
//
//
//           latLngs = new ArrayList<>(enderecos.length);
//           for (int i = 0; i < enderecos.length; i++) {
//               address = geocoder.getFromLocationName(enderecos[i], 5);
//               Address location = address.get(0);
//               lat = location.getLatitude();
//               lng = location.getLongitude();
//
//              endereco = new LatLng(lat, lng);
//                mMap.addMarker(new MarkerOptions().position(endereco).title("Destino" + (i+1)));
//                mMap.moveCamera(CameraUpdateFactory.newLatLng(endereco));
//              mMap.setTrafficEnabled(true);
//               latLngs.add(endereco);
//        }
//           PolylineOptions polylineOptions = new PolylineOptions();
//           polylineOptions.color(Color.BLACK);
//
//            Polyline a = mMap.addPolyline(polylineOptions);
//            a.setGeodesic(true);
//            a.setPoints(latLngs);
//
//
//
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }


